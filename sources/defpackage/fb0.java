package defpackage;

import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;

/* renamed from: fb0  reason: default package */
public class fb0 extends za0 {
    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public int[] f(Activity activity) {
        String str;
        int i = 0;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str = (String) cls.getMethod("get", String.class).invoke(cls.newInstance(), "ro.oppo.screen.heteromorphism");
        } catch (Exception e) {
            e.getMessage();
            str = "";
        }
        int[] iArr = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] split = str.replace("[", "").replace("]", "").split(":");
                if (split.length == 2) {
                    String[] split2 = split[0].split(",");
                    String[] split3 = split[1].split(",");
                    int[] iArr2 = {Integer.parseInt(split2[0]), Integer.parseInt(split2[1])};
                    int[] iArr3 = {Integer.parseInt(split3[0]), Integer.parseInt(split3[1])};
                    iArr = new int[]{iArr3[0] - iArr2[0], iArr3[1] - iArr2[1]};
                }
            } catch (Exception e2) {
                String str2 = Build.MANUFACTURER;
                e2.getMessage();
            }
        }
        if (iArr == null) {
            iArr = new int[2];
            iArr[0] = 324;
            int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
            if (identifier > 0) {
                i = activity.getResources().getDimensionPixelSize(identifier);
            }
            iArr[1] = i;
        }
        return iArr;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public boolean h(Activity activity) {
        return activity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }
}
