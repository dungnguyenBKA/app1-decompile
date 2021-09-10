package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;

final class zzdmn extends AdMetadataListener {
    private final /* synthetic */ zzdmk zzhis;
    private final /* synthetic */ zzyr zzhit;

    zzdmn(zzdmk zzdmk, zzyr zzyr) {
        this.zzhis = zzdmk;
        this.zzhit = zzyr;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        if (this.zzhis.zzhir != null) {
            try {
                this.zzhit.onAdMetadataChanged();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
