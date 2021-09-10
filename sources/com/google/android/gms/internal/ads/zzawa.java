package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;

public final class zzawa implements RewardItem {
    private final zzavl zzdzk;

    public zzawa(zzavl zzavl) {
        this.zzdzk = zzavl;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzavl zzavl = this.zzdzk;
        if (zzavl == null) {
            return 0;
        }
        try {
            return zzavl.getAmount();
        } catch (RemoteException e) {
            zzazk.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzavl zzavl = this.zzdzk;
        if (zzavl == null) {
            return null;
        }
        try {
            return zzavl.getType();
        } catch (RemoteException e) {
            zzazk.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
