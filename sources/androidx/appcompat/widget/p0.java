package androidx.appcompat.widget;

import android.graphics.Rect;
import android.view.View;
import java.lang.reflect.Method;

public class p0 {
    private static Method a;
    public static final /* synthetic */ int b = 0;

    static {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            a = declaredMethod;
            if (!declaredMethod.isAccessible()) {
                a.setAccessible(true);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public static void a(View view, Rect rect, Rect rect2) {
        Method method = a;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean b(View view) {
        int i = c3.g;
        return view.getLayoutDirection() == 1;
    }
}
