package defpackage;

import android.app.Activity;
import java.lang.reflect.Method;

/* renamed from: hb0  reason: default package */
public class hb0 extends za0 {
    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public int[] f(Activity activity) {
        return new int[]{(int) ((activity.getResources().getDisplayMetrics().density * 100.0f) + 0.5f), (int) ((activity.getResources().getDisplayMetrics().density * 27.0f) + 0.5f)};
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public boolean h(Activity activity) {
        try {
            Class<?> loadClass = activity.getClassLoader().loadClass("android.util.FtFeature");
            Method method = loadClass.getMethod("isFeatureSupport", Integer.TYPE);
            return ((Boolean) method.invoke(loadClass, 8)).booleanValue() | ((Boolean) method.invoke(loadClass, 32)).booleanValue();
        } catch (ClassNotFoundException | Exception | NoSuchMethodException unused) {
            return false;
        }
    }
}
