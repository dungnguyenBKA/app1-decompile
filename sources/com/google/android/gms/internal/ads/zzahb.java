package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;

public final class zzahb extends zzage {
    private final OnAdManagerAdViewLoadedListener zzdgr;

    public zzahb(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.zzdgr = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final void zza(zzxl zzxl, zv zvVar) {
        if (zzxl != null && zvVar != null) {
            AdManagerAdView adManagerAdView = new AdManagerAdView((Context) aw.P(zvVar));
            AppEventListener appEventListener = null;
            try {
                if (zzxl.zzkk() instanceof zzvi) {
                    zzvi zzvi = (zzvi) zzxl.zzkk();
                    adManagerAdView.setAdListener(zzvi != null ? zzvi.getAdListener() : null);
                }
            } catch (RemoteException e) {
                zzazk.zzc("", e);
            }
            try {
                if (zzxl.zzkj() instanceof zzrg) {
                    zzrg zzrg = (zzrg) zzxl.zzkj();
                    if (zzrg != null) {
                        appEventListener = zzrg.getAppEventListener();
                    }
                    adManagerAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                zzazk.zzc("", e2);
            }
            zzaza.zzaac.post(new zzaha(this, adManagerAdView, zzxl));
        }
    }
}
