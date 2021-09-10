package com.google.ads.mediation.facebook.rtb;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.facebook.ads.ExtraHints;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;

public class FacebookRtbBannerAd implements MediationBannerAd, AdListener {
    private MediationBannerAdConfiguration adConfiguration;
    private AdView adView;
    private MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> callback;
    private MediationBannerAdCallback mBannerAdCallback;
    private FrameLayout mWrappedAdView;

    public FacebookRtbBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationBannerAdConfiguration;
        this.callback = mediationAdLoadCallback;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.mWrappedAdView;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdOpened();
            this.mBannerAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        this.mBannerAdCallback = this.callback.onSuccess(this);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        String createSdkError = FacebookMediationAdapter.createSdkError(adError);
        Log.w(FacebookMediationAdapter.TAG, createSdkError);
        this.callback.onFailure(createSdkError);
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
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
        try {
            this.adView = new AdView(this.adConfiguration.getContext(), placementID, this.adConfiguration.getBidResponse());
            if (!TextUtils.isEmpty(this.adConfiguration.getWatermark())) {
                this.adView.setExtraHints(new ExtraHints.Builder().mediationData(this.adConfiguration.getWatermark()).build());
            }
            Context context = this.adConfiguration.getContext();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.adConfiguration.getAdSize().getWidthInPixels(context), -2);
            this.mWrappedAdView = new FrameLayout(context);
            this.adView.setLayoutParams(layoutParams);
            this.mWrappedAdView.addView(this.adView);
            AdView adView2 = this.adView;
            adView2.loadAd(adView2.buildLoadAdConfig().withAdListener(this).withBid(this.adConfiguration.getBidResponse()).build());
        } catch (Exception e) {
            StringBuilder q = ic.q("Failed to create banner ad: ");
            q.append(e.getMessage());
            String createAdapterError2 = FacebookMediationAdapter.createAdapterError(FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, q.toString());
            Log.e(FacebookMediationAdapter.TAG, createAdapterError2);
            this.callback.onFailure(createAdapterError2);
        }
    }
}
