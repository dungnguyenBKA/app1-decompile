package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

public final class zzahg extends zzagp {
    private final UnifiedNativeAd.UnconfirmedClickListener zzdgx;

    public zzahg(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zzdgx = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagm
    public final void onUnconfirmedClickCancelled() {
        this.zzdgx.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzagm
    public final void onUnconfirmedClickReceived(String str) {
        this.zzdgx.onUnconfirmedClickReceived(str);
    }
}
