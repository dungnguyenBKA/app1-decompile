package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

public final class zzaen implements NativeCustomTemplateAd.DisplayOpenMeasurement {
    private final zzafn zzdfw;

    public zzaen(zzafn zzafn) {
        this.zzdfw = zzafn;
        try {
            zzafn.zztu();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zzdfw.zzq(aw.Q(view));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zzdfw.zztt();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }
}
