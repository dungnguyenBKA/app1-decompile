package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.98  reason: invalid class name */
public final class AnonymousClass98 {
    public static AnonymousClass98 A00 = new AnonymousClass98();

    public static AnonymousClass98 A00() {
        return A00;
    }

    @SuppressLint({"InstanceMethodCanBeStatic"})
    public final AnonymousClass97 A01(AnonymousClass8D r3, boolean z) {
        return new C0953Xv(r3, z, new C02655p());
    }

    @SuppressLint({"CatchGeneralException"})
    public final Map<String, String> A02(AnonymousClass8D r3) {
        try {
            return A01(r3, false).A6N();
        } catch (Throwable th) {
            r3.A04().A3T(th);
            return AnonymousClass94.A01(r3);
        }
    }
}
