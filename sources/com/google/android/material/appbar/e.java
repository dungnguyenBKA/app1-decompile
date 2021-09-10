package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.internal.i;

/* access modifiers changed from: package-private */
public class e {
    private static final int[] a = {16843848};

    static void a(View view, AttributeSet attributeSet, int i, int i2) {
        Context context = view.getContext();
        TypedArray f = i.f(context, attributeSet, a, i, i2, new int[0]);
        try {
            if (f.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, f.getResourceId(0, 0)));
            }
        } finally {
            f.recycle();
        }
    }
}
