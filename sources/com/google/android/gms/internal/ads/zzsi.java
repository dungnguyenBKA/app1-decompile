package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;

public final class zzsi extends AppOpenAd {
    private final String zzbut;
    private final zzsk zzbuu;
    private final zzsl zzbuv = new zzsl();
    private FullScreenContentCallback zzbuw;

    public zzsi(zzsk zzsk, String str) {
        this.zzbuu = zzsk;
        this.zzbut = str;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final String getAdUnitId() {
        return this.zzbut;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzbuw;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final ResponseInfo getResponseInfo() {
        zzyx zzyx;
        try {
            zzyx = this.zzbuu.zzki();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            zzyx = null;
        }
        return ResponseInfo.zza(zzyx);
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.zzbuw = fullScreenContentCallback;
        this.zzbuv.setFullScreenContentCallback(fullScreenContentCallback);
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.zzbuu.setImmersiveMode(z);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(Activity activity, FullScreenContentCallback fullScreenContentCallback) {
        this.zzbuw = fullScreenContentCallback;
        this.zzbuv.setFullScreenContentCallback(fullScreenContentCallback);
        if (activity == null) {
            zzazk.zzex("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.zzbuu.zza(aw.Q(activity), this.zzbuv);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void zza(zzsq zzsq) {
        try {
            this.zzbuu.zza(zzsq);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final zzxl zzdx() {
        try {
            return this.zzbuu.zzdx();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(Activity activity) {
        try {
            this.zzbuu.zza(aw.Q(activity), this.zzbuv);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
