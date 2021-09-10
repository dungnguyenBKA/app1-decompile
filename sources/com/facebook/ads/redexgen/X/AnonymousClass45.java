package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.45  reason: invalid class name */
public class AnonymousClass45 implements Runnable {
    public final /* synthetic */ C0469Eq A00;

    public AnonymousClass45(C0469Eq eq) {
        this.A00 = eq;
    }

    public final void run() {
        if (this.A00.A0D && !this.A00.isLayoutRequested()) {
            if (!this.A00.A0F) {
                this.A00.requestLayout();
            } else if (this.A00.A0I) {
                this.A00.A0J = true;
            } else {
                this.A00.A1K();
            }
        }
    }
}
