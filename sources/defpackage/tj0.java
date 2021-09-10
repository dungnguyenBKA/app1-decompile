package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* access modifiers changed from: package-private */
/* renamed from: tj0  reason: default package */
public class tj0 implements qk0 {
    final /* synthetic */ qk0 b;
    final /* synthetic */ vj0 c;

    tj0(vj0 vj0, qk0 qk0) {
        this.c = vj0;
        this.b = qk0;
    }

    @Override // defpackage.qk0
    public void H(xj0 xj0, long j) {
        tk0.b(xj0.c, 0, j);
        while (true) {
            long j2 = 0;
            if (j > 0) {
                nk0 nk0 = xj0.b;
                while (true) {
                    if (j2 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        break;
                    }
                    j2 += (long) (nk0.c - nk0.b);
                    if (j2 >= j) {
                        j2 = j;
                        break;
                    }
                    nk0 = nk0.f;
                }
                this.c.j();
                try {
                    this.b.H(xj0, j2);
                    j -= j2;
                    this.c.k(true);
                } catch (IOException e) {
                    vj0 vj0 = this.c;
                    if (!vj0.l()) {
                        throw e;
                    }
                    throw vj0.m(e);
                } catch (Throwable th) {
                    this.c.k(false);
                    throw th;
                }
            } else {
                return;
            }
        }
    }

    @Override // defpackage.qk0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.c.j();
        try {
            this.b.close();
            this.c.k(true);
        } catch (IOException e) {
            vj0 vj0 = this.c;
            if (!vj0.l()) {
                throw e;
            }
            throw vj0.m(e);
        } catch (Throwable th) {
            this.c.k(false);
            throw th;
        }
    }

    @Override // defpackage.qk0, java.io.Flushable
    public void flush() {
        this.c.j();
        try {
            this.b.flush();
            this.c.k(true);
        } catch (IOException e) {
            vj0 vj0 = this.c;
            if (!vj0.l()) {
                throw e;
            }
            throw vj0.m(e);
        } catch (Throwable th) {
            this.c.k(false);
            throw th;
        }
    }

    @Override // defpackage.qk0
    public sk0 timeout() {
        return this.c;
    }

    public String toString() {
        StringBuilder q = ic.q("AsyncTimeout.sink(");
        q.append(this.b);
        q.append(")");
        return q.toString();
    }
}
