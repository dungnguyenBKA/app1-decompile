package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;

public final class zzsg extends zzso {
    private final AppOpenAd.AppOpenAdLoadCallback zzbus;
    private final String zzbut;

    public zzsg(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.zzbus = appOpenAdLoadCallback;
        this.zzbut = str;
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void onAppOpenAdFailedToLoad(int i) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.zzbus;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void zza(zzsk zzsk) {
        if (this.zzbus != null) {
            zzsi zzsi = new zzsi(zzsk, this.zzbut);
            this.zzbus.onAppOpenAdLoaded(zzsi);
            this.zzbus.onAdLoaded(zzsi);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void zza(zzvg zzvg) {
        if (this.zzbus != null) {
            LoadAdError zzqc = zzvg.zzqc();
            this.zzbus.onAppOpenAdFailedToLoad(zzqc);
            this.zzbus.onAdFailedToLoad(zzqc);
        }
    }
}
