package defpackage;

/* renamed from: xw  reason: default package */
final class xw implements Runnable {
    private final /* synthetic */ kw b;
    private final /* synthetic */ ww c;

    xw(ww wwVar, kw kwVar) {
        this.c = wwVar;
        this.b = kwVar;
    }

    public final void run() {
        synchronized (this.c.b) {
            if (this.c.c != null) {
                this.c.c.onSuccess(this.b.j());
            }
        }
    }
}
