package com.facebook.ads.redexgen.X;

import android.icu.util.TimeZone;
import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Ws  reason: case insensitive filesystem */
public class C0924Ws implements AbstractC02806e {
    public final /* synthetic */ C0926Wu A00;

    public C0924Ws(C0926Wu wu) {
        this.A00 = wu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 24) {
            return this.A00.A08(EnumC02916p.A05);
        }
        return this.A00.A04(((float) TimeZone.getDefault().getRawOffset()) / 1000.0f);
    }
}
