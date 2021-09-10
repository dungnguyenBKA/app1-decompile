package defpackage;

import java.util.concurrent.Executor;

/* renamed from: kw  reason: default package */
public abstract class kw<TResult> {
    public kw<TResult> a(Executor executor, fw fwVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public abstract kw<TResult> b(gw gwVar);

    public abstract kw<TResult> c(Executor executor, gw gwVar);

    public abstract kw<TResult> d(hw<? super TResult> hwVar);

    public abstract kw<TResult> e(Executor executor, hw<? super TResult> hwVar);

    public <TContinuationResult> kw<TContinuationResult> f(dw<TResult, TContinuationResult> dwVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> kw<TContinuationResult> g(Executor executor, dw<TResult, TContinuationResult> dwVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> kw<TContinuationResult> h(Executor executor, dw<TResult, kw<TContinuationResult>> dwVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public abstract Exception i();

    public abstract TResult j();

    public abstract boolean k();

    public abstract boolean l();

    public abstract boolean m();

    public <TContinuationResult> kw<TContinuationResult> n(jw<TResult, TContinuationResult> jwVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    public <TContinuationResult> kw<TContinuationResult> o(Executor executor, jw<TResult, TContinuationResult> jwVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
