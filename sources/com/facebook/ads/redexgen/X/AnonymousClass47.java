package com.facebook.ads.redexgen.X;

import android.view.animation.Interpolator;

/* renamed from: com.facebook.ads.redexgen.X.47  reason: invalid class name */
public class AnonymousClass47 implements Interpolator {
    public final float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }
}
