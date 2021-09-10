package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: al  reason: default package */
public final class al extends FilterInputStream {
    private final long b;
    private int c;

    private al(InputStream inputStream, long j) {
        super(inputStream);
        this.b = j;
    }

    private int j(int i) {
        if (i >= 0) {
            this.c += i;
        } else if (this.b - ((long) this.c) > 0) {
            StringBuilder q = ic.q("Failed to read all expected data, expected: ");
            q.append(this.b);
            q.append(", but read: ");
            q.append(this.c);
            throw new IOException(q.toString());
        }
        return i;
    }

    public static InputStream o(InputStream inputStream, long j) {
        return new al(inputStream, j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() {
        return (int) Math.max(this.b - ((long) this.c), (long) ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        int read;
        read = super.read();
        j(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) {
        int read;
        read = super.read(bArr, i, i2);
        j(read);
        return read;
    }
}
