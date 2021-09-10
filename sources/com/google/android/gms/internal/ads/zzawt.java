package com.google.android.gms.internal.ads;

final class zzawt implements zzdzl<Void> {
    private final /* synthetic */ zzdzw zzeal;

    zzawt(zzawm zzawm, zzdzw zzdzw) {
        this.zzeal = zzdzw;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Void r2) {
        zzawm.zzxb().remove(this.zzeal);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzawm.zzxb().remove(this.zzeal);
    }
}
