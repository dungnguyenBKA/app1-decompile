package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.List;

public final class WW extends AnonymousClass6V {
    public final Context A00;

    public WW(Context context, C02715v r2) {
        super(context, r2);
        this.A00 = context;
    }

    /* access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC02956t A03(HashMap<String, WV> hashMap) {
        return new XA(SystemClock.elapsedRealtime(), A03(), hashMap, EnumC02946s.A0C);
    }

    public final AbstractC02806e A0H(List<C02796d> list, EnumC02766a r3) {
        return new WU(this, list, r3);
    }
}
