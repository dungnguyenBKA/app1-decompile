package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;

final class zzdms extends AdMetadataListener {
    private final /* synthetic */ zzxs zzhiu;
    private final /* synthetic */ zzdmq zzhiv;

    zzdms(zzdmq zzdmq, zzxs zzxs) {
        this.zzhiv = zzdmq;
        this.zzhiu = zzxs;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        if (this.zzhiv.zzhir != null) {
            try {
                this.zzhiu.onAdMetadataChanged();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
