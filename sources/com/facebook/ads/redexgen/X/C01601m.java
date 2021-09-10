package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.AdSettings;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.EnumSet;

/* renamed from: com.facebook.ads.redexgen.X.1m  reason: invalid class name and case insensitive filesystem */
public final class C01601m {
    public int A00;
    @Nullable
    public RewardData A01;
    @Nullable
    public JS A02;
    @Nullable
    public String A03;
    @Nullable
    public String A04;
    public boolean A05;
    public final EnumC0592Jq A06;
    public final EnumC0593Jr A07;
    public final String A08;
    @Nullable
    public final EnumSet<CacheFlag> A09;
    public final int A0A;
    public final AdPlacementType A0B;

    public C01601m(String str, EnumC0593Jr jr, AdPlacementType adPlacementType, EnumC0592Jq jq, int i) {
        this(str, jr, adPlacementType, jq, i, EnumSet.of(CacheFlag.NONE));
    }

    public C01601m(String str, EnumC0593Jr jr, AdPlacementType adPlacementType, EnumC0592Jq jq, int i, @Nullable EnumSet<CacheFlag> enumSet) {
        this.A08 = str;
        this.A0B = adPlacementType;
        this.A06 = jq;
        this.A0A = i;
        this.A09 = enumSet;
        this.A07 = jr;
        this.A00 = -1;
    }

    public final AdPlacementType A00() {
        AdPlacementType adPlacementType = this.A0B;
        if (adPlacementType != null) {
            return adPlacementType;
        }
        EnumC0592Jq jq = this.A06;
        if (jq == null) {
            return AdPlacementType.NATIVE;
        }
        if (jq == EnumC0592Jq.A08) {
            return AdPlacementType.INTERSTITIAL;
        }
        return AdPlacementType.BANNER;
    }

    public final KB A01(XJ xj, C0598Jw jw, @Nullable AdExperienceType adExperienceType) {
        LK lk;
        String str = this.A08;
        EnumC0592Jq jq = this.A06;
        String str2 = null;
        if (jq != null) {
            lk = new LK(jq.getHeight(), this.A06.getWidth());
        } else {
            lk = null;
        }
        EnumC0593Jr jr = this.A07;
        if (AdSettings.getTestAdType() != AdSettings.TestAdType.DEFAULT) {
            str2 = AdSettings.getTestAdType().getAdTypeString();
        }
        return new KB(xj, str, lk, jr, str2, this.A0A, AdSettings.isTestMode(xj), AdSettings.isMixedAudience(), jw, LQ.A01(J4.A0H(xj)), this.A03, adExperienceType);
    }

    public final void A02(int i) {
        this.A00 = i;
    }

    public final void A03(@Nullable RewardData rewardData) {
        this.A01 = rewardData;
    }

    public final void A04(@Nullable JS js) {
        this.A02 = js;
    }

    public final void A05(@Nullable String str) {
        this.A03 = str;
    }

    public final void A06(@Nullable String str) {
        this.A04 = str;
    }

    public final void A07(boolean z) {
        this.A05 = z;
    }
}
