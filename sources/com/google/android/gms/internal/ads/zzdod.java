package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;

public final class zzdod {
    public static void zza(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        zzazk.zzew(sb.toString());
        zzd.zza(str, th);
        if (i != 3) {
            zzr.zzkv().zzb(th, str);
        }
    }

    public static void zze(Context context, boolean z) {
        if (z) {
            zzazk.zzew("This request is sent from a test device.");
            return;
        }
        zzwr.zzqn();
        String zzbm = zzaza.zzbm(context);
        StringBuilder sb = new StringBuilder(String.valueOf(zzbm).length() + 101);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(zzbm);
        sb.append("\") to get test ads on this device.");
        zzazk.zzew(sb.toString());
    }
}
