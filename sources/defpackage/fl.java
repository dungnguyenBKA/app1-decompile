package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.FilterInputStream;
import java.io.InputStream;

/* renamed from: fl  reason: default package */
public class fl extends FilterInputStream {
    private int b = RecyclerView.UNDEFINED_DURATION;

    public fl(InputStream inputStream) {
        super(inputStream);
    }

    private long j(long j) {
        int i = this.b;
        if (i == 0) {
            return -1;
        }
        return (i == Integer.MIN_VALUE || j <= ((long) i)) ? j : (long) i;
    }

    private void o(long j) {
        int i = this.b;
        if (i != Integer.MIN_VALUE && j != -1) {
            this.b = (int) (((long) i) - j);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int i = this.b;
        if (i == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i, super.available());
    }

    public synchronized void mark(int i) {
        super.mark(i);
        this.b = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (j(1) == -1) {
            return -1;
        }
        int read = super.read();
        o(1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        super.reset();
        this.b = RecyclerView.UNDEFINED_DURATION;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long j2 = j(j);
        if (j2 == -1) {
            return 0;
        }
        long skip = super.skip(j2);
        o(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int j = (int) j((long) i2);
        if (j == -1) {
            return -1;
        }
        int read = super.read(bArr, i, j);
        o((long) read);
        return read;
    }
}
