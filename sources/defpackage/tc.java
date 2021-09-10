package defpackage;

import java.io.OutputStream;

/* renamed from: tc  reason: default package */
public final class tc extends OutputStream {
    private final OutputStream b;
    private byte[] c;
    private oe d;
    private int e;

    public tc(OutputStream outputStream, oe oeVar) {
        this.b = outputStream;
        this.d = oeVar;
        this.c = (byte[]) oeVar.e(65536, byte[].class);
    }

    /* JADX INFO: finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            flush();
            this.b.close();
            byte[] bArr = this.c;
            if (bArr != null) {
                this.d.d(bArr);
                this.c = null;
            }
        } catch (Throwable th) {
            this.b.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        int i = this.e;
        if (i > 0) {
            this.b.write(this.c, 0, i);
            this.e = 0;
        }
        this.b.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.c;
        int i2 = this.e;
        int i3 = i2 + 1;
        this.e = i3;
        bArr[i2] = (byte) i;
        if (i3 == bArr.length && i3 > 0) {
            this.b.write(bArr, 0, i3);
            this.e = 0;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            int i6 = this.e;
            if (i6 != 0 || i4 < this.c.length) {
                int min = Math.min(i4, this.c.length - i6);
                System.arraycopy(bArr, i5, this.c, this.e, min);
                int i7 = this.e + min;
                this.e = i7;
                i3 += min;
                byte[] bArr2 = this.c;
                if (i7 == bArr2.length && i7 > 0) {
                    this.b.write(bArr2, 0, i7);
                    this.e = 0;
                    continue;
                }
            } else {
                this.b.write(bArr, i5, i4);
                return;
            }
        } while (i3 < i2);
    }
}
