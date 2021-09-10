package com.facebook.ads.redexgen.X;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Vt  reason: case insensitive filesystem */
public class C0899Vt implements AbstractC02806e {
    public final /* synthetic */ C0900Vu A00;

    public C0899Vt(C0900Vu vu) {
        this.A00 = vu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 16) {
            return this.A00.A08(EnumC02916p.A05);
        }
        if (this.A00.A00 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0900Vu vu = this.A00;
        return vu.A0G(vu.A00.isKeyguardSecure());
    }
}
