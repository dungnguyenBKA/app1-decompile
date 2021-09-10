package com.google.android.gms.internal.ads;

public final class zzcrm<DelegateT, AdapterT> implements zzcrj<AdapterT> {
    private final zzcrj<DelegateT> zzgsv;
    private final zzdvz<DelegateT, AdapterT> zzgsw;

    public zzcrm(zzcrj<DelegateT> zzcrj, zzdvz<DelegateT, AdapterT> zzdvz) {
        this.zzgsv = zzcrj;
        this.zzgsw = zzdvz;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        return this.zzgsv.zza(zzdnl, zzdmw);
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<AdapterT> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        return zzdzk.zzb(this.zzgsv.zzb(zzdnl, zzdmw), this.zzgsw, zzazp.zzeic);
    }
}
