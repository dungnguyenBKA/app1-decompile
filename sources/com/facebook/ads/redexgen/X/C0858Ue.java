package com.facebook.ads.redexgen.X;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Ue  reason: case insensitive filesystem */
public class C0858Ue implements AbstractC02806e {
    public final /* synthetic */ C0863Uj A00;

    public C0858Ue(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 9) {
            return this.A00.A08(EnumC02916p.A05);
        }
        if (this.A00.A01 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0863Uj uj = this.A00;
        return uj.A09(uj.A01.nativeLibraryDir);
    }
}
