package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import java.util.HashMap;

public final class W2 extends AnonymousClass6V {
    public W2(Context context, C02715v r2) {
        super(context, r2);
    }

    /* access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC02956t A02(HashMap<String, W1> hashMap) {
        return new XA(SystemClock.elapsedRealtime(), A03(), hashMap, EnumC02946s.A0C);
    }

    public final AbstractC02806e A0H() {
        return new W0(this);
    }
}
