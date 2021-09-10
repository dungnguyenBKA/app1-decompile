package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;

public final class zzawk extends zzavx {
    private final RewardedInterstitialAdLoadCallback zzdzs;
    private final zzawn zzdzt;

    public zzawk(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, zzawn zzawn) {
        this.zzdzs = rewardedInterstitialAdLoadCallback;
        this.zzdzt = zzawn;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void onRewardedAdFailedToLoad(int i) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zzdzs;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onRewardedInterstitialAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void onRewardedAdLoaded() {
        zzawn zzawn;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zzdzs;
        if (rewardedInterstitialAdLoadCallback != null && (zzawn = this.zzdzt) != null) {
            rewardedInterstitialAdLoadCallback.onRewardedInterstitialAdLoaded(zzawn);
            this.zzdzs.onAdLoaded(this.zzdzt);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzj(zzvg zzvg) {
        if (this.zzdzs != null) {
            LoadAdError zzqc = zzvg.zzqc();
            this.zzdzs.onRewardedInterstitialAdFailedToLoad(zzqc);
            this.zzdzs.onAdFailedToLoad(zzqc);
        }
    }
}
