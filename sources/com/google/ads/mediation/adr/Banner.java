package com.google.ads.mediation.adr;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.consent.ConsentStatus;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.customevent.CustomEventBanner;
import com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener;

public class Banner implements CustomEventBanner {
    final String TAG = "CustomEventBanner@M";
    private AdView bannerView;

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onDestroy() {
        AdView adView = this.bannerView;
        if (adView != null) {
            adView.destroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBanner
    public void requestBannerAd(Context context, final CustomEventBannerListener customEventBannerListener, String str, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle) {
        try {
            AdView adView = new AdView(context);
            this.bannerView = adView;
            adView.setAdUnitId(str);
            this.bannerView.setAdSize(new AdSize(adSize.getWidth(), adSize.getHeight()));
            this.bannerView.setAdListener(new AdListener() {
                /* class com.google.ads.mediation.adr.Banner.AnonymousClass1 */

                @Override // com.google.android.gms.ads.AdListener
                public void onAdClicked() {
                    customEventBannerListener.onAdClicked();
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdClosed() {
                    customEventBannerListener.onAdClosed();
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdFailedToLoad(LoadAdError loadAdError) {
                    customEventBannerListener.onAdFailedToLoad(loadAdError);
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdLoaded() {
                    customEventBannerListener.onAdLoaded(Banner.this.bannerView);
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdOpened() {
                    customEventBannerListener.onAdOpened();
                }
            });
            AdRequest.Builder builder = new AdRequest.Builder();
            if (cc0.l(context) == ConsentStatus.NON_PERSONALIZED) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("npa", "1");
                builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle2);
            }
            fc0 a = fc0.a();
            a.b(context, "CustomEventBanner@M load " + str);
            this.bannerView.loadAd(builder.build());
        } catch (Throwable th) {
            fc0.a().c(context, th);
            customEventBannerListener.onAdFailedToLoad(Error.getExceptionError("CustomEventBanner@M"));
        }
    }
}
