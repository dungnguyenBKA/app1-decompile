package com.google.firebase.components;

/* access modifiers changed from: package-private */
public final /* synthetic */ class l implements Runnable {
    private final x b;
    private final d50 c;

    private l(x xVar, d50 d50) {
        this.b = xVar;
        this.c = d50;
    }

    public static Runnable a(x xVar, d50 d50) {
        return new l(xVar, d50);
    }

    public void run() {
        x xVar = this.b;
        d50 d50 = this.c;
        int i = n.h;
        xVar.a(d50);
    }
}
