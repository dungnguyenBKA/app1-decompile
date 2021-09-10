package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcxt extends zzxg {
    private final zzcyy zzgxs;

    public zzcxt(Context context, zzbgc zzbgc, zzdnr zzdnr, zzcco zzcco, zzwx zzwx) {
        zzcza zzcza = new zzcza(zzcco, zzbgc.zzaez());
        zzcza.zzd(zzwx);
        this.zzgxs = new zzcyy(new zzczg(zzbgc, context, zzcza, zzdnr), zzdnr.zzavf());
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final synchronized String getMediationAdapterClassName() {
        return this.zzgxs.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final synchronized boolean isLoading() {
        return this.zzgxs.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final synchronized void zza(zzvl zzvl, int i) {
        this.zzgxs.zza(zzvl, i);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zzb(zzvl zzvl) {
        this.zzgxs.zza(zzvl, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final synchronized String zzkh() {
        return this.zzgxs.zzkh();
    }
}
