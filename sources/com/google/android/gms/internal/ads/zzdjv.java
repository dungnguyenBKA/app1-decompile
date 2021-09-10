package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqv;

final class zzdjv<R extends zzbqv<AdT>, AdT extends zzbnt> implements zzdpx<AdT> {
    private final zzdkn<R, zzdpm<AdT>> zzhhh;

    public zzdjv(zzdkn<R, zzdpm<AdT>> zzdkn) {
        this.zzhhh = zzdkn;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.google.android.gms.internal.ads.zzdkn<R extends com.google.android.gms.internal.ads.zzbqv<AdT>, com.google.android.gms.internal.ads.zzdpm<AdT extends com.google.android.gms.internal.ads.zzbnt>> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdpx
    public final zzdzw<zzdpm<AdT>> zza(zzdqa zzdqa) {
        zzdju zzdju = (zzdju) zzdqa;
        return this.zzhhh.zza(zzdju.zzhhf, zzdju.zzhhe);
    }

    @Override // com.google.android.gms.internal.ads.zzdpx
    public final void zzb(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzdpx
    public final void zza(zzdpm<AdT> zzdpm) {
        zzdpm.zzhoh = this.zzhhh.zzaun().zzagj();
    }
}
