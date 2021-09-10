package defpackage;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* renamed from: ww  reason: default package */
final class ww<TResult> implements bx<TResult> {
    private final Executor a;
    private final Object b = new Object();
    @GuardedBy("mLock")
    private hw<? super TResult> c;

    public ww(Executor executor, hw<? super TResult> hwVar) {
        this.a = executor;
        this.c = hwVar;
    }

    @Override // defpackage.bx
    public final void a(kw<TResult> kwVar) {
        if (kwVar.m()) {
            synchronized (this.b) {
                if (this.c != null) {
                    this.a.execute(new xw(this, kwVar));
                }
            }
        }
    }
}
