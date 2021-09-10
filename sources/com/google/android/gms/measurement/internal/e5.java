package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public abstract class e5 extends d5 {
    private boolean b;

    e5(j4 j4Var) {
        super(j4Var);
        this.a.n();
    }

    /* access modifiers changed from: protected */
    public abstract boolean h();

    /* access modifiers changed from: protected */
    public void i() {
    }

    /* access modifiers changed from: package-private */
    public final boolean j() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public final void k() {
        if (!j()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void l() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!h()) {
            this.a.o();
            this.b = true;
        }
    }

    public final void m() {
        if (!this.b) {
            i();
            this.a.o();
            this.b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
