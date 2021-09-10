package defpackage;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
/* renamed from: hx  reason: default package */
public final class hx implements Runnable {
    private final /* synthetic */ dx b;
    private final /* synthetic */ Callable c;

    hx(dx dxVar, Callable callable) {
        this.b = dxVar;
        this.c = callable;
    }

    public final void run() {
        try {
            this.b.q(this.c.call());
        } catch (Exception e) {
            this.b.p(e);
        }
    }
}
