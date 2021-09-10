package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzcyx implements zzcze<zzbnt> {
    private final /* synthetic */ zzcyy zzgyw;

    zzcyx(zzcyy zzcyy) {
        this.zzgyw = zzcyy;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzbnt zzbnt) {
        zzbnt zzbnt2 = zzbnt;
        synchronized (this.zzgyw) {
            this.zzgyw.zzafd = false;
            this.zzgyw.zzadv = zzbnt2.zzakr();
            zzbnt2.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzgyw) {
            this.zzgyw.zzafd = false;
        }
    }
}
