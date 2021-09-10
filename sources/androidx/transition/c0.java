package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;

class c0 extends h0 {
    private static boolean f = true;

    c0() {
    }

    @Override // androidx.transition.h0
    public void a(View view) {
    }

    @Override // androidx.transition.h0
    @SuppressLint({"NewApi"})
    public float b(View view) {
        if (f) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f = false;
            }
        }
        return view.getAlpha();
    }

    @Override // androidx.transition.h0
    public void c(View view) {
    }

    @Override // androidx.transition.h0
    @SuppressLint({"NewApi"})
    public void f(View view, float f2) {
        if (f) {
            try {
                view.setTransitionAlpha(f2);
                return;
            } catch (NoSuchMethodError unused) {
                f = false;
            }
        }
        view.setAlpha(f2);
    }
}
