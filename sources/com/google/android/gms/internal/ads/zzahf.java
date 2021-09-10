package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;

public final class zzahf extends zzage {
    private final OnPublisherAdViewLoadedListener zzdgw;

    public zzahf(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.zzdgw = onPublisherAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final void zza(zzxl zzxl, zv zvVar) {
        if (zzxl != null && zvVar != null) {
            PublisherAdView publisherAdView = new PublisherAdView((Context) aw.P(zvVar));
            AppEventListener appEventListener = null;
            try {
                if (zzxl.zzkk() instanceof zzvi) {
                    zzvi zzvi = (zzvi) zzxl.zzkk();
                    publisherAdView.setAdListener(zzvi != null ? zzvi.getAdListener() : null);
                }
            } catch (RemoteException e) {
                zzazk.zzc("", e);
            }
            try {
                if (zzxl.zzkj() instanceof zzvy) {
                    zzvy zzvy = (zzvy) zzxl.zzkj();
                    if (zzvy != null) {
                        appEventListener = zzvy.getAppEventListener();
                    }
                    publisherAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                zzazk.zzc("", e2);
            }
            zzaza.zzaac.post(new zzahe(this, publisherAdView, zzxl));
        }
    }
}
