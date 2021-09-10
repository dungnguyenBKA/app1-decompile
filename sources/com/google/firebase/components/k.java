package com.google.firebase.components;

/* access modifiers changed from: package-private */
public final /* synthetic */ class k implements Runnable {
    private final b0 b;
    private final d50 c;

    private k(b0 b0Var, d50 d50) {
        this.b = b0Var;
        this.c = d50;
    }

    public static Runnable a(b0 b0Var, d50 d50) {
        return new k(b0Var, d50);
    }

    public void run() {
        b0 b0Var = this.b;
        d50 d50 = this.c;
        int i = n.h;
        b0Var.b(d50);
    }
}
