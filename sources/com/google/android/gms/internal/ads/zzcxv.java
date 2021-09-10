package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzcxv implements zzcze<zzblv> {
    private final /* synthetic */ zzcxw zzgxw;

    zzcxv(zzcxw zzcxw) {
        this.zzgxw = zzcxw;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzblv zzblv) {
        zzblv zzblv2 = zzblv;
        synchronized (this.zzgxw) {
            if (this.zzgxw.zzgxr != null) {
                this.zzgxw.zzgxr.destroy();
            }
            this.zzgxw.zzgxr = zzblv2;
            this.zzgxw.zzgxr.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzgxw) {
            this.zzgxw.zzgxr = null;
        }
    }
}
