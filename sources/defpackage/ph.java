package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: ph  reason: default package */
public class ph extends FilterInputStream {
    private volatile byte[] b;
    private int c;
    private int d;
    private int e = -1;
    private int f;
    private final oe g;

    /* renamed from: ph$a */
    static class a extends IOException {
        a(String str) {
            super(str);
        }
    }

    public ph(InputStream inputStream, oe oeVar) {
        super(inputStream);
        this.g = oeVar;
        this.b = (byte[]) oeVar.e(65536, byte[].class);
    }

    private static IOException S() {
        throw new IOException("BufferedInputStream is closed");
    }

    private int j(InputStream inputStream, byte[] bArr) {
        int i;
        int i2 = this.e;
        if (i2 == -1 || this.f - i2 >= (i = this.d)) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                this.e = -1;
                this.f = 0;
                this.c = read;
            }
            return read;
        }
        if (i2 == 0 && i > bArr.length && this.c == bArr.length) {
            int length = bArr.length * 2;
            if (length <= i) {
                i = length;
            }
            byte[] bArr2 = (byte[]) this.g.e(i, byte[].class);
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.b = bArr2;
            this.g.d(bArr);
            bArr = bArr2;
        } else if (i2 > 0) {
            System.arraycopy(bArr, i2, bArr, 0, bArr.length - i2);
        }
        int i3 = this.f - this.e;
        this.f = i3;
        this.e = 0;
        this.c = 0;
        int read2 = inputStream.read(bArr, i3, bArr.length - i3);
        int i4 = this.f;
        if (read2 > 0) {
            i4 += read2;
        }
        this.c = i4;
        return read2;
    }

    public synchronized void L() {
        if (this.b != null) {
            this.g.d(this.b);
            this.b = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.b == null || inputStream == null) {
            S();
            throw null;
        }
        return (this.c - this.f) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() {
        if (this.b != null) {
            this.g.d(this.b);
            this.b = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public synchronized void mark(int i) {
        this.d = Math.max(this.d, i);
        this.e = this.f;
    }

    public boolean markSupported() {
        return true;
    }

    public synchronized void o() {
        this.d = this.b.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        byte[] bArr = this.b;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            S();
            throw null;
        } else if (this.f >= this.c && j(inputStream, bArr) == -1) {
            return -1;
        } else {
            if (bArr == this.b || (bArr = this.b) != null) {
                int i = this.c;
                int i2 = this.f;
                if (i - i2 <= 0) {
                    return -1;
                }
                this.f = i2 + 1;
                return bArr[i2] & 255;
            }
            S();
            throw null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        if (this.b != null) {
            int i = this.e;
            if (-1 != i) {
                this.f = i;
            } else {
                throw new a("Mark has been invalidated, pos: " + this.f + " markLimit: " + this.d);
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) {
        if (j < 1) {
            return 0;
        }
        byte[] bArr = this.b;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                int i = this.c;
                int i2 = this.f;
                if (((long) (i - i2)) >= j) {
                    this.f = (int) (((long) i2) + j);
                    return j;
                }
                long j2 = ((long) i) - ((long) i2);
                this.f = i;
                if (this.e == -1 || j > ((long) this.d)) {
                    return j2 + inputStream.skip(j - j2);
                } else if (j(inputStream, bArr) == -1) {
                    return j2;
                } else {
                    int i3 = this.c;
                    int i4 = this.f;
                    if (((long) (i3 - i4)) >= j - j2) {
                        this.f = (int) ((((long) i4) + j) - j2);
                        return j;
                    }
                    long j3 = (j2 + ((long) i3)) - ((long) i4);
                    this.f = i3;
                    return j3;
                }
            } else {
                S();
                throw null;
            }
        } else {
            S();
            throw null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte[] bArr2 = this.b;
        if (bArr2 == null) {
            S();
            throw null;
        } else if (i2 == 0) {
            return 0;
        } else {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                int i5 = this.f;
                int i6 = this.c;
                if (i5 < i6) {
                    int i7 = i6 - i5 >= i2 ? i2 : i6 - i5;
                    System.arraycopy(bArr2, i5, bArr, i, i7);
                    this.f += i7;
                    if (i7 == i2 || inputStream.available() == 0) {
                        return i7;
                    }
                    i += i7;
                    i3 = i2 - i7;
                } else {
                    i3 = i2;
                }
                while (true) {
                    int i8 = -1;
                    if (this.e == -1 && i3 >= bArr2.length) {
                        i4 = inputStream.read(bArr, i, i3);
                        if (i4 == -1) {
                            if (i3 != i2) {
                                i8 = i2 - i3;
                            }
                            return i8;
                        }
                    } else if (j(inputStream, bArr2) == -1) {
                        if (i3 != i2) {
                            i8 = i2 - i3;
                        }
                        return i8;
                    } else if (bArr2 == this.b || (bArr2 = this.b) != null) {
                        int i9 = this.c;
                        int i10 = this.f;
                        i4 = i9 - i10 >= i3 ? i3 : i9 - i10;
                        System.arraycopy(bArr2, i10, bArr, i, i4);
                        this.f += i4;
                    } else {
                        S();
                        throw null;
                    }
                    i3 -= i4;
                    if (i3 == 0) {
                        return i2;
                    }
                    if (inputStream.available() == 0) {
                        return i2 - i3;
                    }
                    i += i4;
                }
            } else {
                S();
                throw null;
            }
        }
    }
}
