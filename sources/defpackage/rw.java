package defpackage;

import java.util.concurrent.Executor;

/* renamed from: rw  reason: default package */
final class rw implements Runnable {
    private final /* synthetic */ kw b;
    private final /* synthetic */ pw c;

    rw(pw pwVar, kw kwVar) {
        this.c = pwVar;
        this.b = kwVar;
    }

    public final void run() {
        try {
            kw kwVar = (kw) this.c.b.then(this.b);
            if (kwVar == null) {
                this.c.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = mw.b;
            kwVar.e(executor, this.c);
            kwVar.c(executor, this.c);
            kwVar.a(executor, this.c);
        } catch (iw e) {
            if (e.getCause() instanceof Exception) {
                this.c.c.p((Exception) e.getCause());
            } else {
                this.c.c.p(e);
            }
        } catch (Exception e2) {
            this.c.c.p(e2);
        }
    }
}
