package com.facebook.ads.redexgen.X;

import android.os.Build;

public class UE implements AbstractC02806e {
    public final /* synthetic */ UO A00;

    public UE(UO uo) {
        this.A00 = uo;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.A00.A08(EnumC02916p.A05);
        }
        if (this.A00.A02 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        UO uo = this.A00;
        return uo.A05(uo.A02.getLockTaskModeState());
    }
}
