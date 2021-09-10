package defpackage;

import java.util.concurrent.Executor;

/* renamed from: ow  reason: default package */
final class ow<TResult, TContinuationResult> implements bx<TResult> {
    private final Executor a;
    private final dw<TResult, TContinuationResult> b;
    private final dx<TContinuationResult> c;

    public ow(Executor executor, dw<TResult, TContinuationResult> dwVar, dx<TContinuationResult> dxVar) {
        this.a = executor;
        this.b = dwVar;
        this.c = dxVar;
    }

    @Override // defpackage.bx
    public final void a(kw<TResult> kwVar) {
        this.a.execute(new qw(this, kwVar));
    }
}
