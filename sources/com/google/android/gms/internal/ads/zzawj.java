package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.common.internal.n;

public final class zzawj implements MediationRewardedAdCallback {
    private final zzank zzdnw;

    public zzawj(zzank zzank) {
        this.zzdnw = zzank;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdClosed.");
        try {
            this.zzdnw.onAdClosed();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(String str) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdFailedToShow.");
        String valueOf = String.valueOf(str);
        zzazk.zzex(valueOf.length() != 0 ? "Mediation ad failed to show: ".concat(valueOf) : new String("Mediation ad failed to show: "));
        try {
            this.zzdnw.zzdj(str);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdOpened.");
        try {
            this.zzdnw.onAdOpened();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onUserEarnedReward(RewardItem rewardItem) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onUserEarnedReward.");
        try {
            this.zzdnw.zza(new zzawi(rewardItem));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoComplete() {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onVideoComplete.");
        try {
            this.zzdnw.zzvf();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoStart() {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onVideoStart.");
        try {
            this.zzdnw.zzve();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called reportAdClicked.");
        try {
            this.zzdnw.onAdClicked();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called reportAdImpression.");
        try {
            this.zzdnw.onAdImpression();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(AdError adError) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdFailedToShow.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(domain).length() + String.valueOf(message).length() + 87);
        sb.append("Mediation ad failed to show: Error Code = ");
        sb.append(code);
        sb.append(". Error Message = ");
        sb.append(message);
        sb.append(" Error Domain = ");
        sb.append(domain);
        zzazk.zzex(sb.toString());
        try {
            this.zzdnw.zzf(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
