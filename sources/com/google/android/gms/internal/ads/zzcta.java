package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzcta implements zzcrj<zzblv> {
    private final ScheduledExecutorService zzfri;
    private final zzbrp zzgas;
    private final zzdzv zzghl;
    private final zzbmr zzguc;
    private final zzcsg zzgud;

    public zzcta(zzbmr zzbmr, zzcsg zzcsg, zzbrp zzbrp, ScheduledExecutorService scheduledExecutorService, zzdzv zzdzv) {
        this.zzguc = zzbmr;
        this.zzgud = zzcsg;
        this.zzgas = zzbrp;
        this.zzfri = scheduledExecutorService;
        this.zzghl = zzdzv;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        return zzdnl.zzhkr.zzfwy.zzavc() != null && this.zzgud.zza(zzdnl, zzdmw);
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzblv> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        return this.zzghl.zze(new zzcsz(this, zzdnl, zzdmw));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzblv zzc(zzdnl zzdnl, zzdmw zzdmw) {
        return this.zzguc.zza(new zzboj(zzdnl, zzdmw, null), new zzbnf(zzdnl.zzhkr.zzfwy.zzavc(), new zzctc(this, zzdnl, zzdmw))).zzahu();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(zzdnl zzdnl, zzdmw zzdmw) {
        zzdzk.zza(zzdzk.zza(this.zzgud.zzb(zzdnl, zzdmw), (long) zzdmw.zzhjq, TimeUnit.SECONDS, this.zzfri), new zzctb(this), this.zzghl);
    }
}
