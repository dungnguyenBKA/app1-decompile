package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqv;
import javax.annotation.concurrent.GuardedBy;

public final class zzdke<RequestComponentT extends zzbqv<AdT>, AdT> implements zzdkn<RequestComponentT, AdT> {
    @GuardedBy("this")
    private RequestComponentT zzhhb;
    private final zzdkn<RequestComponentT, AdT> zzhho;

    public zzdke(zzdkn<RequestComponentT, AdT> zzdkn) {
        this.zzhho = zzdkn;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzauo */
    public final synchronized RequestComponentT zzaun() {
        return this.zzhhb;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final synchronized zzdzw<AdT> zza(zzdko zzdko, zzdkp<RequestComponentT> zzdkp) {
        if (zzdko.zzhhs != null) {
            RequestComponentT zzagm = zzdkp.zzc(zzdko.zzhht).zzagm();
            this.zzhhb = zzagm;
            return zzagm.zzagj().zzb(zzdko.zzhhs);
        }
        zzdzw<AdT> zza = this.zzhho.zza(zzdko, zzdkp);
        this.zzhhb = this.zzhho.zzaun();
        return zza;
    }
}
