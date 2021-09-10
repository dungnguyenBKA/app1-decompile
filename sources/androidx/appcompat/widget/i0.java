package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;

public class i0 {
    private final Context a;
    private final TypedArray b;
    private TypedValue c;

    private i0(Context context, TypedArray typedArray) {
        this.a = context;
        this.b = typedArray;
    }

    public static i0 s(Context context, int i, int[] iArr) {
        return new i0(context, context.obtainStyledAttributes(i, iArr));
    }

    public static i0 t(Context context, AttributeSet attributeSet, int[] iArr) {
        return new i0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static i0 u(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new i0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public boolean a(int i, boolean z) {
        return this.b.getBoolean(i, z);
    }

    public int b(int i, int i2) {
        return this.b.getColor(i, i2);
    }

    public ColorStateList c(int i) {
        int resourceId;
        ColorStateList a2;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0 || (a2 = d.a(this.a, resourceId)) == null) {
            return this.b.getColorStateList(i);
        }
        return a2;
    }

    public float d(int i, float f) {
        return this.b.getDimension(i, f);
    }

    public int e(int i, int i2) {
        return this.b.getDimensionPixelOffset(i, i2);
    }

    public int f(int i, int i2) {
        return this.b.getDimensionPixelSize(i, i2);
    }

    public Drawable g(int i) {
        int resourceId;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return this.b.getDrawable(i);
        }
        return d.b(this.a, resourceId);
    }

    public Drawable h(int i) {
        int resourceId;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return e.b().d(this.a, resourceId, true);
    }

    public float i(int i, float f) {
        return this.b.getFloat(i, f);
    }

    public Typeface j(int i, int i2, j1 j1Var) {
        int resourceId = this.b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return c1.d(this.a, resourceId, this.c, i2, j1Var);
    }

    public int k(int i, int i2) {
        return this.b.getInt(i, i2);
    }

    public int l(int i, int i2) {
        return this.b.getInteger(i, i2);
    }

    public int m(int i, int i2) {
        return this.b.getLayoutDimension(i, i2);
    }

    public int n(int i, int i2) {
        return this.b.getResourceId(i, i2);
    }

    public String o(int i) {
        return this.b.getString(i);
    }

    public CharSequence p(int i) {
        return this.b.getText(i);
    }

    public CharSequence[] q(int i) {
        return this.b.getTextArray(i);
    }

    public boolean r(int i) {
        return this.b.hasValue(i);
    }

    public void v() {
        this.b.recycle();
    }
}
