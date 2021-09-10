package com.google.android.gms.internal.ads;

final class zzdmt implements zzcze<zzchb> {
    private final /* synthetic */ zzdmq zzhiv;

    zzdmt(zzdmq zzdmq) {
        this.zzhiv = zzdmq;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzchb zzchb) {
        zzchb zzchb2 = zzchb;
        synchronized (this.zzhiv) {
            this.zzhiv.zzhir = zzchb2;
            this.zzhiv.zzhir.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzhiv) {
            this.zzhiv.zzhir = null;
        }
    }
}
