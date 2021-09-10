package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdim implements zzdkc {
    private final zzvg zzfzh;

    zzdim(zzvg zzvg) {
        this.zzfzh = zzvg;
    }

    @Override // com.google.android.gms.internal.ads.zzdkc
    public final void zzp(Object obj) {
        ((zzsp) obj).onAppOpenAdFailedToLoad(this.zzfzh.errorCode);
    }
}
