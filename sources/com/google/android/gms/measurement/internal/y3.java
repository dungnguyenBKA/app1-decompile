package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public abstract class y3 extends z2 {
    private boolean b;

    y3(j4 j4Var) {
        super(j4Var);
        this.a.n();
    }

    /* access modifiers changed from: package-private */
    public final boolean h() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public final void i() {
        if (!this.b) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void j() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!l()) {
            this.a.o();
            this.b = true;
        }
    }

    public final void k() {
        if (!this.b) {
            m();
            this.a.o();
            this.b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* access modifiers changed from: protected */
    public abstract boolean l();

    /* access modifiers changed from: protected */
    public void m() {
    }
}
