package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzchz implements zzbfq {
    private final zzbaa zzbwd;

    zzchz(zzbaa zzbaa) {
        this.zzbwd = zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void zzal(boolean z) {
        zzbaa zzbaa = this.zzbwd;
        if (z) {
            zzbaa.set(null);
        } else {
            zzbaa.setException(new Exception("Ad Web View failed to load."));
        }
    }
}
