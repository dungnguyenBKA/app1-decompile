package org.greenrobot.eventbus;

/* access modifiers changed from: package-private */
public final class i {
    private h a;
    private h b;

    i() {
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(h hVar) {
        h hVar2 = this.b;
        if (hVar2 != null) {
            hVar2.c = hVar;
            this.b = hVar;
        } else if (this.a == null) {
            this.b = hVar;
            this.a = hVar;
        } else {
            throw new IllegalStateException("Head present, but no tail");
        }
        notifyAll();
    }

    /* access modifiers changed from: package-private */
    public synchronized h b() {
        h hVar;
        hVar = this.a;
        if (hVar != null) {
            h hVar2 = hVar.c;
            this.a = hVar2;
            if (hVar2 == null) {
                this.b = null;
            }
        }
        return hVar;
    }

    /* access modifiers changed from: package-private */
    public synchronized h c(int i) {
        if (this.a == null) {
            wait((long) i);
        }
        return b();
    }
}
