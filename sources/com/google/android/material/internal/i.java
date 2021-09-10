package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.i0;
import com.google.android.material.R$styleable;
import photoeditor.cutout.backgrounderaser.R;

public final class i {
    private static final int[] a = {R.attr.ea};
    private static final int[] b = {R.attr.ed};
    private static final int[] c = {16842752, R.attr.tp};
    private static final int[] d = {R.attr.og};

    private static void a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.K, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.kb, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                d(context, b, "Theme.MaterialComponents");
            }
        }
        d(context, a, "Theme.AppCompat");
    }

    public static void b(Context context) {
        d(context, b, "Theme.MaterialComponents");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0038, code lost:
        if (r0.getResourceId(0, -1) != -1) goto L_0x003a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void c(android.content.Context r4, android.util.AttributeSet r5, int[] r6, int r7, int r8, int... r9) {
        /*
            int[] r0 = com.google.android.material.R$styleable.K
            android.content.res.TypedArray r0 = r4.obtainStyledAttributes(r5, r0, r7, r8)
            r1 = 2
            r2 = 0
            boolean r1 = r0.getBoolean(r1, r2)
            if (r1 != 0) goto L_0x0012
            r0.recycle()
            return
        L_0x0012:
            r1 = -1
            if (r9 == 0) goto L_0x0034
            int r3 = r9.length
            if (r3 != 0) goto L_0x0019
            goto L_0x0034
        L_0x0019:
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r6, r7, r8)
            int r5 = r9.length
            r6 = 0
        L_0x001f:
            if (r6 >= r5) goto L_0x0030
            r7 = r9[r6]
            int r7 = r4.getResourceId(r7, r1)
            if (r7 != r1) goto L_0x002d
            r4.recycle()
            goto L_0x003b
        L_0x002d:
            int r6 = r6 + 1
            goto L_0x001f
        L_0x0030:
            r4.recycle()
            goto L_0x003a
        L_0x0034:
            int r4 = r0.getResourceId(r2, r1)
            if (r4 == r1) goto L_0x003b
        L_0x003a:
            r2 = 1
        L_0x003b:
            r0.recycle()
            if (r2 == 0) goto L_0x0041
            return
        L_0x0041:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."
            r4.<init>(r5)
            goto L_0x004a
        L_0x0049:
            throw r4
        L_0x004a:
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.internal.i.c(android.content.Context, android.util.AttributeSet, int[], int, int, int[]):void");
    }

    private static void d(Context context, int[] iArr, String str) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= iArr.length) {
                obtainStyledAttributes.recycle();
                z = true;
                break;
            } else if (!obtainStyledAttributes.hasValue(i)) {
                obtainStyledAttributes.recycle();
                break;
            } else {
                i++;
            }
        }
        if (!z) {
            throw new IllegalArgumentException(ic.j("The style on this component requires your app theme to be ", str, " (or a descendant)."));
        }
    }

    public static Context e(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        if (resourceId == 0) {
            return context;
        }
        if ((context instanceof m) && ((m) context).a() == resourceId) {
            return context;
        }
        m mVar = new m(context, resourceId);
        TypedArray obtainStyledAttributes2 = mVar.obtainStyledAttributes(attributeSet, c);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
            resourceId2 = resourceId3;
        }
        return resourceId2 != 0 ? new m(mVar, resourceId2) : mVar;
    }

    public static TypedArray f(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        a(context, attributeSet, i, i2);
        c(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    public static i0 g(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        a(context, attributeSet, i, i2);
        c(context, attributeSet, iArr, i, i2, iArr2);
        return i0.u(context, attributeSet, iArr, i, i2);
    }
}
