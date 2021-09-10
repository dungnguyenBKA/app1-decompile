package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdkr {
    public static zzdkn<zzbkx, zzblg> zza(Context context, zzdov zzdov, zzdpq zzdpq) {
        return zzc(context, zzdov, zzdpq);
    }

    public static zzdkn<zzblk, zzblq> zzb(Context context, zzdov zzdov, zzdpq zzdpq) {
        return zzc(context, zzdov, zzdpq);
    }

    private static <AppOpenAdRequestComponent extends zzbqv<AppOpenAd>, AppOpenAd extends zzbnt> zzdkn<AppOpenAdRequestComponent, AppOpenAd> zzc(Context context, zzdov zzdov, zzdpq zzdpq) {
        if (((Integer) zzwr.zzqr().zzd(zzabp.zzcys)).intValue() <= 0) {
            return new zzdkf();
        }
        zzdpp zza = zzdpq.zza(zzdpi.AppOpen, context, zzdov, new zzdjv(new zzdjm()));
        zzdke zzdke = new zzdke(new zzdkf());
        zzdpc zzdpc = zza.zzhhi;
        zzdzv zzdzv = zzazp.zzeic;
        return new zzdjr(zzdke, new zzdjw(zzdpc, zzdzv), zza.zzhol, zzdzv);
    }
}
