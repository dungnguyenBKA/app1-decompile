package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzcyw implements zzcze<zzbyy> {
    private final /* synthetic */ zzcyt zzgyv;

    zzcyw(zzcyt zzcyt) {
        this.zzgyv = zzcyt;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzbyy zzbyy) {
        zzbyy zzbyy2 = zzbyy;
        synchronized (this.zzgyv) {
            this.zzgyv.zzgyn = zzbyy2;
            this.zzgyv.zzgyn.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzgyv) {
            this.zzgyv.zzgyn = null;
        }
    }
}
