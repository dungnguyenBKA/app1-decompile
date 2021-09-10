package com.facebook.ads;

import androidx.annotation.Keep;

@Keep
public interface RewardedVideoAdListener extends AdListener {
    @Override // com.facebook.ads.AdListener
    void onLoggingImpression(Ad ad);

    void onRewardedVideoClosed();

    void onRewardedVideoCompleted();
}
