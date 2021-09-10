package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardItem;

public final class zzawi extends zzavk {
    private final String type;
    private final int zzdzc;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public zzawi(zzavj zzavj) {
        this(zzavj != null ? zzavj.type : "", zzavj != null ? zzavj.zzdzc : 1);
    }

    @Override // com.google.android.gms.internal.ads.zzavl
    public final int getAmount() {
        return this.zzdzc;
    }

    @Override // com.google.android.gms.internal.ads.zzavl
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public zzawi(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public zzawi(String str, int i) {
        this.type = str;
        this.zzdzc = i;
    }
}
