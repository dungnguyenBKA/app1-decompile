package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;

/* renamed from: mz  reason: default package */
public class mz {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final b40 g;

    public mz(String str, String str2, String str3, String str4, String str5, String str6, b40 b40) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = b40;
    }

    public static mz a(Context context, t00 t00, String str, String str2, b40 b40) {
        String packageName = context.getPackageName();
        String d2 = t00.d();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String num = Integer.toString(packageInfo.versionCode);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new mz(str, str2, d2, packageName, num, str3, b40);
    }
}
