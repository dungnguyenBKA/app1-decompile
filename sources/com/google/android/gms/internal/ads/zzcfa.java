package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcfa implements zzdyu {
    private final zzdzw zzgig;

    zzcfa(zzdzw zzdzw) {
        this.zzgig = zzdzw;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        zzdzw zzdzw = this.zzgig;
        if (obj != null) {
            return zzdzw;
        }
        return zzdzk.immediateFailedFuture(new zzcva(zzdom.INTERNAL_ERROR, "Retrieve required value in native ad response failed."));
    }
}
