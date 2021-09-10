package com.google.android.gms.ads.instream;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MediaAspectRatio;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzakf;
import com.google.android.gms.internal.ads.zzakg;

public abstract class InstreamAd {

    public static abstract class InstreamAdLoadCallback {
        @Deprecated
        public void onInstreamAdFailedToLoad(int i) {
        }

        public void onInstreamAdFailedToLoad(LoadAdError loadAdError) {
        }

        public void onInstreamAdLoaded(InstreamAd instreamAd) {
        }
    }

    public static void load(Context context, String str, AdRequest adRequest, @MediaAspectRatio int i, InstreamAdLoadCallback instreamAdLoadCallback) {
        n.b(i == 2 || i == 3, "Instream ads only support Landscape and Portrait media aspect ratios");
        new zzakg(context, str).zza(instreamAdLoadCallback).zza(new zzakf(i)).zzui().loadAd(adRequest);
    }

    public abstract void destroy();

    @Deprecated
    public abstract float getAspectRatio();

    public abstract MediaContent getMediaContent();

    @Deprecated
    public abstract VideoController getVideoController();

    @Deprecated
    public abstract float getVideoCurrentTime();

    @Deprecated
    public abstract float getVideoDuration();

    /* access modifiers changed from: protected */
    public abstract void zza(InstreamAdView instreamAdView);

    public static void load(Context context, String str, InstreamAdLoadCallback instreamAdLoadCallback) {
        new zzakg(context, "").zza(instreamAdLoadCallback).zza(new zzakf(str)).zzui().loadAd(new PublisherAdRequest.Builder().build());
    }
}
