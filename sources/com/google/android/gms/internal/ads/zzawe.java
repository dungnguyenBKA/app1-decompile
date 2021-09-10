package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

public final class zzawe extends zzavx {
    private final RewardedAdLoadCallback zzdzq;
    private final RewardedAd zzdzr;

    public zzawe(RewardedAdLoadCallback rewardedAdLoadCallback, RewardedAd rewardedAd) {
        this.zzdzq = rewardedAdLoadCallback;
        this.zzdzr = rewardedAd;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void onRewardedAdFailedToLoad(int i) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.zzdzq;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void onRewardedAdLoaded() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.zzdzq;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdLoaded();
            this.zzdzq.onAdLoaded(this.zzdzr);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzj(zzvg zzvg) {
        if (this.zzdzq != null) {
            LoadAdError zzqc = zzvg.zzqc();
            this.zzdzq.onRewardedAdFailedToLoad(zzqc);
            this.zzdzq.onAdFailedToLoad(zzqc);
        }
    }
}
