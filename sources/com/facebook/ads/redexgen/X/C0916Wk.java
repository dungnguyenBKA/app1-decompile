package com.facebook.ads.redexgen.X;

import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Wk  reason: case insensitive filesystem */
public class C0916Wk implements AbstractC02806e {
    public final /* synthetic */ C0922Wq A00;

    public C0916Wk(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.A00.A08(EnumC02916p.A05);
        }
        if (this.A00.A00 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        C0922Wq wq = this.A00;
        return wq.A05(wq.A00.getPhoneCount());
    }
}
