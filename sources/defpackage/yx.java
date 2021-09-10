package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.i0;

/* renamed from: yx  reason: default package */
public class yx {
    public static ColorStateList a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList a;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (a = d.a(context, resourceId)) == null) {
            return typedArray.getColorStateList(i);
        }
        return a;
    }

    public static ColorStateList b(Context context, i0 i0Var, int i) {
        int n;
        ColorStateList a;
        if (!i0Var.r(i) || (n = i0Var.n(i, 0)) == 0 || (a = d.a(context, n)) == null) {
            return i0Var.c(i);
        }
        return a;
    }

    public static Drawable c(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable b;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (b = d.b(context, resourceId)) == null) {
            return typedArray.getDrawable(i);
        }
        return b;
    }
}
