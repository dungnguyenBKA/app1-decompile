package com.vungle.warren.model;

import java.util.Objects;

public class JsonUtil {
    public static boolean getAsBoolean(p60 p60, String str, boolean z) {
        return hasNonNull(p60, str) ? p60.e().n(str).a() : z;
    }

    public static s60 getAsObject(p60 p60, String str) {
        if (hasNonNull(p60, str)) {
            return p60.e().n(str).e();
        }
        return null;
    }

    public static String getAsString(p60 p60, String str, String str2) {
        return hasNonNull(p60, str) ? p60.e().n(str).h() : str2;
    }

    public static boolean hasNonNull(p60 p60, String str) {
        if (p60 == null || (p60 instanceof r60) || !(p60 instanceof s60)) {
            return false;
        }
        s60 e = p60.e();
        if (!e.q(str) || e.n(str) == null) {
            return false;
        }
        p60 n = e.n(str);
        Objects.requireNonNull(n);
        if (!(n instanceof r60)) {
            return true;
        }
        return false;
    }
}
