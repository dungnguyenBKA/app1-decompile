package com.zjsoft.zjad;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;

public class a {
    public static final String a = b.class.getName();
    public static final String b = c.class.getName();

    public static boolean a(Context context, String str) {
        PackageInfo packageInfo = null;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 8192);
        } catch (Error | Exception unused) {
        }
        if (packageInfo != null) {
            return true;
        }
        Log.e("AppUtils", "No:" + str);
        return false;
    }
}
