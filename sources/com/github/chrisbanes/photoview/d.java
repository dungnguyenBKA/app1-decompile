package com.github.chrisbanes.photoview;

import android.widget.ImageView;

/* access modifiers changed from: package-private */
public /* synthetic */ class d {
    static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[ImageView.ScaleType.values().length];
        a = iArr;
        try {
            iArr[ImageView.ScaleType.MATRIX.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
    }
}
