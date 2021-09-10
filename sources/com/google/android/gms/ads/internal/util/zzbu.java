package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;

@TargetApi(17)
public final class zzbu {
    private static zzbu b;
    String a;

    private zzbu() {
    }

    public static zzbu zzzr() {
        if (b == null) {
            b = new zzbu();
        }
        return b;
    }
}
