package com.google.android.gms.ads.interstitial;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzakj;

public abstract class InterstitialAd {
    public static void load(Context context, String str, AdRequest adRequest, InterstitialAdLoadCallback interstitialAdLoadCallback) {
        n.i(context, "Context cannot be null.");
        n.i(str, "AdUnitId cannot be null.");
        n.i(adRequest, "AdRequest cannot be null.");
        n.i(interstitialAdLoadCallback, "LoadCallback cannot be null.");
        new zzakj(context, str).zza(adRequest.zzds(), interstitialAdLoadCallback);
    }

    public abstract String getAdUnitId();

    public abstract FullScreenContentCallback getFullScreenContentCallback();

    public abstract OnPaidEventListener getOnPaidEventListener();

    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnPaidEventListener(OnPaidEventListener onPaidEventListener);

    public abstract void show(Activity activity);
}
