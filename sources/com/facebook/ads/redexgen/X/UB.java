package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class UB extends AnonymousClass6R {
    public final List<C02776b> A00 = new ArrayList();

    public UB(Context context, C02715v r3) {
        super(context, r3);
    }

    public final List<C02776b> A03() {
        return Collections.unmodifiableList(this.A00);
    }

    public final void A04(C02776b r3) {
        if (r3.A03().contains(EnumC02846i.A0B)) {
            this.A00.add(r3);
        }
    }

    public final void A05(EnumC02816f r2) {
        A02(r2, this.A00);
    }
}
