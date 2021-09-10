package com.google.ads.mediation.adr;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.ads.consent.ConsentStatus;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.List;

public class Rewarded extends Adapter implements MediationRewardedAd {
    private static final String AD_UNIT_KEY = "parameter";
    final String TAG = "Rewarded@M";
    private MediationAdLoadCallback mediationAdLoadCallback;
    private MediationRewardedAdCallback mediationRewardedAdCallback;
    private RewardedAd rewardedAd;

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        return new VersionInfo(1, 0, 3);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        return new VersionInfo(1, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        initializationCompleteCallback.onInitializationSucceeded();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback2) {
        try {
            this.mediationAdLoadCallback = mediationAdLoadCallback2;
            String string = mediationRewardedAdConfiguration.getServerParameters().getString("parameter");
            Context context = mediationRewardedAdConfiguration.getContext();
            fc0 a = fc0.a();
            a.b(context, "Rewarded@M load " + string);
            final AnonymousClass1 r0 = new FullScreenContentCallback() {
                /* class com.google.ads.mediation.adr.Rewarded.AnonymousClass1 */

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdDismissedFullScreenContent() {
                    Rewarded.this.mediationRewardedAdCallback.onAdClosed();
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdFailedToShowFullScreenContent(AdError adError) {
                    Rewarded.this.mediationRewardedAdCallback.onAdFailedToShow(adError);
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdShowedFullScreenContent() {
                    Rewarded.this.mediationRewardedAdCallback.reportAdImpression();
                }
            };
            AdRequest.Builder builder = new AdRequest.Builder();
            if (cc0.l(context) == ConsentStatus.NON_PERSONALIZED) {
                Bundle bundle = new Bundle();
                bundle.putString("npa", "1");
                builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle);
            }
            RewardedAd.load(context.getApplicationContext(), string, builder.build(), new RewardedAdLoadCallback() {
                /* class com.google.ads.mediation.adr.Rewarded.AnonymousClass2 */

                @Override // com.google.android.gms.ads.AdLoadCallback
                public void onAdFailedToLoad(LoadAdError loadAdError) {
                    Rewarded.this.mediationAdLoadCallback.onFailure(loadAdError);
                }

                public void onAdLoaded(RewardedAd rewardedAd) {
                    Rewarded.this.rewardedAd = rewardedAd;
                    Rewarded.this.rewardedAd.setFullScreenContentCallback(r0);
                    Rewarded rewarded = Rewarded.this;
                    rewarded.mediationRewardedAdCallback = (MediationRewardedAdCallback) rewarded.mediationAdLoadCallback.onSuccess(Rewarded.this);
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
            FirebaseCrashlytics.getInstance().recordException(th);
            this.mediationAdLoadCallback.onFailure(Error.getExceptionError("Rewarded@M"));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        try {
            this.rewardedAd.show((Activity) context, new OnUserEarnedRewardListener() {
                /* class com.google.ads.mediation.adr.Rewarded.AnonymousClass3 */

                @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
                public void onUserEarnedReward(RewardItem rewardItem) {
                    if (Rewarded.this.mediationAdLoadCallback != null) {
                        Rewarded.this.mediationRewardedAdCallback.onUserEarnedReward(rewardItem);
                    }
                }
            });
        } catch (Throwable th) {
            MediationRewardedAdCallback mediationRewardedAdCallback2 = this.mediationRewardedAdCallback;
            if (mediationRewardedAdCallback2 != null) {
                mediationRewardedAdCallback2.onAdFailedToShow(Error.getExceptionError("Rewarded@M"));
            }
            fc0.a().c(context, th);
        }
    }
}
