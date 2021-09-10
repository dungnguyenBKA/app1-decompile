package com.google.ads.mediation;

import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

final class zza implements RewardedVideoAdListener {
    private final /* synthetic */ AbstractAdViewAdapter zzmi;

    zza(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzmi = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewarded(RewardItem rewardItem) {
        AbstractAdViewAdapter.zza(this.zzmi).onRewarded(this.zzmi, rewardItem);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdClosed() {
        AbstractAdViewAdapter.zza(this.zzmi).onAdClosed(this.zzmi);
        AbstractAdViewAdapter.zza(this.zzmi, (InterstitialAd) null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdFailedToLoad(int i) {
        AbstractAdViewAdapter.zza(this.zzmi).onAdFailedToLoad(this.zzmi, i);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLeftApplication() {
        AbstractAdViewAdapter.zza(this.zzmi).onAdLeftApplication(this.zzmi);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLoaded() {
        AbstractAdViewAdapter.zza(this.zzmi).onAdLoaded(this.zzmi);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdOpened() {
        AbstractAdViewAdapter.zza(this.zzmi).onAdOpened(this.zzmi);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        AbstractAdViewAdapter.zza(this.zzmi).onVideoCompleted(this.zzmi);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoStarted() {
        AbstractAdViewAdapter.zza(this.zzmi).onVideoStarted(this.zzmi);
    }
}
