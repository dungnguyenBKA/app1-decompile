package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.io.SessionOutputBuffer;

public class ContentLengthOutputStream extends OutputStream {
    private boolean closed = false;
    private final long contentLength;
    private final SessionOutputBuffer out;
    private long total = 0;

    public ContentLengthOutputStream(SessionOutputBuffer sessionOutputBuffer, long j) {
        if (sessionOutputBuffer == null) {
            throw new IllegalArgumentException("Session output buffer may not be null");
        } else if (j >= 0) {
            this.out = sessionOutputBuffer;
            this.contentLength = j;
        } else {
            throw new IllegalArgumentException("Content length may not be negative");
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed) {
            this.closed = true;
            this.out.flush();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.out.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (!this.closed) {
            long j = this.total;
            long j2 = this.contentLength;
            if (j < j2) {
                long j3 = j2 - j;
                if (((long) i2) > j3) {
                    i2 = (int) j3;
                }
                this.out.write(bArr, i, i2);
                this.total += (long) i2;
                return;
            }
            return;
        }
        throw new IOException("Attempted write to closed stream.");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        if (this.closed) {
            throw new IOException("Attempted write to closed stream.");
        } else if (this.total < this.contentLength) {
            this.out.write(i);
            this.total++;
        }
    }
}
