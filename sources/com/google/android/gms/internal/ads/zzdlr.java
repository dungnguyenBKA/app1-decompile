package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdlr implements zzdkc {
    private final zzvg zzfzh;

    zzdlr(zzvg zzvg) {
        this.zzfzh = zzvg;
    }

    @Override // com.google.android.gms.internal.ads.zzdkc
    public final void zzp(Object obj) {
        ((zzavr) obj).onRewardedAdFailedToShow(this.zzfzh.errorCode);
    }
}
