package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.facebook.ads.redexgen.X.8C  reason: invalid class name */
public final class AnonymousClass8C {
    public static final AtomicReference<XK> A00 = new AtomicReference<>();

    @Nullable
    public static XK A00() {
        return A00.get();
    }

    public static void A01(XK xk) {
        if (xk != null) {
            A00.compareAndSet(null, xk);
        }
    }
}
