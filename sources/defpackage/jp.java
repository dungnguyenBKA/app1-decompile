package defpackage;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;

/* renamed from: jp  reason: default package */
public final class jp {
    private static Object a;
    private static Method b;

    static {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
                Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
                Class cls = (Class) declaredMethod.invoke(null, "dalvik.system.VMRuntime");
                b = (Method) declaredMethod2.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class});
                a = ((Method) declaredMethod2.invoke(cls, "getRuntime", null)).invoke(null, new Object[0]);
            } catch (Throwable th) {
                Log.w("BootstrapClass", "reflect bootstrap failed:", th);
            }
        }
    }

    public static boolean a() {
        Method method;
        String[] strArr = {"L"};
        Object obj = a;
        if (obj == null || (method = b) == null) {
            return false;
        }
        try {
            method.invoke(obj, strArr);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
