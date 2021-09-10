package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.provider.Settings;
import android.view.WindowManager;
import com.vungle.warren.error.VungleException;
import java.lang.reflect.InvocationTargetException;

/* renamed from: eb0  reason: default package */
public class eb0 extends za0 {
    private boolean k(Activity activity) {
        return Settings.Secure.getInt(activity.getContentResolver(), "display_notch_status", 0) == 0;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    public void c(Activity activity) {
        if (k(activity)) {
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            try {
                Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
                Object newInstance = cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes);
                cls.getMethod("addHwFlags", Integer.TYPE).invoke(newInstance, 65536);
            } catch (ClassNotFoundException | Exception | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public void d(Activity activity) {
        if (k(activity)) {
            super.d(activity);
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    public void e(Activity activity) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            Object newInstance = cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes);
            cls.getMethod("clearHwFlags ", Integer.TYPE).invoke(newInstance, 65536);
        } catch (ClassNotFoundException | Exception | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public int[] f(Activity activity) {
        int[] iArr = {0, 0};
        try {
            Class<?> loadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return (int[]) loadClass.getMethod("getNotchSize", new Class[0]).invoke(loadClass, new Object[0]);
        } catch (ClassNotFoundException | Exception | NoSuchMethodException unused) {
            return iArr;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0057  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0064 A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.za0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean h(android.app.Activity r6) {
        /*
        // Method dump skipped, instructions count: 102
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eb0.h(android.app.Activity):boolean");
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public boolean i(Activity activity) {
        return super.i(activity) && k(activity);
    }
}
