package com.facebook.ads.redexgen.X;

public abstract class SD implements AnonymousClass75 {
    public final boolean A00;

    public abstract void A00();

    public abstract void A01(boolean z);

    public SD(boolean z) {
        this.A00 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass75
    public final void A9h() {
        if (this.A00) {
            A00();
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass75
    public final void A9o() {
        A01(true);
    }
}
