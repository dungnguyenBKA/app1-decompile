package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;

final class zzapv implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {
    private final /* synthetic */ zzank zzdon;
    private final /* synthetic */ zzapd zzdos;
    private final /* synthetic */ zzapt zzdot;

    zzapv(zzapt zzapt, zzapd zzapd, zzank zzank) {
        this.zzdot = zzapt;
        this.zzdos = zzapd;
        this.zzdon = zzank;
    }

    /* access modifiers changed from: private */
    /* renamed from: zza */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        if (mediationInterstitialAd == null) {
            zzazk.zzex("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zzdos.zzdl("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzazk.zzc("", e);
                return null;
            }
        } else {
            try {
                this.zzdot.zzdop = mediationInterstitialAd;
                this.zzdos.zzvn();
            } catch (RemoteException e2) {
                zzazk.zzc("", e2);
            }
            return new zzapz(this.zzdon);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdos.zzdl(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zzdos.zzg(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
