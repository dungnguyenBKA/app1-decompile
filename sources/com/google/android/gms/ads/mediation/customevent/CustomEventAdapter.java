package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.zzazk;

@KeepName
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    private static final AdError e = new AdError(0, "Could not instantiate custom event adapter", MobileAds.ERROR_DOMAIN);
    private View a;
    private CustomEventBanner b;
    private CustomEventInterstitial c;
    private CustomEventNative d;

    static void a(CustomEventAdapter customEventAdapter, View view) {
        customEventAdapter.a = view;
    }

    private static <T> T b(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + String.valueOf(str).length() + 46);
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            zzazk.zzex(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.b;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.d;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        CustomEventBanner customEventBanner = this.b;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.d;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        CustomEventBanner customEventBanner = this.b;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.d;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        Bundle bundle3;
        CustomEventBanner customEventBanner = (CustomEventBanner) b(bundle.getString("class_name"));
        this.b = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.onAdFailedToLoad(this, e);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        this.b.requestBannerAd(context, new a(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        Bundle bundle3;
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) b(bundle.getString("class_name"));
        this.c = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, e);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        this.c.requestInterstitialAd(context, new c(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        Bundle bundle3;
        CustomEventNative customEventNative = (CustomEventNative) b(bundle.getString("class_name"));
        this.d = customEventNative;
        if (customEventNative == null) {
            mediationNativeListener.onAdFailedToLoad(this, e);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString("class_name"));
        }
        this.d.requestNativeAd(context, new b(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.c.showInterstitial();
    }

    static final class a implements CustomEventBannerListener {
        private final CustomEventAdapter a;
        private final MediationBannerListener b;

        public a(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.a = customEventAdapter;
            this.b = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzazk.zzdy("Custom event adapter called onAdClicked.");
            this.b.onAdClicked(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzazk.zzdy("Custom event adapter called onAdClosed.");
            this.b.onAdClosed(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzazk.zzdy("Custom event adapter called onAdFailedToLoad.");
            this.b.onAdFailedToLoad(this.a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzazk.zzdy("Custom event adapter called onAdLeftApplication.");
            this.b.onAdLeftApplication(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
        public final void onAdLoaded(View view) {
            zzazk.zzdy("Custom event adapter called onAdLoaded.");
            CustomEventAdapter.a(this.a, view);
            this.b.onAdLoaded(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzazk.zzdy("Custom event adapter called onAdOpened.");
            this.b.onAdOpened(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            zzazk.zzdy("Custom event adapter called onAdFailedToLoad.");
            this.b.onAdFailedToLoad(this.a, adError);
        }
    }

    static class b implements CustomEventNativeListener {
        private final CustomEventAdapter a;
        private final MediationNativeListener b;

        public b(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.a = customEventAdapter;
            this.b = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzazk.zzdy("Custom event adapter called onAdClicked.");
            this.b.onAdClicked(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzazk.zzdy("Custom event adapter called onAdClosed.");
            this.b.onAdClosed(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzazk.zzdy("Custom event adapter called onAdFailedToLoad.");
            this.b.onAdFailedToLoad(this.a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdImpression() {
            zzazk.zzdy("Custom event adapter called onAdImpression.");
            this.b.onAdImpression(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzazk.zzdy("Custom event adapter called onAdLeftApplication.");
            this.b.onAdLeftApplication(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            zzazk.zzdy("Custom event adapter called onAdLoaded.");
            this.b.onAdLoaded(this.a, nativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzazk.zzdy("Custom event adapter called onAdOpened.");
            this.b.onAdOpened(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            zzazk.zzdy("Custom event adapter called onAdFailedToLoad.");
            this.b.onAdFailedToLoad(this.a, adError);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
            zzazk.zzdy("Custom event adapter called onAdLoaded.");
            this.b.onAdLoaded(this.a, unifiedNativeAdMapper);
        }
    }

    class c implements CustomEventInterstitialListener {
        private final CustomEventAdapter a;
        private final MediationInterstitialListener b;

        public c(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.a = customEventAdapter;
            this.b = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzazk.zzdy("Custom event adapter called onAdClicked.");
            this.b.onAdClicked(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzazk.zzdy("Custom event adapter called onAdClosed.");
            this.b.onAdClosed(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.b.onAdFailedToLoad(this.a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzazk.zzdy("Custom event adapter called onAdLeftApplication.");
            this.b.onAdLeftApplication(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onAdLoaded() {
            zzazk.zzdy("Custom event adapter called onReceivedAd.");
            this.b.onAdLoaded(CustomEventAdapter.this);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzazk.zzdy("Custom event adapter called onAdOpened.");
            this.b.onAdOpened(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.b.onAdFailedToLoad(this.a, adError);
        }
    }
}
