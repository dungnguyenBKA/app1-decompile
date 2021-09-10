package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;

@Deprecated
public final class zzabx {
    public static boolean zza(zzacc zzacc, zzaca zzaca, String... strArr) {
        if (zzacc == null || zzaca == null || !zzacc.zzdbd) {
            return false;
        }
        return zzacc.zza(zzaca, zzr.zzky().b(), strArr);
    }

    public static zzaca zzb(zzacc zzacc) {
        if (zzacc == null) {
            return null;
        }
        return zzacc.zzex(zzr.zzky().b());
    }
}
