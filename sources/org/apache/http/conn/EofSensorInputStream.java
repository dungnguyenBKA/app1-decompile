package org.apache.http.conn;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public class EofSensorInputStream extends InputStream implements ConnectionReleaseTrigger {
    private final EofSensorWatcher eofWatcher;
    private boolean selfClosed;
    protected InputStream wrappedStream;

    public EofSensorInputStream(InputStream inputStream, EofSensorWatcher eofSensorWatcher) {
        if (inputStream != null) {
            this.wrappedStream = inputStream;
            this.selfClosed = false;
            this.eofWatcher = eofSensorWatcher;
            return;
        }
        throw new IllegalArgumentException("Wrapped stream may not be null.");
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() {
        this.selfClosed = true;
        checkAbort();
    }

    @Override // java.io.InputStream
    public int available() {
        if (!isReadAllowed()) {
            return 0;
        }
        try {
            return this.wrappedStream.available();
        } catch (IOException e) {
            checkAbort();
            throw e;
        }
    }

    /* access modifiers changed from: protected */
    public void checkAbort() {
        InputStream inputStream = this.wrappedStream;
        if (inputStream != null) {
            boolean z = true;
            try {
                EofSensorWatcher eofSensorWatcher = this.eofWatcher;
                if (eofSensorWatcher != null) {
                    z = eofSensorWatcher.streamAbort(inputStream);
                }
                if (z) {
                    this.wrappedStream.close();
                }
            } finally {
                this.wrappedStream = null;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void checkClose() {
        InputStream inputStream = this.wrappedStream;
        if (inputStream != null) {
            boolean z = true;
            try {
                EofSensorWatcher eofSensorWatcher = this.eofWatcher;
                if (eofSensorWatcher != null) {
                    z = eofSensorWatcher.streamClosed(inputStream);
                }
                if (z) {
                    this.wrappedStream.close();
                }
            } finally {
                this.wrappedStream = null;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void checkEOF(int i) {
        InputStream inputStream = this.wrappedStream;
        if (inputStream != null && i < 0) {
            boolean z = true;
            try {
                EofSensorWatcher eofSensorWatcher = this.eofWatcher;
                if (eofSensorWatcher != null) {
                    z = eofSensorWatcher.eofDetected(inputStream);
                }
                if (z) {
                    this.wrappedStream.close();
                }
            } finally {
                this.wrappedStream = null;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() {
        this.selfClosed = true;
        checkClose();
    }

    /* access modifiers changed from: protected */
    public boolean isReadAllowed() {
        if (!this.selfClosed) {
            return this.wrappedStream != null;
        }
        throw new IOException("Attempted read on closed stream.");
    }

    @Override // java.io.InputStream
    public int read() {
        if (!isReadAllowed()) {
            return -1;
        }
        try {
            int read = this.wrappedStream.read();
            checkEOF(read);
            return read;
        } catch (IOException e) {
            checkAbort();
            throw e;
        }
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() {
        close();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (!isReadAllowed()) {
            return -1;
        }
        try {
            int read = this.wrappedStream.read(bArr, i, i2);
            checkEOF(read);
            return read;
        } catch (IOException e) {
            checkAbort();
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        if (!isReadAllowed()) {
            return -1;
        }
        try {
            int read = this.wrappedStream.read(bArr);
            checkEOF(read);
            return read;
        } catch (IOException e) {
            checkAbort();
            throw e;
        }
    }
}
