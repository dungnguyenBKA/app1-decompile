package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzcgp implements zzdzl<zzbeb> {
    private final /* synthetic */ zzdmw zzgjb;
    private final /* synthetic */ zzdnb zzgjc;

    zzcgp(zzcgk zzcgk, zzdmw zzdmw, zzdnb zzdnb) {
        this.zzgjb = zzdmw;
        this.zzgjc = zzdnb;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbeb zzbeb) {
        zzbeb.zza(this.zzgjb, this.zzgjc);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
