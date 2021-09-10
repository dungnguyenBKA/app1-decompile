package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;

/* renamed from: dy  reason: default package */
public class dy {
    public static final boolean a = (Build.VERSION.SDK_INT >= 21);
    private static final int[] b = {16842919};
    private static final int[] c = {16843623, 16842908};
    private static final int[] d = {16842908};
    private static final int[] e = {16843623};
    private static final int[] f = {16842913, 16842919};
    private static final int[] g = {16842913, 16843623, 16842908};
    private static final int[] h = {16842913, 16842908};
    private static final int[] i = {16842913, 16843623};
    private static final int[] j = {16842913};
    private static final int[] k = {16842910, 16842919};
    static final String l = dy.class.getSimpleName();

    private dy() {
    }

    public static ColorStateList a(ColorStateList colorStateList) {
        if (a) {
            return new ColorStateList(new int[][]{j, StateSet.NOTHING}, new int[]{b(colorStateList, f), b(colorStateList, b)});
        }
        int[] iArr = f;
        int[] iArr2 = g;
        int[] iArr3 = h;
        int[] iArr4 = i;
        int[] iArr5 = b;
        int[] iArr6 = c;
        int[] iArr7 = d;
        int[] iArr8 = e;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, j, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{b(colorStateList, iArr), b(colorStateList, iArr2), b(colorStateList, iArr3), b(colorStateList, iArr4), 0, b(colorStateList, iArr5), b(colorStateList, iArr6), b(colorStateList, iArr7), b(colorStateList, iArr8), 0});
    }

    private static int b(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return a ? k1.d(colorForState, Math.min(Color.alpha(colorForState) * 2, 255)) : colorForState;
    }

    public static ColorStateList c(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 22 && i2 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(k, 0)) != 0) {
            Log.w(l, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }

    public static boolean d(int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z = true;
            } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
