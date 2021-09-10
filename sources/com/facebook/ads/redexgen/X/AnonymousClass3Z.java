package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.widget.EdgeEffect;

/* renamed from: com.facebook.ads.redexgen.X.3Z  reason: invalid class name */
public final class AnonymousClass3Z {
    public static final AnonymousClass3Y A00;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            A00 = new T6();
        } else {
            A00 = new AnonymousClass3Y();
        }
    }

    public static void A00(EdgeEffect edgeEffect, float f, float f2) {
        A00.A00(edgeEffect, f, f2);
    }
}
