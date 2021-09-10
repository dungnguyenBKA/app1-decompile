package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.internal.ads.zzaec;

/* access modifiers changed from: package-private */
public final /* synthetic */ class d implements zzaec {
    private final UnifiedNativeAdView a;

    d(UnifiedNativeAdView unifiedNativeAdView) {
        this.a = unifiedNativeAdView;
    }

    @Override // com.google.android.gms.internal.ads.zzaec
    public final void setMediaContent(MediaContent mediaContent) {
        this.a.b(mediaContent);
    }
}
