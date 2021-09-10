package com.google.ads.mediation.facebook;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.google.ads.mediation.facebook.FacebookInitializer;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import java.util.concurrent.atomic.AtomicBoolean;

public class FacebookRewardedAd implements MediationRewardedAd, RewardedVideoAdExtendedListener {
    private MediationRewardedAdConfiguration adConfiguration;
    private AtomicBoolean didRewardedAdClose = new AtomicBoolean();
    private boolean isRtbAd = false;
    private MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mMediationAdLoadCallback;
    private MediationRewardedAdCallback mRewardedAdCallback;
    private RewardedVideoAd rewardedAd;
    private AtomicBoolean showAdCalled = new AtomicBoolean();

    public FacebookRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationRewardedAdConfiguration;
        this.mMediationAdLoadCallback = mediationAdLoadCallback;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void createAndLoadRewardedVideo(Context context, String str) {
        RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(context, str);
        this.rewardedAd = rewardedVideoAd;
        rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(this).withAdExperience(getAdExperienceType()).build());
    }

    /* access modifiers changed from: package-private */
    public AdExperienceType getAdExperienceType() {
        return AdExperienceType.AD_EXPERIENCE_TYPE_REWARDED;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback != null && !this.isRtbAd) {
            mediationRewardedAdCallback.reportAdClicked();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.mMediationAdLoadCallback;
        if (mediationAdLoadCallback != null) {
            this.mRewardedAdCallback = mediationAdLoadCallback.onSuccess(this);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        String createSdkError = FacebookMediationAdapter.createSdkError(adError);
        if (this.showAdCalled.get()) {
            String str = FacebookMediationAdapter.TAG;
            Log.w(str, "Failed to present rewarded ad: " + createSdkError);
            MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
            if (mediationRewardedAdCallback != null) {
                mediationRewardedAdCallback.onAdFailedToShow(createSdkError);
            }
        } else {
            String str2 = FacebookMediationAdapter.TAG;
            Log.w(str2, "Failed to load rewarded ad: " + createSdkError);
            MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.mMediationAdLoadCallback;
            if (mediationAdLoadCallback != null) {
                mediationAdLoadCallback.onFailure(createSdkError);
            }
        }
        this.rewardedAd.destroy();
    }

    @Override // com.facebook.ads.RewardedVideoAdListener, com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback != null && !this.isRtbAd) {
            mediationRewardedAdCallback.reportAdImpression();
        }
    }

    @Override // com.facebook.ads.RewardedVideoAdExtendedListener
    public void onRewardedVideoActivityDestroyed() {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        if (!this.didRewardedAdClose.getAndSet(true) && (mediationRewardedAdCallback = this.mRewardedAdCallback) != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
        RewardedVideoAd rewardedVideoAd = this.rewardedAd;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
        }
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoClosed() {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        if (!this.didRewardedAdClose.getAndSet(true) && (mediationRewardedAdCallback = this.mRewardedAdCallback) != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
        RewardedVideoAd rewardedVideoAd = this.rewardedAd;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
        }
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoCompleted() {
        this.mRewardedAdCallback.onVideoComplete();
        this.mRewardedAdCallback.onUserEarnedReward(new FacebookReward());
    }

    public void render() {
        final Context context = this.adConfiguration.getContext();
        final String placementID = FacebookMediationAdapter.getPlacementID(this.adConfiguration.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            String createAdapterError = FacebookMediationAdapter.createAdapterError(101, "Failed to request ad, placementID is null or empty.");
            Log.e(FacebookMediationAdapter.TAG, createAdapterError);
            this.mMediationAdLoadCallback.onFailure(createAdapterError);
            return;
        }
        String bidResponse = this.adConfiguration.getBidResponse();
        if (!TextUtils.isEmpty(bidResponse)) {
            this.isRtbAd = true;
        }
        FacebookMediationAdapter.setMixedAudience(this.adConfiguration);
        if (this.isRtbAd) {
            this.rewardedAd = new RewardedVideoAd(context, placementID);
            if (!TextUtils.isEmpty(this.adConfiguration.getWatermark())) {
                this.rewardedAd.setExtraHints(new ExtraHints.Builder().mediationData(this.adConfiguration.getWatermark()).build());
            }
            RewardedVideoAd rewardedVideoAd = this.rewardedAd;
            rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(this).withBid(bidResponse).withAdExperience(getAdExperienceType()).build());
            return;
        }
        FacebookInitializer.getInstance().initialize(context, placementID, new FacebookInitializer.Listener() {
            /* class com.google.ads.mediation.facebook.FacebookRewardedAd.AnonymousClass1 */

            @Override // com.google.ads.mediation.facebook.FacebookInitializer.Listener
            public void onInitializeError(String str) {
                String createAdapterError = FacebookMediationAdapter.createAdapterError(FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, "Failed to load ad from Facebook: " + str);
                Log.w(FacebookMediationAdapter.TAG, createAdapterError);
                if (FacebookRewardedAd.this.mMediationAdLoadCallback != null) {
                    FacebookRewardedAd.this.mMediationAdLoadCallback.onFailure(createAdapterError);
                }
            }

            @Override // com.google.ads.mediation.facebook.FacebookInitializer.Listener
            public void onInitializeSuccess() {
                FacebookRewardedAd.this.createAndLoadRewardedVideo(context, placementID);
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        this.showAdCalled.set(true);
        if (!this.rewardedAd.show()) {
            String createAdapterError = FacebookMediationAdapter.createAdapterError(FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, "Failed to present rewarded ad.");
            Log.w(FacebookMediationAdapter.TAG, createAdapterError);
            MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
            if (mediationRewardedAdCallback != null) {
                mediationRewardedAdCallback.onAdFailedToShow(createAdapterError);
            }
            this.rewardedAd.destroy();
            return;
        }
        MediationRewardedAdCallback mediationRewardedAdCallback2 = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback2 != null) {
            mediationRewardedAdCallback2.onVideoStart();
            this.mRewardedAdCallback.onAdOpened();
        }
    }
}
