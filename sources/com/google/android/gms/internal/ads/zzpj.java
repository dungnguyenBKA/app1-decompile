package com.google.android.gms.internal.ads;

import com.vungle.warren.model.Advertisement;

public final class zzpj {
    public static boolean zzbc(String str) {
        return "audio".equals(zzbe(str));
    }

    public static boolean zzbd(String str) {
        return Advertisement.KEY_VIDEO.equals(zzbe(str));
    }

    private static String zzbe(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            return str.substring(0, indexOf);
        }
        throw new IllegalArgumentException(str.length() != 0 ? "Invalid mime type: ".concat(str) : new String("Invalid mime type: "));
    }
}
