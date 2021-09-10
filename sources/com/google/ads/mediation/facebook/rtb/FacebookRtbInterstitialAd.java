package com.google.ads.mediation.facebook.rtb;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import java.util.concurrent.atomic.AtomicBoolean;

public class FacebookRtbInterstitialAd implements MediationInterstitialAd, InterstitialAdExtendedListener {
    private MediationInterstitialAdConfiguration adConfiguration;
    private MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> callback;
    private AtomicBoolean didInterstitialAdClose = new AtomicBoolean();
    private InterstitialAd interstitialAd;
    private MediationInterstitialAdCallback mInterstitalAdCallback;
    private AtomicBoolean showAdCalled = new AtomicBoolean();

    public FacebookRtbInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationInterstitialAdConfiguration;
        this.callback = mediationAdLoadCallback;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.mInterstitalAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        this.mInterstitalAdCallback = this.callback.onSuccess(this);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        String createSdkError = FacebookMediationAdapter.createSdkError(adError);
        Log.w(FacebookMediationAdapter.TAG, createSdkError);
        if (this.showAdCalled.get()) {
            MediationInterstitialAdCallback mediationInterstitialAdCallback = this.mInterstitalAdCallback;
            if (mediationInterstitialAdCallback != null) {
                mediationInterstitialAdCallback.onAdOpened();
                this.mInterstitalAdCallback.onAdClosed();
                return;
            }
            return;
        }
        this.callback.onFailure(createSdkError);
    }

    @Override // com.facebook.ads.InterstitialAdExtendedListener
    public void onInterstitialActivityDestroyed() {
        MediationInterstitialAdCallback mediationInterstitialAdCallback;
        if (!this.didInterstitialAdClose.getAndSet(true) && (mediationInterstitialAdCallback = this.mInterstitalAdCallback) != null) {
            mediationInterstitialAdCallback.onAdClosed();
        }
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(Ad ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback;
        if (!this.didInterstitialAdClose.getAndSet(true) && (mediationInterstitialAdCallback = this.mInterstitalAdCallback) != null) {
            mediationInterstitialAdCallback.onAdClosed();
        }
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(Ad ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.mInterstitalAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdOpened();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdCompleted() {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerFailed() {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerSucceeded() {
    }

    public void render() {
        String placementID = FacebookMediationAdapter.getPlacementID(this.adConfiguration.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            String createAdapterError = FacebookMediationAdapter.createAdapterError(101, "Failed to request ad, placementID is null or empty.");
            Log.e(FacebookMediationAdapter.TAG, createAdapterError);
            this.callback.onFailure(createAdapterError);
            return;
        }
        FacebookMediationAdapter.setMixedAudience(this.adConfiguration);
        this.interstitialAd = new InterstitialAd(this.adConfiguration.getContext(), placementID);
        if (!TextUtils.isEmpty(this.adConfiguration.getWatermark())) {
            this.interstitialAd.setExtraHints(new ExtraHints.Builder().mediationData(this.adConfiguration.getWatermark()).build());
        }
        InterstitialAd interstitialAd2 = this.interstitialAd;
        interstitialAd2.loadAd(interstitialAd2.buildLoadAdConfig().withBid(this.adConfiguration.getBidResponse()).withAdListener(this).build());
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        this.showAdCalled.set(true);
        if (!this.interstitialAd.show()) {
            Log.w(FacebookMediationAdapter.TAG, FacebookMediationAdapter.createAdapterError(FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, "Failed to present interstitial ad."));
            MediationInterstitialAdCallback mediationInterstitialAdCallback = this.mInterstitalAdCallback;
            if (mediationInterstitialAdCallback != null) {
                mediationInterstitialAdCallback.onAdOpened();
                this.mInterstitalAdCallback.onAdClosed();
            }
        }
    }
}
