package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: lk0  reason: default package */
public final class lk0 implements yj0 {
    public final xj0 b = new xj0();
    public final qk0 c;
    boolean d;

    lk0(qk0 qk0) {
        Objects.requireNonNull(qk0, "sink == null");
        this.c = qk0;
    }

    @Override // defpackage.yj0
    public yj0 C(String str) {
        if (!this.d) {
            this.b.z0(str);
            x();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.qk0
    public void H(xj0 xj0, long j) {
        if (!this.d) {
            this.b.H(xj0, j);
            x();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public long I(rk0 rk0) {
        long j = 0;
        while (true) {
            long read = rk0.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j;
            }
            j += read;
            x();
        }
    }

    @Override // defpackage.yj0
    public yj0 J(long j) {
        if (!this.d) {
            this.b.J(j);
            return x();
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public yj0 U(ak0 ak0) {
        if (!this.d) {
            this.b.r0(ak0);
            x();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public xj0 a() {
        return this.b;
    }

    @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
        if (!this.d) {
            Throwable th = null;
            try {
                xj0 xj0 = this.b;
                long j = xj0.c;
                if (j > 0) {
                    this.c.H(xj0, j);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.c.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.d = true;
            if (th != null) {
                Charset charset = tk0.a;
                throw th;
            }
        }
    }

    @Override // defpackage.qk0, defpackage.yj0, java.io.Flushable
    public void flush() {
        if (!this.d) {
            xj0 xj0 = this.b;
            long j = xj0.c;
            if (j > 0) {
                this.c.H(xj0, j);
            }
            this.c.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public yj0 h() {
        if (!this.d) {
            xj0 xj0 = this.b;
            long j = xj0.c;
            if (j > 0) {
                this.c.H(xj0, j);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public yj0 i(int i) {
        if (!this.d) {
            this.b.x0(i);
            x();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public boolean isOpen() {
        return !this.d;
    }

    @Override // defpackage.yj0
    public yj0 m(int i) {
        if (!this.d) {
            this.b.w0(i);
            return x();
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public yj0 s(int i) {
        if (!this.d) {
            xj0 xj0 = this.b;
            Objects.requireNonNull(xj0);
            xj0.w0(tk0.c(i));
            x();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.qk0
    public sk0 timeout() {
        return this.c.timeout();
    }

    public String toString() {
        StringBuilder q = ic.q("buffer(");
        q.append(this.c);
        q.append(")");
        return q.toString();
    }

    @Override // defpackage.yj0
    public yj0 u(int i) {
        if (!this.d) {
            this.b.u0(i);
            x();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public yj0 write(byte[] bArr) {
        if (!this.d) {
            this.b.s0(bArr);
            x();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public yj0 x() {
        if (!this.d) {
            long L = this.b.L();
            if (L > 0) {
                this.c.H(this.b, L);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // defpackage.yj0
    public yj0 write(byte[] bArr, int i, int i2) {
        if (!this.d) {
            this.b.t0(bArr, i, i2);
            x();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (!this.d) {
            int write = this.b.write(byteBuffer);
            x();
            return write;
        }
        throw new IllegalStateException("closed");
    }
}
