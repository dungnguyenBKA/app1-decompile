package com.google.android.gms.ads.nativead;

import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.internal.ads.zzaec;

final /* synthetic */ class b implements zzaec {
    private final NativeAdView a;

    b(NativeAdView nativeAdView) {
        this.a = nativeAdView;
    }

    @Override // com.google.android.gms.internal.ads.zzaec
    public final void setMediaContent(MediaContent mediaContent) {
        this.a.c(mediaContent);
    }
}
