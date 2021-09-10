package defpackage;

import java.io.IOException;

/* access modifiers changed from: package-private */
/* renamed from: uj0  reason: default package */
public class uj0 implements rk0 {
    final /* synthetic */ rk0 b;
    final /* synthetic */ vj0 c;

    uj0(vj0 vj0, rk0 rk0) {
        this.c = vj0;
        this.b = rk0;
    }

    @Override // defpackage.rk0, java.io.Closeable, java.lang.AutoCloseable
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

    @Override // defpackage.rk0
    public long read(xj0 xj0, long j) {
        this.c.j();
        try {
            long read = this.b.read(xj0, j);
            this.c.k(true);
            return read;
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

    @Override // defpackage.rk0
    public sk0 timeout() {
        return this.c;
    }

    public String toString() {
        StringBuilder q = ic.q("AsyncTimeout.source(");
        q.append(this.b);
        q.append(")");
        return q.toString();
    }
}
