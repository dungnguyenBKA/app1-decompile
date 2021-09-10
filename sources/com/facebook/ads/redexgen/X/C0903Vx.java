package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Locale;

/* renamed from: com.facebook.ads.redexgen.X.Vx  reason: case insensitive filesystem */
public class C0903Vx implements AbstractC02806e {
    public final /* synthetic */ C0905Vz A00;

    public C0903Vx(C0905Vz vz) {
        this.A00 = vz;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 21) {
            return this.A00.A08(EnumC02916p.A05);
        }
        return this.A00.A09(Locale.getDefault().getScript());
    }
}
