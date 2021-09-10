package com.google.android.gms.internal.gtm;

import android.annotation.SuppressLint;
import android.util.Log;
import com.google.android.gms.analytics.b;

@Deprecated
public final class zzfa {
    private static volatile b zza = new zzcu();

    public static b zza() {
        return zza;
    }

    @SuppressLint({"LogTagMismatch"})
    public static void zzb(String str, Object obj) {
        String str2;
        zzfb zza2 = zzfb.zza();
        if (zza2 != null) {
            zza2.zzK(str, obj);
        } else if (zzf(3)) {
            if (obj != null) {
                String str3 = (String) obj;
                str2 = ic.n(new StringBuilder(str.length() + 1 + str3.length()), str, ":", str3);
            } else {
                str2 = str;
            }
            Log.e(zzeu.zzc.zzb(), str2);
        }
        b bVar = zza;
        if (bVar != null) {
            bVar.error(str);
        }
    }

    public static void zzc(b bVar) {
        zza = bVar;
    }

    @SuppressLint({"LogTagMismatch"})
    public static void zzd(String str) {
        zzfb zza2 = zzfb.zza();
        if (zza2 != null) {
            zza2.zzO(str);
        } else if (zzf(0)) {
            zzeu.zzc.zzb();
        }
        b bVar = zza;
        if (bVar != null) {
            bVar.verbose(str);
        }
    }

    @SuppressLint({"LogTagMismatch"})
    public static void zze(String str) {
        zzfb zza2 = zzfb.zza();
        if (zza2 != null) {
            zza2.zzR(str);
        } else if (zzf(2)) {
            Log.w(zzeu.zzc.zzb(), str);
        }
        b bVar = zza;
        if (bVar != null) {
            bVar.warn(str);
        }
    }

    public static boolean zzf(int i) {
        return zza != null && zza.getLogLevel() <= i;
    }
}
