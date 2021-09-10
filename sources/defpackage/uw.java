package defpackage;

/* renamed from: uw  reason: default package */
final class uw implements Runnable {
    private final /* synthetic */ kw b;
    private final /* synthetic */ vw c;

    uw(vw vwVar, kw kwVar) {
        this.c = vwVar;
        this.b = kwVar;
    }

    public final void run() {
        synchronized (this.c.b) {
            if (this.c.c != null) {
                this.c.c.onFailure(this.b.i());
            }
        }
    }
}
