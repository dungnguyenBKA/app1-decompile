package androidx.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class h implements f {
    private static Class<?> c;
    private static boolean d;
    private static Method e;
    private static boolean f;
    private static Method g;
    private static boolean h;
    private final View b;

    private h(View view) {
        this.b = view;
    }

    static f b(View view, ViewGroup viewGroup, Matrix matrix) {
        if (!f) {
            try {
                c();
                Method declaredMethod = c.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
                e = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("GhostViewApi21", "Failed to retrieve addGhost method", e2);
            }
            f = true;
        }
        Method method = e;
        if (method != null) {
            try {
                return new h((View) method.invoke(null, view, viewGroup, matrix));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
        return null;
    }

    private static void c() {
        if (!d) {
            try {
                c = Class.forName("android.view.GhostView");
            } catch (ClassNotFoundException e2) {
                Log.i("GhostViewApi21", "Failed to retrieve GhostView class", e2);
            }
            d = true;
        }
    }

    static void d(View view) {
        if (!h) {
            try {
                c();
                Method declaredMethod = c.getDeclaredMethod("removeGhost", View.class);
                g = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("GhostViewApi21", "Failed to retrieve removeGhost method", e2);
            }
            h = true;
        }
        Method method = g;
        if (method != null) {
            try {
                method.invoke(null, view);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }

    @Override // androidx.transition.f
    public void a(ViewGroup viewGroup, View view) {
    }

    @Override // androidx.transition.f
    public void setVisibility(int i) {
        this.b.setVisibility(i);
    }
}
