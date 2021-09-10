package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdmm implements zzcze<zzchb> {
    private final /* synthetic */ zzdmk zzhis;

    zzdmm(zzdmk zzdmk) {
        this.zzhis = zzdmk;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzchb zzchb) {
        zzchb zzchb2 = zzchb;
        synchronized (this.zzhis) {
            this.zzhis.zzhir = zzchb2;
            this.zzhis.zzhir.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzhis) {
            this.zzhis.zzhir = null;
        }
    }
}
