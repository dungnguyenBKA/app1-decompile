package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;

public final class JN implements AdView.AdViewLoadConfigBuilder, AdView.AdViewLoadConfig {
    @Nullable
    public String A00;
    public final C02464v A01;

    public JN(C02464v r1) {
        this.A01 = r1;
    }

    @Nullable
    public final String A00() {
        return this.A00;
    }

    @Override // com.facebook.ads.AdView.AdViewLoadConfigBuilder, com.facebook.ads.Ad.LoadConfigBuilder
    public final AdView.AdViewLoadConfig build() {
        return this;
    }

    @Override // com.facebook.ads.AdView.AdViewLoadConfigBuilder
    public final AdView.AdViewLoadConfigBuilder withAdListener(AdListener adListener) {
        this.A01.A0D(adListener);
        return this;
    }

    @Override // com.facebook.ads.AdView.AdViewLoadConfigBuilder, com.facebook.ads.Ad.LoadConfigBuilder
    public final AdView.AdViewLoadConfigBuilder withBid(String str) {
        this.A00 = str;
        return this;
    }
}
