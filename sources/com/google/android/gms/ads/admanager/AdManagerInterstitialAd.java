package com.google.android.gms.ads.admanager;

import android.content.Context;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzakj;

public abstract class AdManagerInterstitialAd extends InterstitialAd {
    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, AdManagerInterstitialAdLoadCallback adManagerInterstitialAdLoadCallback) {
        n.i(context, "Context cannot be null.");
        n.i(str, "AdUnitId cannot be null.");
        n.i(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        n.i(adManagerInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new zzakj(context, str).zza(adManagerAdRequest.zzds(), adManagerInterstitialAdLoadCallback);
    }

    public abstract AppEventListener getAppEventListener();

    public abstract void setAppEventListener(AppEventListener appEventListener);
}
