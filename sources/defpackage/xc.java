package defpackage;

import java.io.FilterInputStream;
import java.io.InputStream;

/* renamed from: xc  reason: default package */
public final class xc extends FilterInputStream {
    private static final byte[] d;
    private static final int e;
    private static final int f;
    private final byte b;
    private int c;

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        d = bArr;
        int length = bArr.length;
        e = length;
        f = length + 2;
    }

    public xc(InputStream inputStream, int i) {
        super(inputStream);
        if (i < -1 || i > 8) {
            throw new IllegalArgumentException(ic.f("Cannot add invalid orientation: ", i));
        }
        this.b = (byte) i;
    }

    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i;
        int i2;
        int i3 = this.c;
        if (i3 < 2 || i3 > (i2 = f)) {
            i = super.read();
        } else if (i3 == i2) {
            i = this.b;
        } else {
            i = d[i3 - 2] & 255;
        }
        if (i != -1) {
            this.c++;
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long skip = super.skip(j);
        if (skip > 0) {
            this.c = (int) (((long) this.c) + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = this.c;
        int i5 = f;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.b;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(d, this.c - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.c += i3;
        }
        return i3;
    }
}
