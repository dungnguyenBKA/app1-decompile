package com.google.android.gms.internal.ads;

public final class zzaww {
    public static boolean isEnabled() {
        return zzado.zzdek.get().booleanValue();
    }

    public static void zzdy(String str) {
        if (zzado.zzdek.get().booleanValue()) {
            zzazk.zzdy(str);
        }
    }
}
