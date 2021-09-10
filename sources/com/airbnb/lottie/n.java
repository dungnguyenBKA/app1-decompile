package com.airbnb.lottie;

/* access modifiers changed from: package-private */
public class n implements Runnable {
    final /* synthetic */ o b;

    n(o oVar) {
        this.b = oVar;
    }

    public void run() {
        if (this.b.d != null) {
            m mVar = this.b.d;
            if (mVar.b() != null) {
                o.b(this.b, mVar.b());
            } else {
                o.c(this.b, mVar.a());
            }
        }
    }
}
