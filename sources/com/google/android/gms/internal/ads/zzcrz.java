package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcrz implements zzcrj<zzblg> {
    private final Context context;
    private final Executor zzfsj;
    private final zzchq zzggk;
    private final zzbkx zzgti;

    public zzcrz(zzbkx zzbkx, Context context2, Executor executor, zzchq zzchq) {
        this.context = context2;
        this.zzgti = zzbkx;
        this.zzfsj = executor;
        this.zzggk = zzchq;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        zzdnd zzdnd = zzdmw.zzhjg;
        return (zzdnd == null || zzdnd.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblg> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        return zzdzk.zzb(zzdzk.zzag(null), new zzcsc(this, zzdnl, zzdmw), this.zzfsj);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdnl zzdnl, zzdmw zzdmw, Object obj) {
        zzvs zzb = zzdnu.zzb(this.context, zzdmw.zzhji);
        zzbeb zza = this.zzggk.zza(zzb, zzdmw, zzdnl.zzhks.zzess);
        zzbkp zza2 = this.zzgti.zza(new zzboj(zzdnl, zzdmw, null), new zzbks(zza.getView(), zza, zzdnu.zzh(zzb), zzdmw.zzfto, zzdmw.zzftp, zzdmw.zzftq));
        zza2.zzahe().zza(zza, false);
        zzbsd zzagq = zza2.zzagq();
        zzcsb zzcsb = new zzcsb(zza);
        zzdzv zzdzv = zzazp.zzeih;
        zzagq.zza(zzcsb, zzdzv);
        zza2.zzahe();
        zzdnd zzdnd = zzdmw.zzhjg;
        return zzdzk.zzb(zzchs.zza(zza, zzdnd.zzdsw, zzdnd.zzdsy), new zzcse(zza2), zzdzv);
    }
}
