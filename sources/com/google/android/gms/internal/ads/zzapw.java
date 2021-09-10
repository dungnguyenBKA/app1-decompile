package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;

/* access modifiers changed from: package-private */
public final class zzapw implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {
    private final /* synthetic */ zzank zzdon;
    private final /* synthetic */ zzapt zzdot;
    private final /* synthetic */ zzapj zzdou;

    zzapw(zzapt zzapt, zzapj zzapj, zzank zzank) {
        this.zzdot = zzapt;
        this.zzdou = zzapj;
        this.zzdon = zzank;
    }

    /* access modifiers changed from: private */
    /* renamed from: zza */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        if (mediationRewardedAd == null) {
            zzazk.zzex("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zzdou.zzdl("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzazk.zzc("", e);
                return null;
            }
        } else {
            try {
                this.zzdot.zzdnp = mediationRewardedAd;
                this.zzdou.zzvn();
            } catch (RemoteException e2) {
                zzazk.zzc("", e2);
            }
            return new zzapz(this.zzdon);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdou.zzdl(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zzdou.zzg(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
