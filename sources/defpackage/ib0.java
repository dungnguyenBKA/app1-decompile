package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.Window;

/* renamed from: ib0  reason: default package */
public class ib0 extends za0 {
    @TargetApi(17)
    private boolean k(Activity activity) {
        return Settings.Global.getInt(activity.getContentResolver(), "force_black", 0) == 0;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public void c(Activity activity) {
        if (k(activity)) {
            try {
                Window.class.getMethod("addExtraFlags", Integer.TYPE).invoke(activity.getWindow(), 1792);
            } catch (Exception unused) {
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
    public void e(Activity activity) {
        try {
            Window.class.getMethod("clearExtraFlags ", Integer.TYPE).invoke(activity.getWindow(), 1792);
        } catch (Exception unused) {
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public int[] f(Activity activity) {
        int[] iArr = {0, 0};
        try {
            int identifier = activity.getResources().getIdentifier("notch_width", "dimen", "android");
            if (identifier > 0) {
                iArr[0] = activity.getResources().getDimensionPixelSize(identifier);
            }
            int identifier2 = activity.getResources().getIdentifier("notch_height", "dimen", "android");
            if (identifier2 > 0) {
                iArr[1] = activity.getResources().getDimensionPixelSize(identifier2);
            }
        } catch (Exception unused) {
        }
        if (iArr[0] == 0 && iArr[1] == 0) {
            String str = Build.MODEL;
            if (TextUtils.equals(str, "MI 8")) {
                iArr[0] = 560;
                iArr[1] = 89;
            } else if (TextUtils.equals(str, "MI 8 SE")) {
                iArr[0] = 540;
                iArr[1] = 85;
            } else if (TextUtils.equals(str, "MI8 Explorer Edition")) {
                iArr[0] = 560;
                iArr[1] = 89;
            } else if (TextUtils.equals(str, "Redmi 6 Pro")) {
                iArr[0] = 352;
                iArr[1] = 89;
            }
        }
        return iArr;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x007c A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.za0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean h(android.app.Activity r8) {
        /*
        // Method dump skipped, instructions count: 126
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ib0.h(android.app.Activity):boolean");
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public boolean i(Activity activity) {
        return super.i(activity) && k(activity);
    }
}
