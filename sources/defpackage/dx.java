package defpackage;

import com.google.android.gms.common.internal.n;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* access modifiers changed from: package-private */
/* renamed from: dx  reason: default package */
public final class dx<TResult> extends kw<TResult> {
    private final Object a = new Object();
    private final ax<TResult> b = new ax<>();
    @GuardedBy("mLock")
    private boolean c;
    private volatile boolean d;
    @GuardedBy("mLock")
    private TResult e;
    @GuardedBy("mLock")
    private Exception f;

    dx() {
    }

    private final void u() {
        synchronized (this.a) {
            if (this.c) {
                this.b.a(this);
            }
        }
    }

    @Override // defpackage.kw
    public final kw<TResult> a(Executor executor, fw fwVar) {
        ax<TResult> axVar = this.b;
        int i = ex.b;
        axVar.b(new tw(executor, fwVar));
        u();
        return this;
    }

    @Override // defpackage.kw
    public final kw<TResult> b(gw gwVar) {
        c(mw.a, gwVar);
        return this;
    }

    @Override // defpackage.kw
    public final kw<TResult> c(Executor executor, gw gwVar) {
        ax<TResult> axVar = this.b;
        int i = ex.b;
        axVar.b(new vw(executor, gwVar));
        u();
        return this;
    }

    @Override // defpackage.kw
    public final kw<TResult> d(hw<? super TResult> hwVar) {
        e(mw.a, hwVar);
        return this;
    }

    @Override // defpackage.kw
    public final kw<TResult> e(Executor executor, hw<? super TResult> hwVar) {
        ax<TResult> axVar = this.b;
        int i = ex.b;
        axVar.b(new ww(executor, hwVar));
        u();
        return this;
    }

    @Override // defpackage.kw
    public final <TContinuationResult> kw<TContinuationResult> f(dw<TResult, TContinuationResult> dwVar) {
        return g(mw.a, dwVar);
    }

    @Override // defpackage.kw
    public final <TContinuationResult> kw<TContinuationResult> g(Executor executor, dw<TResult, TContinuationResult> dwVar) {
        dx dxVar = new dx();
        ax<TResult> axVar = this.b;
        int i = ex.b;
        axVar.b(new ow(executor, dwVar, dxVar));
        u();
        return dxVar;
    }

    @Override // defpackage.kw
    public final <TContinuationResult> kw<TContinuationResult> h(Executor executor, dw<TResult, kw<TContinuationResult>> dwVar) {
        dx dxVar = new dx();
        ax<TResult> axVar = this.b;
        int i = ex.b;
        axVar.b(new pw(executor, dwVar, dxVar));
        u();
        return dxVar;
    }

    @Override // defpackage.kw
    public final Exception i() {
        Exception exc;
        synchronized (this.a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // defpackage.kw
    public final TResult j() {
        TResult tresult;
        synchronized (this.a) {
            n.k(this.c, "Task is not yet complete");
            if (this.d) {
                throw new CancellationException("Task is already canceled.");
            } else if (this.f == null) {
                tresult = this.e;
            } else {
                throw new iw(this.f);
            }
        }
        return tresult;
    }

    @Override // defpackage.kw
    public final boolean k() {
        return this.d;
    }

    @Override // defpackage.kw
    public final boolean l() {
        boolean z;
        synchronized (this.a) {
            z = this.c;
        }
        return z;
    }

    @Override // defpackage.kw
    public final boolean m() {
        boolean z;
        synchronized (this.a) {
            z = this.c && !this.d && this.f == null;
        }
        return z;
    }

    @Override // defpackage.kw
    public final <TContinuationResult> kw<TContinuationResult> n(jw<TResult, TContinuationResult> jwVar) {
        return o(mw.a, jwVar);
    }

    @Override // defpackage.kw
    public final <TContinuationResult> kw<TContinuationResult> o(Executor executor, jw<TResult, TContinuationResult> jwVar) {
        dx dxVar = new dx();
        ax<TResult> axVar = this.b;
        int i = ex.b;
        axVar.b(new zw(executor, jwVar, dxVar));
        u();
        return dxVar;
    }

    public final void p(Exception exc) {
        n.i(exc, "Exception must not be null");
        synchronized (this.a) {
            if (!this.c) {
                this.c = true;
                this.f = exc;
            } else {
                throw ew.a(this);
            }
        }
        this.b.a(this);
    }

    public final void q(TResult tresult) {
        synchronized (this.a) {
            if (!this.c) {
                this.c = true;
                this.e = tresult;
            } else {
                throw ew.a(this);
            }
        }
        this.b.a(this);
    }

    public final boolean r() {
        synchronized (this.a) {
            if (this.c) {
                return false;
            }
            this.c = true;
            this.d = true;
            this.b.a(this);
            return true;
        }
    }

    public final boolean s(Exception exc) {
        n.i(exc, "Exception must not be null");
        synchronized (this.a) {
            if (this.c) {
                return false;
            }
            this.c = true;
            this.f = exc;
            this.b.a(this);
            return true;
        }
    }

    public final boolean t(TResult tresult) {
        synchronized (this.a) {
            if (this.c) {
                return false;
            }
            this.c = true;
            this.e = tresult;
            this.b.a(this);
            return true;
        }
    }
}
