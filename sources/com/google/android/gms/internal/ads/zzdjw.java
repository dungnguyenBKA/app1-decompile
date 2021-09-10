package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqv;
import java.util.concurrent.Executor;

public final class zzdjw<R extends zzbqv<AdT>, AdT extends zzbnt> implements zzdkn<R, zzdka<AdT>> {
    private final Executor executor;
    private final zzdpc zzhhi;
    private zzdzl<Void> zzhhj = new zzdkb(this);

    public zzdjw(zzdpc zzdpc, Executor executor2) {
        this.zzhhi = zzdpc;
        this.executor = executor2;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final zzdzw<zzdka<AdT>> zza(zzdko zzdko, zzdkp<R> zzdkp) {
        return zzdzf.zzg(new zzdkh(this.zzhhi, zzdko.zzhht, zzdkp, this.executor).zzaus()).zzb(new zzdjz(this, zzdko, zzdkp), this.executor).zza(Exception.class, new zzdjy(this), this.executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final /* bridge */ /* synthetic */ Object zzaun() {
        return null;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdko zzdko, zzdkp zzdkp, zzdkl zzdkl) {
        zzdpl zzdpl = zzdkl.zzhhg;
        zzatq zzatq = zzdkl.zzgoq;
        zzdpm<?> zza = zzdpl != null ? this.zzhhi.zza(zzdpl) : null;
        if (zzdpl == null) {
            return zzdzk.zzag(null);
        }
        if (!(zza == null || zzatq == null)) {
            zzdzk.zza(((zzbqv) zzdkp.zzc(zzdko.zzhht).zzagm()).zzagj().zzc(zzatq), this.zzhhj, this.executor);
        }
        return zzdzk.zzag(new zzdka(zzdpl, zzatq, zza));
    }
}
