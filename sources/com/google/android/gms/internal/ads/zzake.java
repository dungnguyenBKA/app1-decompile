package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.instream.InstreamAd;

public final class zzake extends zzaka {
    private final InstreamAd.InstreamAdLoadCallback zzdjc;

    public zzake(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        this.zzdjc = instreamAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void onInstreamAdFailedToLoad(int i) {
        this.zzdjc.onInstreamAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void zza(zzajv zzajv) {
        this.zzdjc.onInstreamAdLoaded(new zzakc(zzajv));
    }

    @Override // com.google.android.gms.internal.ads.zzakb
    public final void zze(zzvg zzvg) {
        this.zzdjc.onInstreamAdFailedToLoad(zzvg.zzqc());
    }
}
