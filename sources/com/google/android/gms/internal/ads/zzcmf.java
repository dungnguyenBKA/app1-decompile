package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcmf implements zzdyu {
    private final int zzeff;
    private final zzcme zzgnp;
    private final zzatq zzgnq;

    zzcmf(zzcme zzcme, zzatq zzatq, int i) {
        this.zzgnp = zzcme;
        this.zzgnq = zzatq;
        this.zzeff = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzgnp.zza(this.zzgnq, this.zzeff, (zzcoc) obj);
    }
}
