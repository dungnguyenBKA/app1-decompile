package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedAdListener;
import java.util.EnumSet;

/* renamed from: com.facebook.ads.redexgen.X.59  reason: invalid class name */
public final class AnonymousClass59 implements InterstitialAd.InterstitialAdLoadConfigBuilder, InterstitialAd.InterstitialLoadAdConfig {
    public AnonymousClass58 A00;
    @Nullable
    public String A01;
    public EnumSet<CacheFlag> A02;

    public AnonymousClass59(AnonymousClass58 r1) {
        this.A00 = r1;
    }

    public final void A00() {
        if (this.A02 == null) {
            this.A02 = CacheFlag.ALL;
        }
        this.A00.A06(this.A02, this.A01);
    }

    @Override // com.facebook.ads.InterstitialAd.InterstitialAdLoadConfigBuilder, com.facebook.ads.Ad.LoadConfigBuilder
    public final InterstitialAd.InterstitialLoadAdConfig build() {
        return this;
    }

    @Override // com.facebook.ads.InterstitialAd.InterstitialAdLoadConfigBuilder
    public final InterstitialAd.InterstitialAdLoadConfigBuilder withAdListener(InterstitialAdListener interstitialAdListener) {
        this.A00.A03(interstitialAdListener);
        if (interstitialAdListener instanceof InterstitialAdExtendedListener) {
            this.A00.A05((InterstitialAdExtendedListener) interstitialAdListener);
        }
        return this;
    }

    @Override // com.facebook.ads.InterstitialAd.InterstitialAdLoadConfigBuilder, com.facebook.ads.Ad.LoadConfigBuilder
    public final InterstitialAd.InterstitialAdLoadConfigBuilder withBid(String str) {
        this.A01 = str;
        return this;
    }

    @Override // com.facebook.ads.InterstitialAd.InterstitialAdLoadConfigBuilder
    public final InterstitialAd.InterstitialAdLoadConfigBuilder withCacheFlags(EnumSet<CacheFlag> cacheFlags) {
        this.A02 = cacheFlags;
        return this;
    }

    @Override // com.facebook.ads.InterstitialAd.InterstitialAdLoadConfigBuilder
    public final InterstitialAd.InterstitialAdLoadConfigBuilder withRewardData(RewardData rewardData) {
        this.A00.A04(rewardData);
        return this;
    }

    @Override // com.facebook.ads.InterstitialAd.InterstitialAdLoadConfigBuilder
    public final InterstitialAd.InterstitialAdLoadConfigBuilder withRewardedAdListener(RewardedAdListener rewardedAdListener) {
        this.A00.A05(rewardedAdListener);
        return this;
    }
}
