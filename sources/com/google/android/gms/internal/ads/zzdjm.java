package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqv;
import java.util.concurrent.Executor;

public final class zzdjm<R extends zzbqv<AdT>, AdT extends zzbnt> implements zzdkn<R, zzdpm<AdT>> {
    private final Executor executor = zzdzy.zzbaf();
    private R zzhgq;

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final zzdzw<zzdpm<AdT>> zza(zzdko zzdko, zzdkp<R> zzdkp) {
        zzdzw<zzdnl> zzdzw;
        zzbqy<R> zzc = zzdkp.zzc(zzdko.zzhht);
        zzc.zza(new zzdkv(true));
        R zzagm = zzc.zzagm();
        this.zzhgq = zzagm;
        zzbou zzagj = zzagm.zzagj();
        zzdpm zzdpm = new zzdpm();
        zzatq zzatq = zzdko.zzhhs;
        if (zzatq != null) {
            zzdzw = zzagj.zza(zzatq);
        } else {
            zzdzw = zzagj.zzala();
        }
        return zzdzf.zzg(zzdzw).zzb(new zzdjp(this, zzdpm, zzagj), this.executor).zza(new zzdjo(zzdpm), this.executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final /* synthetic */ Object zzaun() {
        return this.zzhgq;
    }
}
