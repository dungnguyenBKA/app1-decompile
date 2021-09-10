package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

public class VG implements AbstractC02806e {
    public final /* synthetic */ C0880Va A00;

    public VG(C0880Va va) {
        this.A00 = va;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 21) {
            return this.A00.A08(EnumC02916p.A05);
        }
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr != null) {
            return this.A00.A0F(Arrays.asList(strArr));
        }
        return this.A00.A08(EnumC02916p.A07);
    }
}
