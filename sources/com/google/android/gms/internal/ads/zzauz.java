package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;

public final class zzauz implements RewardItem {
    private final zzauk zzdze;

    public zzauz(zzauk zzauk) {
        this.zzdze = zzauk;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        zzauk zzauk = this.zzdze;
        if (zzauk == null) {
            return 0;
        }
        try {
            return zzauk.getAmount();
        } catch (RemoteException e) {
            zzazk.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        zzauk zzauk = this.zzdze;
        if (zzauk == null) {
            return null;
        }
        try {
            return zzauk.getType();
        } catch (RemoteException e) {
            zzazk.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
