package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;

/* renamed from: com.facebook.ads.redexgen.X.5O  reason: invalid class name */
public final class AnonymousClass5O implements RewardedVideoAd.RewardedVideoAdLoadConfigBuilder, RewardedVideoAd.RewardedVideoLoadAdConfig {
    @Nullable
    public AdExperienceType A00;
    public AnonymousClass5N A01;
    @Nullable
    public String A02;
    public boolean A03;

    public AnonymousClass5O(AnonymousClass5N r1) {
        this.A01 = r1;
    }

    public final void A00() {
        this.A01.A05(this.A02, this.A00, this.A03);
    }

    @Override // com.facebook.ads.RewardedVideoAd.RewardedVideoAdLoadConfigBuilder, com.facebook.ads.Ad.LoadConfigBuilder
    public final RewardedVideoAd.RewardedVideoLoadAdConfig build() {
        return this;
    }

    @Override // com.facebook.ads.RewardedVideoAd.RewardedVideoAdLoadConfigBuilder
    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withAdExperience(AdExperienceType adExperienceType) {
        this.A00 = adExperienceType;
        return this;
    }

    @Override // com.facebook.ads.RewardedVideoAd.RewardedVideoAdLoadConfigBuilder
    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.A01.A04(rewardedVideoAdListener);
        return this;
    }

    @Override // com.facebook.ads.RewardedVideoAd.RewardedVideoAdLoadConfigBuilder, com.facebook.ads.Ad.LoadConfigBuilder
    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withBid(String str) {
        this.A02 = str;
        return this;
    }

    @Override // com.facebook.ads.RewardedVideoAd.RewardedVideoAdLoadConfigBuilder
    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withFailOnCacheFailureEnabled(boolean z) {
        this.A03 = z;
        return this;
    }

    @Override // com.facebook.ads.RewardedVideoAd.RewardedVideoAdLoadConfigBuilder
    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withRewardData(RewardData rewardData) {
        this.A01.A03(rewardData);
        return this;
    }
}
