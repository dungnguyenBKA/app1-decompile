package com.google.android.gms.internal.ads;

import java.util.Map;

public final class zzcny implements zzcnz {
    private final zzdzv zzghl;
    private final Map<String, zzeqo<zzcnz>> zzgpd;
    private final zzbtz zzgpe;

    public zzcny(Map<String, zzeqo<zzcnz>> map, zzdzv zzdzv, zzbtz zzbtz) {
        this.zzgpd = map;
        this.zzghl = zzdzv;
        this.zzgpe = zzbtz;
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final zzdzw<zzdnl> zzh(zzatq zzatq) {
        this.zzgpe.zzd(zzatq);
        zzdzw<zzdnl> immediateFailedFuture = zzdzk.immediateFailedFuture(new zzcmb(zzdom.NO_FILL));
        for (String str : ((String) zzwr.zzqr().zzd(zzabp.zzczv)).split(",")) {
            zzeqo<zzcnz> zzeqo = this.zzgpd.get(str.trim());
            if (zzeqo != null) {
                immediateFailedFuture = zzdzk.zzb(immediateFailedFuture, zzcmb.class, new zzcnx(zzeqo, zzatq), this.zzghl);
            }
        }
        zzdzk.zza(immediateFailedFuture, new zzcoa(this), zzazp.zzeih);
        return immediateFailedFuture;
    }
}
