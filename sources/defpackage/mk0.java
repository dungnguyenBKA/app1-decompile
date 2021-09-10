package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: mk0  reason: default package */
public final class mk0 implements zj0 {
    public final xj0 b = new xj0();
    public final rk0 c;
    boolean d;

    mk0(rk0 rk0) {
        Objects.requireNonNull(rk0, "source == null");
        this.c = rk0;
    }

    @Override // defpackage.zj0
    public boolean E(long j, ak0 ak0) {
        int m = ak0.m();
        if (this.d) {
            throw new IllegalStateException("closed");
        } else if (j < 0 || m < 0 || ak0.m() - 0 < m) {
            return false;
        } else {
            for (int i = 0; i < m; i++) {
                long j2 = ((long) i) + j;
                if (!(K(1 + j2) && this.b.V(j2) == ak0.f(0 + i))) {
                    return false;
                }
            }
            return true;
        }
    }

    @Override // defpackage.zj0
    public String F(Charset charset) {
        if (charset != null) {
            this.b.I(this.c);
            xj0 xj0 = this.b;
            Objects.requireNonNull(xj0);
            try {
                return xj0.k0(xj0.c, charset);
            } catch (EOFException e) {
                throw new AssertionError(e);
            }
        } else {
            throw new IllegalArgumentException("charset == null");
        }
    }

    @Override // defpackage.zj0
    public boolean K(long j) {
        xj0 xj0;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (!this.d) {
            do {
                xj0 = this.b;
                if (xj0.c >= j) {
                    return true;
                }
            } while (this.c.read(xj0, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
            return false;
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // defpackage.zj0
    public String O() {
        return y(Long.MAX_VALUE);
    }

    @Override // defpackage.zj0
    public int P() {
        c0(4);
        return this.b.P();
    }

    @Override // defpackage.zj0
    public byte[] Q(long j) {
        if (K(j)) {
            return this.b.Q(j);
        }
        throw new EOFException();
    }

    @Override // defpackage.zj0
    public short W() {
        c0(2);
        return this.b.W();
    }

    @Override // defpackage.zj0
    public long Y(qk0 qk0) {
        long j = 0;
        while (this.c.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long L = this.b.L();
            if (L > 0) {
                j += L;
                ((xj0) qk0).H(this.b, L);
            }
        }
        xj0 xj0 = this.b;
        long j2 = xj0.c;
        if (j2 <= 0) {
            return j;
        }
        long j3 = j + j2;
        ((xj0) qk0).H(xj0, j2);
        return j3;
    }

    @Override // defpackage.zj0
    public xj0 a() {
        return this.b;
    }

    @Override // defpackage.zj0
    public void c0(long j) {
        if (!K(j)) {
            throw new EOFException();
        }
    }

    @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
        if (!this.d) {
            this.d = true;
            this.c.close();
            this.b.j();
        }
    }

    @Override // defpackage.zj0
    public long e0(byte b2) {
        return j(b2, 0, Long.MAX_VALUE);
    }

    @Override // defpackage.zj0
    public ak0 f(long j) {
        if (K(j)) {
            return this.b.f(j);
        }
        throw new EOFException();
    }

    @Override // defpackage.zj0
    public long f0() {
        c0(1);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!K((long) i2)) {
                break;
            }
            byte V = this.b.V((long) i);
            if ((V >= 48 && V <= 57) || ((V >= 97 && V <= 102) || (V >= 65 && V <= 70))) {
                i = i2;
            } else if (i == 0) {
                throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(V)));
            }
        }
        return this.b.f0();
    }

    @Override // defpackage.zj0
    public InputStream g0() {
        return new a();
    }

    @Override // defpackage.zj0
    public int h0(kk0 kk0) {
        if (!this.d) {
            do {
                int o0 = this.b.o0(kk0, true);
                if (o0 == -1) {
                    return -1;
                }
                if (o0 != -2) {
                    this.b.skip((long) kk0.b[o0].m());
                    return o0;
                }
            } while (this.c.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
            return -1;
        }
        throw new IllegalStateException("closed");
    }

    public boolean isOpen() {
        return !this.d;
    }

    public long j(byte b2, long j, long j2) {
        if (this.d) {
            throw new IllegalStateException("closed");
        } else if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        } else {
            while (j < j2) {
                long b0 = this.b.b0(b2, j, j2);
                if (b0 == -1) {
                    xj0 xj0 = this.b;
                    long j3 = xj0.c;
                    if (j3 >= j2 || this.c.read(xj0, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                        break;
                    }
                    j = Math.max(j, j3);
                } else {
                    return b0;
                }
            }
            return -1;
        }
    }

    @Override // defpackage.zj0
    public byte[] q() {
        this.b.I(this.c);
        return this.b.q();
    }

    @Override // defpackage.rk0
    public long read(xj0 xj0, long j) {
        if (xj0 == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (!this.d) {
            xj0 xj02 = this.b;
            if (xj02.c == 0 && this.c.read(xj02, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return this.b.read(xj0, Math.min(j, this.b.c));
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // defpackage.zj0
    public byte readByte() {
        c0(1);
        return this.b.readByte();
    }

    @Override // defpackage.zj0
    public void readFully(byte[] bArr) {
        try {
            c0((long) bArr.length);
            this.b.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                xj0 xj0 = this.b;
                long j = xj0.c;
                if (j > 0) {
                    int read = xj0.read(bArr, i, (int) j);
                    if (read != -1) {
                        i += read;
                    } else {
                        throw new AssertionError();
                    }
                } else {
                    throw e;
                }
            }
        }
    }

    @Override // defpackage.zj0
    public int readInt() {
        c0(4);
        return this.b.readInt();
    }

    @Override // defpackage.zj0
    public short readShort() {
        c0(2);
        return this.b.readShort();
    }

    @Override // defpackage.zj0
    public void skip(long j) {
        if (!this.d) {
            while (j > 0) {
                xj0 xj0 = this.b;
                if (xj0.c == 0 && this.c.read(xj0, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.b.c);
                this.b.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.zj0
    public boolean t() {
        if (!this.d) {
            return this.b.t() && this.c.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.rk0
    public sk0 timeout() {
        return this.c.timeout();
    }

    public String toString() {
        StringBuilder q = ic.q("buffer(");
        q.append(this.c);
        q.append(")");
        return q.toString();
    }

    @Override // defpackage.zj0
    public long w(ak0 ak0) {
        if (!this.d) {
            long j = 0;
            while (true) {
                long i0 = this.b.i0(ak0, j);
                if (i0 != -1) {
                    return i0;
                }
                xj0 xj0 = this.b;
                long j2 = xj0.c;
                if (this.c.read(xj0, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                j = Math.max(j, j2);
            }
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // defpackage.zj0
    public String y(long j) {
        if (j >= 0) {
            long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
            long j3 = j((byte) 10, 0, j2);
            if (j3 != -1) {
                return this.b.n0(j3);
            }
            if (j2 < Long.MAX_VALUE && K(j2) && this.b.V(j2 - 1) == 13 && K(1 + j2) && this.b.V(j2) == 10) {
                return this.b.n0(j2);
            }
            xj0 xj0 = new xj0();
            xj0 xj02 = this.b;
            xj02.S(xj0, 0, Math.min(32L, xj02.c));
            StringBuilder q = ic.q("\\n not found: limit=");
            q.append(Math.min(this.b.c, j));
            q.append(" content=");
            q.append(xj0.j0().g());
            q.append((char) 8230);
            throw new EOFException(q.toString());
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    /* renamed from: mk0$a */
    class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() {
            mk0 mk0 = mk0.this;
            if (!mk0.d) {
                return (int) Math.min(mk0.b.c, 2147483647L);
            }
            throw new IOException("closed");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
        public void close() {
            mk0.this.close();
        }

        @Override // java.io.InputStream
        public int read() {
            mk0 mk0 = mk0.this;
            if (!mk0.d) {
                xj0 xj0 = mk0.b;
                if (xj0.c == 0 && mk0.c.read(xj0, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                return mk0.this.b.readByte() & 255;
            }
            throw new IOException("closed");
        }

        public String toString() {
            return mk0.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            if (!mk0.this.d) {
                tk0.b((long) bArr.length, (long) i, (long) i2);
                mk0 mk0 = mk0.this;
                xj0 xj0 = mk0.b;
                if (xj0.c == 0 && mk0.c.read(xj0, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                return mk0.this.b.read(bArr, i, i2);
            }
            throw new IOException("closed");
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        xj0 xj0 = this.b;
        if (xj0.c == 0 && this.c.read(xj0, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.b.read(byteBuffer);
    }
}
