package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;

/* renamed from: com.facebook.ads.redexgen.X.3I  reason: invalid class name */
public final class AnonymousClass3I {
    public static final AnonymousClass3H A00;

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            A00 = new C0476Ex();
        } else if (Build.VERSION.SDK_INT >= 16) {
            A00 = new T0();
        } else {
            A00 = new AnonymousClass3H();
        }
    }

    public static int A00(AccessibilityEvent accessibilityEvent) {
        return A00.A00(accessibilityEvent);
    }

    public static void A01(AccessibilityEvent accessibilityEvent, int i) {
        A00.A01(accessibilityEvent, i);
    }
}
