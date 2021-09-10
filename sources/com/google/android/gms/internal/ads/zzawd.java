package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;

public final class zzawd extends zzavq {
    private FullScreenContentCallback zzbuw;
    private RewardedAdCallback zzdzp;

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdClosed() {
        RewardedAdCallback rewardedAdCallback = this.zzdzp;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdClosed();
        }
        FullScreenContentCallback fullScreenContentCallback = this.zzbuw;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdFailedToShow(int i) {
        RewardedAdCallback rewardedAdCallback = this.zzdzp;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void onRewardedAdOpened() {
        RewardedAdCallback rewardedAdCallback = this.zzdzp;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdOpened();
        }
        FullScreenContentCallback fullScreenContentCallback = this.zzbuw;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.zzbuw = fullScreenContentCallback;
    }

    public final void zza(RewardedAdCallback rewardedAdCallback) {
        this.zzdzp = rewardedAdCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void zzi(zzvg zzvg) {
        AdError zzqb = zzvg.zzqb();
        RewardedAdCallback rewardedAdCallback = this.zzdzp;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(zzqb);
        }
        FullScreenContentCallback fullScreenContentCallback = this.zzbuw;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzqb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void zza(zzavl zzavl) {
        RewardedAdCallback rewardedAdCallback = this.zzdzp;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onUserEarnedReward(new zzawa(zzavl));
        }
    }
}
