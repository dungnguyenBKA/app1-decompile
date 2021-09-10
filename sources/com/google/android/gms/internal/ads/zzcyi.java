package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcyi implements zzdkc {
    private final zzvg zzfzh;

    zzcyi(zzvg zzvg) {
        this.zzfzh = zzvg;
    }

    @Override // com.google.android.gms.internal.ads.zzdkc
    public final void zzp(Object obj) {
        ((zzwx) obj).onAdFailedToLoad(this.zzfzh.errorCode);
    }
}
