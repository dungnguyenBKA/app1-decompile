package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzcgn implements zzdzl<zzbeb> {
    private final /* synthetic */ String zzerp;
    private final /* synthetic */ zzaif zzgja;

    zzcgn(zzcgk zzcgk, String str, zzaif zzaif) {
        this.zzerp = str;
        this.zzgja = zzaif;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbeb zzbeb) {
        zzbeb.zzb(this.zzerp, this.zzgja);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
