package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcey implements zzdyu {
    private final zzdzw zzgig;

    zzcey(zzdzw zzdzw) {
        this.zzgig = zzdzw;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        zzdzw zzdzw = this.zzgig;
        zzbeb zzbeb = (zzbeb) obj;
        if (zzbeb != null && zzbeb.zzabc() != null) {
            return zzdzw;
        }
        throw new zzcva(zzdom.INTERNAL_ERROR, "Retrieve video view in instream ad response failed.");
    }
}
