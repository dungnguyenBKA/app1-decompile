package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;

final class zzaps implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {
    private final /* synthetic */ zzaoy zzdom;
    private final /* synthetic */ zzank zzdon;

    zzaps(zzapt zzapt, zzaoy zzaoy, zzank zzank) {
        this.zzdom = zzaoy;
        this.zzdon = zzank;
    }

    /* access modifiers changed from: private */
    /* renamed from: zza */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        if (mediationBannerAd == null) {
            zzazk.zzex("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zzdom.zzdl("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzazk.zzc("", e);
                return null;
            }
        } else {
            try {
                this.zzdom.zzx(aw.Q(mediationBannerAd.getView()));
            } catch (RemoteException e2) {
                zzazk.zzc("", e2);
            }
            return new zzapz(this.zzdon);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdom.zzdl(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zzdom.zzg(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
