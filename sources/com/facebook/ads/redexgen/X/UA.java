package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.HashMap;
import java.util.Map;

public final class UA extends AnonymousClass6R implements AnonymousClass6M {
    public AnonymousClass6B A00;
    public final C02715v A01;
    public final Map<Integer, C02776b> A02 = new HashMap();

    @SuppressLint({"UseSparseArrays"})
    public UA(Context context, C02715v r3) {
        super(context, r3);
        this.A01 = r3;
    }

    public final void A03(C02776b r3) {
        this.A02.put(Integer.valueOf(r3.A00()), r3);
    }

    public final void A04(EnumC02816f r3, Context context) {
        this.A00 = AnonymousClass6B.A00(context, this.A01);
        this.A00.A05(this.A02, r3);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass6M
    public final void ACL() {
        AnonymousClass6B r0 = this.A00;
        if (r0 != null) {
            r0.A04();
        }
    }
}
