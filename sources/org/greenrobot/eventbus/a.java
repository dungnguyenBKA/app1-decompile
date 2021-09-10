package org.greenrobot.eventbus;

/* access modifiers changed from: package-private */
public class a implements Runnable {
    private final i b = new i();
    private final c c;

    a(c cVar) {
        this.c = cVar;
    }

    public void a(n nVar, Object obj) {
        this.b.a(h.a(nVar, obj));
        this.c.c().execute(this);
    }

    public void run() {
        h b2 = this.b.b();
        if (b2 != null) {
            this.c.d(b2);
            return;
        }
        throw new IllegalStateException("No pending post available");
    }
}
