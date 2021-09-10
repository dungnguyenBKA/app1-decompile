package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAdPresentationCallback;

@Deprecated
public final class zzsj extends zzst {
    private final AppOpenAdPresentationCallback zzbux;

    public zzsj(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.zzbux = appOpenAdPresentationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void onAppOpenAdClosed() {
        this.zzbux.onAppOpenAdClosed();
    }
}
