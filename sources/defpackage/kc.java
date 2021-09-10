package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* access modifiers changed from: package-private */
/* renamed from: kc  reason: default package */
public class kc implements Closeable {
    private final InputStream b;
    private final Charset c;
    private byte[] d;
    private int e;
    private int f;

    /* access modifiers changed from: package-private */
    /* renamed from: kc$a */
    public class a extends ByteArrayOutputStream {
        a(int i) {
            super(i);
        }

        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            if (i > 0 && ((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                i--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i, kc.this.c.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public kc(InputStream inputStream, Charset charset) {
        if (charset == null) {
            throw null;
        } else if (charset.equals(lc.a)) {
            this.b = inputStream;
            this.c = charset;
            this.d = new byte[8192];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    private void o() {
        InputStream inputStream = this.b;
        byte[] bArr = this.d;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.e = 0;
            this.f = read;
            return;
        }
        throw new EOFException();
    }

    public boolean L() {
        return this.f == -1;
    }

    public String S() {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.b) {
            if (this.d != null) {
                if (this.e >= this.f) {
                    o();
                }
                for (int i3 = this.e; i3 != this.f; i3++) {
                    byte[] bArr2 = this.d;
                    if (bArr2[i3] == 10) {
                        if (i3 != this.e) {
                            i2 = i3 - 1;
                            if (bArr2[i2] == 13) {
                                byte[] bArr3 = this.d;
                                int i4 = this.e;
                                String str = new String(bArr3, i4, i2 - i4, this.c.name());
                                this.e = i3 + 1;
                                return str;
                            }
                        }
                        i2 = i3;
                        byte[] bArr32 = this.d;
                        int i42 = this.e;
                        String str2 = new String(bArr32, i42, i2 - i42, this.c.name());
                        this.e = i3 + 1;
                        return str2;
                    }
                }
                a aVar = new a((this.f - this.e) + 80);
                loop1:
                while (true) {
                    byte[] bArr4 = this.d;
                    int i5 = this.e;
                    aVar.write(bArr4, i5, this.f - i5);
                    this.f = -1;
                    o();
                    i = this.e;
                    while (true) {
                        if (i != this.f) {
                            bArr = this.d;
                            if (bArr[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                }
                int i6 = this.e;
                if (i != i6) {
                    aVar.write(bArr, i6, i - i6);
                }
                this.e = i + 1;
                return aVar.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.b) {
            if (this.d != null) {
                this.d = null;
                this.b.close();
            }
        }
    }
}
