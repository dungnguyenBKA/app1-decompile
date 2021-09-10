package defpackage;

import java.nio.charset.Charset;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* renamed from: fk0  reason: default package */
public final class fk0 implements qk0 {
    private final yj0 b;
    private final Deflater c;
    private final bk0 d;
    private boolean e;
    private final CRC32 f = new CRC32();

    public fk0(qk0 qk0) {
        Deflater deflater = new Deflater(-1, true);
        this.c = deflater;
        int i = ik0.b;
        lk0 lk0 = new lk0(qk0);
        this.b = lk0;
        this.d = new bk0(lk0, deflater);
        xj0 xj0 = lk0.b;
        xj0.x0(8075);
        xj0.u0(8);
        xj0.u0(0);
        xj0.w0(0);
        xj0.u0(0);
        xj0.u0(0);
    }

    @Override // defpackage.qk0
    public void H(xj0 xj0, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (j != 0) {
            nk0 nk0 = xj0.b;
            long j2 = j;
            while (j2 > 0) {
                int min = (int) Math.min(j2, (long) (nk0.c - nk0.b));
                this.f.update(nk0.a, nk0.b, min);
                j2 -= (long) min;
                nk0 = nk0.f;
            }
            this.d.H(xj0, j);
        }
    }

    @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.e) {
            Throwable th = null;
            try {
                this.d.o();
                this.b.s((int) this.f.getValue());
                this.b.s((int) this.c.getBytesRead());
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.c.end();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            try {
                this.b.close();
            } catch (Throwable th4) {
                if (th == null) {
                    th = th4;
                }
            }
            this.e = true;
            if (th != null) {
                Charset charset = tk0.a;
                throw th;
            }
        }
    }

    @Override // defpackage.qk0, java.io.Flushable
    public void flush() {
        this.d.flush();
    }

    @Override // defpackage.qk0
    public sk0 timeout() {
        return this.b.timeout();
    }
}
