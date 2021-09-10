package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcsi implements zzbnu {
    private final zzbeb zzeuk;

    private zzcsi(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    static zzbnu zzm(zzbeb zzbeb) {
        return new zzcsi(zzbeb);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final zzzc getVideoController() {
        return this.zzeuk.zzabc();
    }
}
