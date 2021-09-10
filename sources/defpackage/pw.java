package defpackage;

import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
/* renamed from: pw  reason: default package */
public final class pw<TResult, TContinuationResult> implements fw, gw, hw<TContinuationResult>, bx<TResult> {
    private final Executor a;
    private final dw<TResult, kw<TContinuationResult>> b;
    private final dx<TContinuationResult> c;

    public pw(Executor executor, dw<TResult, kw<TContinuationResult>> dwVar, dx<TContinuationResult> dxVar) {
        this.a = executor;
        this.b = dwVar;
        this.c = dxVar;
    }

    @Override // defpackage.bx
    public final void a(kw<TResult> kwVar) {
        this.a.execute(new rw(this, kwVar));
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
