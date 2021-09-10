package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;

/* access modifiers changed from: package-private */
public final class zzaoc implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {
    private final /* synthetic */ zzank zzdns;
    private final /* synthetic */ zzaoa zzdnt;

    zzaoc(zzaoa zzaoa, zzank zzank) {
        this.zzdnt = zzaoa;
        this.zzdns = zzank;
    }

    /* access modifiers changed from: private */
    /* renamed from: zza */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        try {
            this.zzdnt.zzdnp = mediationRewardedAd;
            this.zzdns.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
        return new zzawj(this.zzdns);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            String canonicalName = this.zzdnt.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 31 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ");
            sb.append(str);
            zzazk.zzdy(sb.toString());
            this.zzdns.zzc(0, str);
            this.zzdns.onAdFailedToLoad(0);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            String canonicalName = this.zzdnt.zzdnl.getClass().getCanonicalName();
            int code = adError.getCode();
            String message = adError.getMessage();
            String domain = adError.getDomain();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 87 + String.valueOf(message).length() + String.valueOf(domain).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ErrorCode = ");
            sb.append(code);
            sb.append(". ErrorMessage = ");
            sb.append(message);
            sb.append(". ErrorDomain = ");
            sb.append(domain);
            zzazk.zzdy(sb.toString());
            this.zzdns.zzd(adError.zzdq());
            this.zzdns.zzc(adError.getCode(), adError.getMessage());
            this.zzdns.onAdFailedToLoad(adError.getCode());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
