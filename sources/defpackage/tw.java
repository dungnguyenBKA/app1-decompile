package defpackage;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* renamed from: tw  reason: default package */
final class tw<TResult> implements bx<TResult> {
    private final Executor a;
    private final Object b = new Object();
    @GuardedBy("mLock")
    private fw c;

    public tw(Executor executor, fw fwVar) {
        this.a = executor;
        this.c = fwVar;
    }

    @Override // defpackage.bx
    public final void a(kw<TResult> kwVar) {
        if (kwVar.k()) {
            synchronized (this.b) {
                if (this.c != null) {
                    this.a.execute(new sw(this));
                }
            }
        }
    }
}
