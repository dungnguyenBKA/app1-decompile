package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzbej {
    public static zzdzw<zzbeb> zza(Context context, zzazn zzazn, String str, zzei zzei, zzb zzb) {
        return zzdzk.zzb(zzdzk.zzag(null), new zzbem(context, zzei, zzazn, zzb, str), zzazp.zzeig);
    }

    static final /* synthetic */ zzbeb zzb(Context context, zzbft zzbft, String str, boolean z, boolean z2, zzei zzei, zzacq zzacq, zzazn zzazn, zzacc zzacc, zzm zzm, zzb zzb, zztu zztu, zzdmw zzdmw, zzdnb zzdnb) {
        try {
            TrafficStats.setThreadStatsTag(264);
            zzbeq zzbeq = new zzbeq(zzber.zzc(context, zzbft, str, z, z2, zzei, zzacq, zzazn, zzacc, zzm, zzb, zztu, zzdmw, zzdnb));
            zzbeq.setWebViewClient(zzr.zzkt().zza(zzbeq, zztu, z2));
            zzbeq.setWebChromeClient(new zzbdt(zzbeq));
            return zzbeq;
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    public static zzbeb zza(Context context, zzbft zzbft, String str, boolean z, boolean z2, zzei zzei, zzacq zzacq, zzazn zzazn, zzacc zzacc, zzm zzm, zzb zzb, zztu zztu, zzdmw zzdmw, zzdnb zzdnb) {
        zzabp.initialize(context);
        try {
            return (zzbeb) zzbr.zza(new zzbel(context, zzbft, str, z, z2, zzei, zzacq, zzazn, null, zzm, zzb, zztu, zzdmw, zzdnb));
        } catch (Throwable th) {
            throw new zzben("Webview initialization failed.", th);
        }
    }
}
