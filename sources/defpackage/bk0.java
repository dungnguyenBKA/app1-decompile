package defpackage;

import java.nio.charset.Charset;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* renamed from: bk0  reason: default package */
public final class bk0 implements qk0 {
    private final yj0 b;
    private final Deflater c;
    private boolean d;

    bk0(yj0 yj0, Deflater deflater) {
        this.b = yj0;
        this.c = deflater;
    }

    @IgnoreJRERequirement
    private void j(boolean z) {
        nk0 q0;
        int i;
        xj0 a = this.b.a();
        while (true) {
            q0 = a.q0(1);
            if (z) {
                Deflater deflater = this.c;
                byte[] bArr = q0.a;
                int i2 = q0.c;
                i = deflater.deflate(bArr, i2, 8192 - i2, 2);
            } else {
                Deflater deflater2 = this.c;
                byte[] bArr2 = q0.a;
                int i3 = q0.c;
                i = deflater2.deflate(bArr2, i3, 8192 - i3);
            }
            if (i > 0) {
                q0.c += i;
                a.c += (long) i;
                this.b.x();
            } else if (this.c.needsInput()) {
                break;
            }
        }
        if (q0.b == q0.c) {
            a.b = q0.a();
            ok0.a(q0);
        }
    }

    @Override // defpackage.qk0
    public void H(xj0 xj0, long j) {
        tk0.b(xj0.c, 0, j);
        while (j > 0) {
            nk0 nk0 = xj0.b;
            int min = (int) Math.min(j, (long) (nk0.c - nk0.b));
            this.c.setInput(nk0.a, nk0.b, min);
            j(false);
            long j2 = (long) min;
            xj0.c -= j2;
            int i = nk0.b + min;
            nk0.b = i;
            if (i == nk0.c) {
                xj0.b = nk0.a();
                ok0.a(nk0);
            }
            j -= j2;
        }
    }

    @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.d) {
            Throwable th = null;
            try {
                this.c.finish();
                j(false);
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
            this.d = true;
            if (th != null) {
                Charset charset = tk0.a;
                throw th;
            }
        }
    }

    @Override // defpackage.qk0, java.io.Flushable
    public void flush() {
        j(true);
        this.b.flush();
    }

    /* access modifiers changed from: package-private */
    public void o() {
        this.c.finish();
        j(false);
    }

    @Override // defpackage.qk0
    public sk0 timeout() {
        return this.b.timeout();
    }

    public String toString() {
        StringBuilder q = ic.q("DeflaterSink(");
        q.append(this.b);
        q.append(")");
        return q.toString();
    }
}
