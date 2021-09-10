package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;

/* access modifiers changed from: package-private */
public class b0 {
    private static final h0 a;
    static final Property<View, Float> b = new a(Float.class, "translationAlpha");
    static final Property<View, Rect> c = new b(Rect.class, "clipBounds");

    static class a extends Property<View, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(b0.b(view));
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(View view, Float f) {
            b0.f(view, f.floatValue());
        }
    }

    static class b extends Property<View, Rect> {
        b(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public Rect get(View view) {
            int i = c3.g;
            return view.getClipBounds();
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(View view, Rect rect) {
            int i = c3.g;
            view.setClipBounds(rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            a = new g0();
        } else if (i >= 23) {
            a = new f0();
        } else if (i >= 22) {
            a = new e0();
        } else if (i >= 21) {
            a = new d0();
        } else {
            a = new c0();
        }
    }

    static void a(View view) {
        a.a(view);
    }

    static float b(View view) {
        return a.b(view);
    }

    static void c(View view) {
        a.c(view);
    }

    static void d(View view, Matrix matrix) {
        a.d(view, matrix);
    }

    static void e(View view, int i, int i2, int i3, int i4) {
        a.e(view, i, i2, i3, i4);
    }

    static void f(View view, float f) {
        a.f(view, f);
    }

    static void g(View view, int i) {
        a.g(view, i);
    }

    static void h(View view, Matrix matrix) {
        a.h(view, matrix);
    }

    static void i(View view, Matrix matrix) {
        a.i(view, matrix);
    }
}
