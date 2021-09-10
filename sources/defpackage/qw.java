package defpackage;

/* renamed from: qw  reason: default package */
final class qw implements Runnable {
    private final /* synthetic */ kw b;
    private final /* synthetic */ ow c;

    qw(ow owVar, kw kwVar) {
        this.c = owVar;
        this.b = kwVar;
    }

    public final void run() {
        if (this.b.k()) {
            this.c.c.r();
            return;
        }
        try {
            this.c.c.q(this.c.b.then(this.b));
        } catch (iw e) {
            if (e.getCause() instanceof Exception) {
                this.c.c.p((Exception) e.getCause());
            } else {
                this.c.c.p(e);
            }
        } catch (Exception e2) {
            this.c.c.p(e2);
        }
    }
}
