package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;

class f0 extends e0 {
    private static boolean k = true;

    f0() {
    }

    @Override // androidx.transition.h0
    @SuppressLint({"NewApi"})
    public void g(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.g(view, i);
        } else if (k) {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError unused) {
                k = false;
            }
        }
    }
}
