package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public final class UC extends AnonymousClass6R {
    public final List<C02776b> A00 = new ArrayList();

    public UC(Context context, C02715v r3) {
        super(context, r3);
    }

    public final void A03(C02776b r3) {
        if (!r3.A03().contains(EnumC02846i.A0B)) {
            this.A00.add(r3);
        }
    }

    public final void A04(EnumC02816f r2) {
        A02(r2, this.A00);
    }
}
