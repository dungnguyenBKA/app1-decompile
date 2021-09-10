package defpackage;

/* renamed from: sw  reason: default package */
final class sw implements Runnable {
    private final /* synthetic */ tw b;

    sw(tw twVar) {
        this.b = twVar;
    }

    public final void run() {
        synchronized (this.b.b) {
            if (this.b.c != null) {
                this.b.c.b();
            }
        }
    }
}
