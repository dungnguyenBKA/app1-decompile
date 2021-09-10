package defpackage;

import jp.co.cyberagent.android.gpuimage.j;

/* renamed from: rf0  reason: default package */
public class rf0 {
    public static final float[] a = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    public static final float[] b = {1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f};
    public static final float[] c = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    public static final float[] d = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};

    private static float a(float f) {
        return f == 0.0f ? 1.0f : 0.0f;
    }

    public static float[] b(j jVar, boolean z, boolean z2) {
        float[] fArr;
        int ordinal = jVar.ordinal();
        if (ordinal == 1) {
            fArr = b;
        } else if (ordinal == 2) {
            fArr = c;
        } else if (ordinal != 3) {
            fArr = a;
        } else {
            fArr = d;
        }
        if (z) {
            fArr = new float[]{a(fArr[0]), fArr[1], a(fArr[2]), fArr[3], a(fArr[4]), fArr[5], a(fArr[6]), fArr[7]};
        }
        if (!z2) {
            return fArr;
        }
        return new float[]{fArr[0], a(fArr[1]), fArr[2], a(fArr[3]), fArr[4], a(fArr[5]), fArr[6], a(fArr[7])};
    }
}
