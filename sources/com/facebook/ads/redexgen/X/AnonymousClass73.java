package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;

/* renamed from: com.facebook.ads.redexgen.X.73  reason: invalid class name */
public final class AnonymousClass73 {
    public Handler A00;

    public AnonymousClass73(Looper looper) {
        this.A00 = new Handler(looper);
    }

    public final void A00(AnonymousClass74 r2) {
        this.A00.post(r2);
    }

    public final void A01(AnonymousClass74 r2) {
        this.A00.removeCallbacks(r2);
    }

    public final boolean A02(AnonymousClass74 r2, long j) {
        return this.A00.postDelayed(r2, j);
    }
}
