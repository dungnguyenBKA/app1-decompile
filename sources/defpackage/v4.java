package defpackage;

import android.animation.TypeEvaluator;

/* renamed from: v4  reason: default package */
public class v4 implements TypeEvaluator {
    private static final v4 a = new v4();

    public static v4 a() {
        return a;
    }

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f2 = ((float) ((intValue >> 24) & 255)) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float pow = (float) Math.pow((double) (((float) ((intValue >> 16) & 255)) / 255.0f), 2.2d);
        float pow2 = (float) Math.pow((double) (((float) ((intValue >> 8) & 255)) / 255.0f), 2.2d);
        float pow3 = (float) Math.pow((double) (((float) (intValue & 255)) / 255.0f), 2.2d);
        float pow4 = (float) Math.pow((double) (((float) ((intValue2 >> 16) & 255)) / 255.0f), 2.2d);
        float a2 = ic.a(((float) ((intValue2 >> 24) & 255)) / 255.0f, f2, f, f2);
        float a3 = ic.a(pow4, pow, f, pow);
        float a4 = ic.a((float) Math.pow((double) (((float) ((intValue2 >> 8) & 255)) / 255.0f), 2.2d), pow2, f, pow2);
        float a5 = ic.a((float) Math.pow((double) (((float) (intValue2 & 255)) / 255.0f), 2.2d), pow3, f, pow3);
        int round = Math.round(((float) Math.pow((double) a3, 0.45454545454545453d)) * 255.0f) << 16;
        return Integer.valueOf(Math.round(((float) Math.pow((double) a5, 0.45454545454545453d)) * 255.0f) | round | (Math.round(a2 * 255.0f) << 24) | (Math.round(((float) Math.pow((double) a4, 0.45454545454545453d)) * 255.0f) << 8));
    }
}
