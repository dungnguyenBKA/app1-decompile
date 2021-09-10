package com.google.android.gms.ads.doubleclick;

import android.view.View;

@Deprecated
public interface CustomRenderedAd {
    String getBaseUrl();

    String getContent();

    void onAdRendered(View view);

    void recordClick();

    void recordImpression();
}
