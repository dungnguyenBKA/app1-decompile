package defpackage;

import java.util.concurrent.Executor;

/* renamed from: zw  reason: default package */
final class zw<TResult, TContinuationResult> implements fw, gw, hw<TContinuationResult>, bx<TResult> {
    private final Executor a;
    private final jw<TResult, TContinuationResult> b;
    private final dx<TContinuationResult> c;

    public zw(Executor executor, jw<TResult, TContinuationResult> jwVar, dx<TContinuationResult> dxVar) {
        this.a = executor;
        this.b = jwVar;
        this.c = dxVar;
    }

    @Override // defpackage.bx
    public final void a(kw<TResult> kwVar) {
        this.a.execute(new yw(this, kwVar));
    }

    @Override // defpackage.fw
    public final void b() {
        this.c.r();
    }

    @Override // defpackage.gw
    public final void onFailure(Exception exc) {
        this.c.p(exc);
    }

    @Override // defpackage.hw
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.c.q(tcontinuationresult);
    }
}
