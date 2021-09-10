package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcna implements zzdyu {
    private final int zzeff;
    private final zzatq zzgnq;
    private final zzcmx zzgoe;

    zzcna(zzcmx zzcmx, zzatq zzatq, int i) {
        this.zzgoe = zzcmx;
        this.zzgnq = zzatq;
        this.zzeff = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzgoe.zza(this.zzgnq, this.zzeff, (Throwable) obj);
    }
}
