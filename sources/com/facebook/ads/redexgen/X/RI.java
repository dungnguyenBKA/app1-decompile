package com.facebook.ads.redexgen.X;

import android.view.View;

public class RI implements OE {
    public final /* synthetic */ RH A00;

    public RI(RH rh) {
        this.A00 = rh;
    }

    @Override // com.facebook.ads.redexgen.X.OE
    public final void AC3(View view) {
        if (this.A00.A09) {
            this.A00.A07 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.OE
    public final void AC5(View view) {
        YM ym = (YM) view;
        ym.A0e();
        if (this.A00.A09) {
            this.A00.A07 = true;
        }
        if (this.A00.A04.A0a() && ((Integer) ym.getTag(-1593835536)).intValue() == 0) {
            this.A00.A04.A0V();
        }
    }
}
