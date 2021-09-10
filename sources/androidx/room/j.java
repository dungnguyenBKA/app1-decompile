package androidx.room;

import java.util.concurrent.atomic.AtomicBoolean;

public abstract class j {
    private final AtomicBoolean a = new AtomicBoolean(false);
    private final g b;
    private volatile l4 c;

    public j(g gVar) {
        this.b = gVar;
    }

    public l4 a() {
        this.b.a();
        if (this.a.compareAndSet(false, true)) {
            if (this.c == null) {
                this.c = this.b.d(b());
            }
            return this.c;
        }
        return this.b.d(b());
    }

    /* access modifiers changed from: protected */
    public abstract String b();

    public void c(l4 l4Var) {
        if (l4Var == this.c) {
            this.a.set(false);
        }
    }
}
