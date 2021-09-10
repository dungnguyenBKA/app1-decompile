package org.apache.http.impl.io;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;

public class ContentLengthInputStream extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private boolean closed = false;
    private long contentLength;
    private SessionInputBuffer in = null;
    private long pos = 0;

    public ContentLengthInputStream(SessionInputBuffer sessionInputBuffer, long j) {
        if (sessionInputBuffer == null) {
            throw new IllegalArgumentException("Input stream may not be null");
        } else if (j >= 0) {
            this.in = sessionInputBuffer;
            this.contentLength = j;
        } else {
            throw new IllegalArgumentException("Content length may not be negative");
        }
    }

    @Override // java.io.InputStream
    public int available() {
        SessionInputBuffer sessionInputBuffer = this.in;
        if (sessionInputBuffer instanceof BufferInfo) {
            return Math.min(((BufferInfo) sessionInputBuffer).length(), (int) (this.contentLength - this.pos));
        }
        return 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() {
        if (!this.closed) {
            try {
                if (this.pos < this.contentLength) {
                    do {
                    } while (read(new byte[BUFFER_SIZE]) >= 0);
                }
            } finally {
                this.closed = true;
            }
        }
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.pos >= this.contentLength) {
            return -1;
        } else {
            int read = this.in.read();
            if (read != -1) {
                this.pos++;
            } else if (this.pos < this.contentLength) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Premature end of Content-Length delimited message body (expected: ");
                stringBuffer.append(this.contentLength);
                stringBuffer.append("; received: ");
                stringBuffer.append(this.pos);
                throw new ConnectionClosedException(stringBuffer.toString());
            }
            return read;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        int read;
        if (j <= 0) {
            return 0;
        }
        byte[] bArr = new byte[BUFFER_SIZE];
        long min = Math.min(j, this.contentLength - this.pos);
        long j2 = 0;
        while (min > 0 && (read = read(bArr, 0, (int) Math.min((long) PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, min))) != -1) {
            long j3 = (long) read;
            j2 += j3;
            min -= j3;
        }
        return j2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (!this.closed) {
            long j = this.pos;
            long j2 = this.contentLength;
            if (j >= j2) {
                return -1;
            }
            if (((long) i2) + j > j2) {
                i2 = (int) (j2 - j);
            }
            int read = this.in.read(bArr, i, i2);
            if (read != -1 || this.pos >= this.contentLength) {
                if (read > 0) {
                    this.pos += (long) read;
                }
                return read;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Premature end of Content-Length delimited message body (expected: ");
            stringBuffer.append(this.contentLength);
            stringBuffer.append("; received: ");
            stringBuffer.append(this.pos);
            throw new ConnectionClosedException(stringBuffer.toString());
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
