package com.google.ads.mediation.adr;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.consent.ConsentStatus;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitial;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener;

public class Interstitial implements CustomEventInterstitial {
    final String TAG = "CustomEventInterstitial@M";
    private InterstitialAd interstitialAd;
    private CustomEventInterstitialListener mEventInterstitialListener;

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onDestroy() {
        InterstitialAd interstitialAd2 = this.interstitialAd;
        if (interstitialAd2 != null) {
            interstitialAd2.setAdListener(null);
            this.interstitialAd = null;
        }
        this.mEventInterstitialListener = null;
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitial
    public void requestInterstitialAd(Context context, CustomEventInterstitialListener customEventInterstitialListener, String str, MediationAdRequest mediationAdRequest, Bundle bundle) {
        try {
            this.mEventInterstitialListener = customEventInterstitialListener;
            InterstitialAd interstitialAd2 = new InterstitialAd(context.getApplicationContext());
            this.interstitialAd = interstitialAd2;
            interstitialAd2.setAdUnitId(str);
            this.interstitialAd.setAdListener(new AdListener() {
                /* class com.google.ads.mediation.adr.Interstitial.AnonymousClass1 */

                @Override // com.google.android.gms.ads.AdListener
                public void onAdClicked() {
                    Interstitial.this.mEventInterstitialListener.onAdClicked();
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdClosed() {
                    Interstitial.this.mEventInterstitialListener.onAdClosed();
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdFailedToLoad(LoadAdError loadAdError) {
                    Interstitial.this.mEventInterstitialListener.onAdFailedToLoad(loadAdError);
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdImpression() {
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdLoaded() {
                    Interstitial.this.mEventInterstitialListener.onAdLoaded();
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdOpened() {
                    Interstitial.this.mEventInterstitialListener.onAdOpened();
                }
            });
            AdRequest.Builder builder = new AdRequest.Builder();
            if (cc0.l(context) == ConsentStatus.NON_PERSONALIZED) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("npa", "1");
                builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle2);
            }
            fc0 a = fc0.a();
            a.b(context, "CustomEventInterstitial@M load " + str);
            this.interstitialAd.loadAd(builder.build());
        } catch (Throwable th) {
            fc0.a().c(context, th);
            this.mEventInterstitialListener.onAdFailedToLoad(Error.getExceptionError("CustomEventInterstitial@M"));
        }
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitial
    public void showInterstitial() {
        InterstitialAd interstitialAd2 = this.interstitialAd;
        if (interstitialAd2 == null || !interstitialAd2.isLoaded()) {
            this.mEventInterstitialListener.onAdClosed();
        } else {
            this.interstitialAd.show();
        }
    }
}
