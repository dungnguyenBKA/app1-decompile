package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.bj  reason: case insensitive filesystem */
public final class C1114bj implements I0 {
    @Override // com.facebook.ads.redexgen.X.I0
    public final IA A4J(Looper looper, @Nullable Handler.Callback callback) {
        return new C1115bk(new Handler(looper, callback));
    }

    @Override // com.facebook.ads.redexgen.X.I0
    public final long A56() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.facebook.ads.redexgen.X.I0
    public final long AEU() {
        return SystemClock.uptimeMillis();
    }
}
