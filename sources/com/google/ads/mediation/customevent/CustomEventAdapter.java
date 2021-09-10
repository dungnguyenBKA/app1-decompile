package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.zzazk;

@KeepName
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>, MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters> {
    private View zznc;
    private CustomEventBanner zznd;
    private CustomEventInterstitial zzne;

    /* access modifiers changed from: package-private */
    public class zza implements CustomEventInterstitialListener {
        private final CustomEventAdapter zznf;
        private final MediationInterstitialListener zzng;

        public zza(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zznf = customEventAdapter;
            this.zzng = mediationInterstitialListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            zzazk.zzdy("Custom event adapter called onDismissScreen.");
            this.zzng.onDismissScreen(this.zznf);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.zzng.onFailedToReceiveAd(this.zznf, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            zzazk.zzdy("Custom event adapter called onLeaveApplication.");
            this.zzng.onLeaveApplication(this.zznf);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            zzazk.zzdy("Custom event adapter called onPresentScreen.");
            this.zzng.onPresentScreen(this.zznf);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onReceivedAd() {
            zzazk.zzdy("Custom event adapter called onReceivedAd.");
            this.zzng.onReceivedAd(CustomEventAdapter.this);
        }
    }

    /* access modifiers changed from: package-private */
    public static final class zzb implements CustomEventBannerListener {
        private final CustomEventAdapter zznf;
        private final MediationBannerListener zzni;

        public zzb(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zznf = customEventAdapter;
            this.zzni = mediationBannerListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onClick() {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.zzni.onClick(this.zznf);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.zzni.onDismissScreen(this.zznf);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.zzni.onFailedToReceiveAd(this.zznf, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.zzni.onLeaveApplication(this.zznf);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.zzni.onPresentScreen(this.zznf);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onReceivedAd(View view) {
            zzazk.zzdy("Custom event adapter called onReceivedAd.");
            this.zznf.zza(view);
            this.zzni.onReceivedAd(this.zznf);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(View view) {
        this.zznc = view;
    }

    private static <T> T zzal(String str) {
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

    @Override // com.google.ads.mediation.MediationAdapter
    public final void destroy() {
        CustomEventBanner customEventBanner = this.zznd;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.zzne;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.zznc;
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    public final void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters customEventServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        Object obj;
        CustomEventBanner customEventBanner = (CustomEventBanner) zzal(customEventServerParameters.className);
        this.zznd = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras == null) {
            obj = null;
        } else {
            obj = customEventExtras.getExtra(customEventServerParameters.label);
        }
        this.zznd.requestBannerAd(new zzb(this, mediationBannerListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, adSize, mediationAdRequest, obj);
    }

    public final void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters customEventServerParameters, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        Object obj;
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) zzal(customEventServerParameters.className);
        this.zzne = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras == null) {
            obj = null;
        } else {
            obj = customEventExtras.getExtra(customEventServerParameters.label);
        }
        this.zzne.requestInterstitialAd(new zza(this, mediationInterstitialListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, mediationAdRequest, obj);
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.zzne.showInterstitial();
    }
}
