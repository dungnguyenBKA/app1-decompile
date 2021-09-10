package defpackage;

import android.view.animation.Interpolator;

/* access modifiers changed from: package-private */
/* renamed from: z3  reason: default package */
public abstract class z3 implements Interpolator {
    private final float[] a;
    private final float b;

    protected z3(float[] fArr) {
        this.a = fArr;
        this.b = 1.0f / ((float) (fArr.length - 1));
    }

    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.a;
        int min = Math.min((int) (((float) (fArr.length - 1)) * f), fArr.length - 2);
        float f2 = this.b;
        float f3 = (f - (((float) min) * f2)) / f2;
        float[] fArr2 = this.a;
        return ic.a(fArr2[min + 1], fArr2[min], f3, fArr2[min]);
    }
}
