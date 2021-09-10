package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.vungle.warren.error.VungleException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class c {
    private static Boolean a;
    private static Boolean b;
    private static Boolean c;
    private static Boolean d;
    private static Boolean e;

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 20;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean d() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (!(i >= 29)) {
            return false;
        }
        if (i >= 30 && Build.VERSION.CODENAME.equals("REL")) {
            return true;
        }
        String str = Build.VERSION.CODENAME;
        if (!(str.length() == 1 && str.charAt(0) >= 'R' && str.charAt(0) <= 'Z')) {
            return false;
        }
        Boolean bool = e;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            if (!"google".equals(Build.BRAND) || Build.ID.startsWith("RPP1") || Build.ID.startsWith("RPP2") || Integer.parseInt(Build.VERSION.INCREMENTAL) < 6301457) {
                z = false;
            }
            e = Boolean.valueOf(z);
        } catch (NumberFormatException unused) {
            e = Boolean.TRUE;
        }
        if (!e.booleanValue()) {
            Log.w("PlatformVersion", "Build version must be at least 6301457 to support R in gmscore");
        }
        return e.booleanValue();
    }

    public static boolean e(Context context) {
        if (c == null) {
            PackageManager packageManager = context.getPackageManager();
            c = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services"));
        }
        return c.booleanValue();
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public static boolean f(Context context) {
        return l(context);
    }

    @TargetApi(20)
    public static boolean g(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (a == null) {
            a = Boolean.valueOf(a() && packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return a.booleanValue();
    }

    @TargetApi(VungleException.DB_ERROR)
    public static boolean h(Context context) {
        if (g(context)) {
            if (!(Build.VERSION.SDK_INT >= 24) || (l(context) && !c())) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public static <T> Set<T> i(T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t = tArr[0];
            T t2 = tArr[1];
            Set j = j(2, false);
            j.add(t);
            j.add(t2);
            return Collections.unmodifiableSet(j);
        } else if (length == 3) {
            T t3 = tArr[0];
            T t4 = tArr[1];
            T t5 = tArr[2];
            Set j2 = j(3, false);
            j2.add(t3);
            j2.add(t4);
            j2.add(t5);
            return Collections.unmodifiableSet(j2);
        } else if (length != 4) {
            Set j3 = j(tArr.length, false);
            Collections.addAll(j3, tArr);
            return Collections.unmodifiableSet(j3);
        } else {
            T t6 = tArr[0];
            T t7 = tArr[1];
            T t8 = tArr[2];
            T t9 = tArr[3];
            Set j4 = j(4, false);
            j4.add(t6);
            j4.add(t7);
            j4.add(t8);
            j4.add(t9);
            return Collections.unmodifiableSet(j4);
        }
    }

    private static <T> Set<T> j(int i, boolean z) {
        float f = z ? 0.75f : 1.0f;
        if (i <= (z ? 128 : 256)) {
            return new z(i);
        }
        return new HashSet(i, f);
    }

    public static boolean k(Context context) {
        if (d == null) {
            d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return d.booleanValue();
    }

    @TargetApi(VungleException.SERVER_ERROR)
    private static boolean l(Context context) {
        if (b == null) {
            b = Boolean.valueOf(b() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return b.booleanValue();
    }
}
