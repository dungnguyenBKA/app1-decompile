package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* renamed from: yw  reason: default package */
final class yw implements Runnable {
    private final /* synthetic */ kw b;
    private final /* synthetic */ zw c;

    yw(zw zwVar, kw kwVar) {
        this.c = zwVar;
        this.b = kwVar;
    }

    public final void run() {
        try {
            kw a = this.c.b.a(this.b.j());
            if (a == null) {
                this.c.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = mw.b;
            a.e(executor, this.c);
            a.c(executor, this.c);
            a.a(executor, this.c);
        } catch (iw e) {
            if (e.getCause() instanceof Exception) {
                this.c.onFailure((Exception) e.getCause());
            } else {
                this.c.onFailure(e);
            }
        } catch (CancellationException unused) {
            this.c.b();
        } catch (Exception e2) {
            this.c.onFailure(e2);
        }
    }
}
