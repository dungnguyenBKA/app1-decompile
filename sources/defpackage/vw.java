package defpackage;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* renamed from: vw  reason: default package */
final class vw<TResult> implements bx<TResult> {
    private final Executor a;
    private final Object b = new Object();
    @GuardedBy("mLock")
    private gw c;

    public vw(Executor executor, gw gwVar) {
        this.a = executor;
        this.c = gwVar;
    }

    @Override // defpackage.bx
    public final void a(kw<TResult> kwVar) {
        if (!kwVar.m() && !kwVar.k()) {
            synchronized (this.b) {
                if (this.c != null) {
                    this.a.execute(new uw(this, kwVar));
                }
            }
        }
    }
}
