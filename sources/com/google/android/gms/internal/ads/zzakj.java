package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AppEventListener;

public final class zzakj<AdT> extends AdManagerInterstitialAd {
    private final Context context;
    private final zzvq zzact = zzvq.zzcif;
    private AppEventListener zzbsf;
    private final String zzbut;
    private FullScreenContentCallback zzbuw;
    private final zzxl zzbuz;
    private OnPaidEventListener zzckr;

    public zzakj(Context context2, String str) {
        this.context = context2;
        this.zzbut = str;
        this.zzbuz = zzwr.zzqo().zzb(context2, new zzvs(), str, new zzanf());
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final String getAdUnitId() {
        return this.zzbut;
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final AppEventListener getAppEventListener() {
        return this.zzbsf;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzbuw;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzckr;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final ResponseInfo getResponseInfo() {
        zzyx zzyx = null;
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzyx = zzxl.zzki();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(zzyx);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzbsf = appEventListener;
            this.zzbuz.zza(appEventListener != null ? new zzrg(appEventListener) : null);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.zzbuw = fullScreenContentCallback;
            this.zzbuz.zza(new zzwt(fullScreenContentCallback));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.zzbuz.setImmersiveMode(z);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzckr = onPaidEventListener;
            this.zzbuz.zza(new zzaap(onPaidEventListener));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(Activity activity) {
        if (activity == null) {
            zzazk.zzex("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.zzbuz.zze(aw.Q(activity));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzzk zzzk, AdLoadCallback<AdT> adLoadCallback) {
        try {
            this.zzbuz.zza(zzvq.zza(this.context, zzzk), new zzvh(adLoadCallback, this));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }
}
