package defpackage;

import android.os.Build;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* renamed from: r3  reason: default package */
public final class r3 {
    public static Interpolator a(float f, float f2, float f3, float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new PathInterpolator(f, f2, f3, f4);
        }
        return new q3(f, f2, f3, f4);
    }
}
