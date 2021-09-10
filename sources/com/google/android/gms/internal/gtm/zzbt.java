package com.google.android.gms.internal.gtm;

import com.facebook.ads.AdError;
import com.google.android.gms.common.d;

public final class zzbt {
    public static final String zza;
    public static final String zzb;

    static {
        String replaceAll = String.valueOf(d.a / AdError.NETWORK_ERROR_CODE).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
        zza = replaceAll;
        String valueOf = String.valueOf(replaceAll);
        zzb = valueOf.length() != 0 ? "ma".concat(valueOf) : new String("ma");
    }
}
