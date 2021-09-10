package com.google.android.gms.internal.ads;

final class zzbjs implements zzdzl<String> {
    private final /* synthetic */ zzbjq zzfrh;
    private final /* synthetic */ String zzfrw;

    zzbjs(zzbjq zzbjq, String str) {
        this.zzfrh = zzbjq;
        this.zzfrw = str;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(String str) {
        this.zzfrh.zzfrk.zzj(this.zzfrh.zzfre.zza(this.zzfrh.zzfrd, this.zzfrh.zzfrj, false, this.zzfrw, str, this.zzfrh.zzfrj.zzdmq));
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzfrh.zzfrk.zzj(this.zzfrh.zzfre.zza(this.zzfrh.zzfrd, this.zzfrh.zzfrj, false, this.zzfrw, null, this.zzfrh.zzfrj.zzdmq));
    }
}
