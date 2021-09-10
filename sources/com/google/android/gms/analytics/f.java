package com.google.android.gms.analytics;

import com.google.android.gms.internal.gtm.zzfa;

public final class f {
    public static String a(int i) {
        return g("cd", i);
    }

    public static String b(int i) {
        return g("cm", i);
    }

    public static String c(int i) {
        return g("il", i);
    }

    public static String d(int i) {
        return g("pi", i);
    }

    public static String e(int i) {
        return g("pr", i);
    }

    public static String f(int i) {
        return g("promo", i);
    }

    private static String g(String str, int i) {
        if (i <= 0) {
            zzfa.zzb("index out of range for prefix", str);
            return "";
        }
        StringBuilder sb = new StringBuilder(str.length() + 11);
        sb.append(str);
        sb.append(i);
        return sb.toString();
    }
}
