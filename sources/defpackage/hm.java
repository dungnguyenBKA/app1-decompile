package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.a;
import androidx.fragment.app.Fragment;

/* renamed from: hm  reason: default package */
public class hm {
    public static final String[] a = {"android.permission.WRITE_EXTERNAL_STORAGE"};

    public static boolean a(Context context) {
        if ((Build.VERSION.SDK_INT >= 23) && a.a(context, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            return false;
        }
        return true;
    }

    public static boolean b(Activity activity, String str) {
        return !d(activity, str);
    }

    public static boolean c(AppCompatActivity appCompatActivity) {
        em.n("PermissionUtils", "Request storage permission.");
        if (!(Build.VERSION.SDK_INT >= 23) || a.a(appCompatActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            em.n("PermissionUtils", "Storage permission has already been granted.");
            return true;
        }
        em.n("PermissionUtils", "Storage permission has NOT been granted. Requesting permission.");
        if (d(appCompatActivity, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            em.n("PermissionUtils", "storage permission rationale to provide additional context.");
        }
        androidx.core.app.a.e(appCompatActivity, a, 2);
        return false;
    }

    private static boolean d(Object obj, String str) {
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            int i = androidx.core.app.a.c;
            if (Build.VERSION.SDK_INT >= 23) {
                return activity.shouldShowRequestPermissionRationale(str);
            }
            return false;
        } else if (obj instanceof Fragment) {
            return ((Fragment) obj).i1(str);
        } else {
            if (!(obj instanceof android.app.Fragment)) {
                throw new IllegalArgumentException("Object was neither an Activity nor a Fragment.");
            } else if (Build.VERSION.SDK_INT >= 23) {
                return ((android.app.Fragment) obj).shouldShowRequestPermissionRationale(str);
            } else {
                throw new IllegalArgumentException("Target SDK needs to be greater than 23 if caller is android.app.Fragment");
            }
        }
    }

    public static boolean e(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            em.h("PermissionUtils", "verifyPermissions-failed: grantResults == null || grantResults.length <= 0.");
            return false;
        }
        for (int i : iArr) {
            if (i != 0) {
                em.h("PermissionUtils", "verifyPermissions-failed: result != PackageManager.PERMISSION_GRANTED.");
                return false;
            }
        }
        em.h("PermissionUtils", "verifyPermissions-success.");
        return true;
    }
}
