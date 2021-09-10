package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;

/* renamed from: com.facebook.ads.redexgen.X.Rw  reason: case insensitive filesystem */
public abstract class AbstractC0801Rw implements AbstractC01350n {
    public int A00;
    public RewardData A01;

    public abstract int A0D();

    public abstract boolean A0E();

    public final void A00(int i) {
        this.A00 = i;
    }

    public final void A01(RewardData rewardData) {
        this.A01 = rewardData;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final AdPlacementType A6x() {
        return AdPlacementType.REWARDED_VIDEO;
    }
}
