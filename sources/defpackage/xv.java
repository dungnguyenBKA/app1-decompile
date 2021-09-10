package defpackage;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.c;
import com.vungle.warren.error.VungleException;

/* renamed from: xv  reason: default package */
public class xv {
    private final Context a;

    public xv(Context context) {
        this.a = context;
    }

    public int a(String str) {
        return this.a.checkCallingOrSelfPermission(str);
    }

    public int b(String str, String str2) {
        return this.a.getPackageManager().checkPermission(str, str2);
    }

    public ApplicationInfo c(String str, int i) {
        return this.a.getPackageManager().getApplicationInfo(str, i);
    }

    public CharSequence d(String str) {
        return this.a.getPackageManager().getApplicationLabel(this.a.getPackageManager().getApplicationInfo(str, 0));
    }

    public PackageInfo e(String str, int i) {
        return this.a.getPackageManager().getPackageInfo(str, i);
    }

    public boolean f() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return wv.a(this.a);
        }
        if (!c.c() || (nameForUid = this.a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.a.getPackageManager().isInstantApp(nameForUid);
    }

    public final PackageInfo g(String str) {
        return this.a.getPackageManager().getPackageInfo(str, 64);
    }

    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    public final boolean h(int i, String str) {
        try {
            ((AppOpsManager) this.a.getSystemService("appops")).checkPackage(i, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public final String[] i(int i) {
        return this.a.getPackageManager().getPackagesForUid(i);
    }
}
