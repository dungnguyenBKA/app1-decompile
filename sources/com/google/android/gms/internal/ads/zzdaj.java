package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzdaj implements zzdyu<zzatq, zzdak> {
    private Executor executor;
    private zzcmx zzhad;

    public zzdaj(Executor executor2, zzcmx zzcmx) {
        this.executor = executor2;
        this.zzhad = zzcmx;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzdzw' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdyu
    public final /* synthetic */ zzdzw<zzdak> zzf(zzatq zzatq) {
        zzatq zzatq2 = zzatq;
        return zzdzk.zzb(this.zzhad.zzg(zzatq2), new zzdai(zzatq2), this.executor);
    }
}
