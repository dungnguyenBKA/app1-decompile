package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqv;
import javax.annotation.concurrent.GuardedBy;

public final class zzdkf<RequestComponentT extends zzbqv<AdT>, AdT> implements zzdkn<RequestComponentT, AdT> {
    @GuardedBy("this")
    private RequestComponentT zzhhb;

    /* access modifiers changed from: private */
    /* renamed from: zzauo */
    public final synchronized RequestComponentT zzaun() {
        return this.zzhhb;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final synchronized zzdzw<AdT> zza(zzdko zzdko, zzdkp<RequestComponentT> zzdkp) {
        RequestComponentT zzagm;
        zzagm = zzdkp.zzc(zzdko.zzhht).zzagm();
        this.zzhhb = zzagm;
        return zzagm.zzagj().zzalb();
    }
}
