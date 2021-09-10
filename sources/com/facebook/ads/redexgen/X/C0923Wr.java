package com.facebook.ads.redexgen.X;

import android.icu.util.TimeZone;
import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Wr  reason: case insensitive filesystem */
public class C0923Wr implements AbstractC02806e {
    public final /* synthetic */ C0926Wu A00;

    public C0923Wr(C0926Wu wu) {
        this.A00 = wu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 24) {
            return this.A00.A08(EnumC02916p.A05);
        }
        return this.A00.A09(TimeZone.getDefault().getID());
    }
}
