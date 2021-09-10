package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

class d0 extends c0 {
    private static boolean g = true;
    private static boolean h = true;
    private static boolean i = true;

    d0() {
    }

    @Override // androidx.transition.h0
    @SuppressLint({"NewApi"})
    public void d(View view, Matrix matrix) {
        if (g) {
            try {
                view.setAnimationMatrix(matrix);
            } catch (NoSuchMethodError unused) {
                g = false;
            }
        }
    }

    @Override // androidx.transition.h0
    @SuppressLint({"NewApi"})
    public void h(View view, Matrix matrix) {
        if (h) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                h = false;
            }
        }
    }

    @Override // androidx.transition.h0
    @SuppressLint({"NewApi"})
    public void i(View view, Matrix matrix) {
        if (i) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                i = false;
            }
        }
    }
}
