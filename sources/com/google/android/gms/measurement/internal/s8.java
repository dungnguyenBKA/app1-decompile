package com.google.android.gms.measurement.internal;

/* access modifiers changed from: package-private */
public abstract class s8 extends d5 implements f5 {
    protected final b9 b;
    private boolean c;

    s8(b9 b9Var) {
        super(b9Var.u());
        this.b = b9Var;
        b9Var.s();
    }

    /* access modifiers changed from: package-private */
    public final boolean h() {
        return this.c;
    }

    /* access modifiers changed from: protected */
    public final void i() {
        if (!this.c) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void j() {
        if (!this.c) {
            k();
            this.b.t();
            this.c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* access modifiers changed from: protected */
    public abstract boolean k();
}
