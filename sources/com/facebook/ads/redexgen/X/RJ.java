package com.facebook.ads.redexgen.X;

public class RJ implements OD {
    public final /* synthetic */ RH A00;

    public RJ(RH rh) {
        this.A00 = rh;
    }

    @Override // com.facebook.ads.redexgen.X.OD
    public final void ABw(int i) {
        this.A00.A0E(i, true);
        if (this.A00.A0J()) {
            this.A00.A08();
        } else {
            this.A00.A0B(i);
        }
    }
}
