package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;

class e0 extends d0 {
    private static boolean j = true;

    e0() {
    }

    @Override // androidx.transition.h0
    @SuppressLint({"NewApi"})
    public void e(View view, int i, int i2, int i3, int i4) {
        if (j) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                j = false;
            }
        }
    }
}
