package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

public final class zzaqv implements NativeCustomFormatAd.DisplayOpenMeasurement {
    private final zzafn zzdqm;

    public zzaqv(zzafn zzafn) {
        this.zzdqm = zzafn;
        try {
            zzafn.zztu();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zzdqm.zzq(aw.Q(view));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zzdqm.zztt();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }
}
