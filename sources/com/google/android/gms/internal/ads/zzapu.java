package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;

final class zzapu implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {
    private final /* synthetic */ zzank zzdon;
    private final /* synthetic */ zzape zzdor;

    zzapu(zzapt zzapt, zzape zzape, zzank zzank) {
        this.zzdor = zzape;
        this.zzdon = zzank;
    }

    /* access modifiers changed from: private */
    /* renamed from: zza */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        if (unifiedNativeAdMapper == null) {
            zzazk.zzex("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zzdor.zzdl("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzazk.zzc("", e);
                return null;
            }
        } else {
            try {
                this.zzdor.zza(new zzaoz(unifiedNativeAdMapper));
            } catch (RemoteException e2) {
                zzazk.zzc("", e2);
            }
            return new zzapz(this.zzdon);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdor.zzdl(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zzdor.zzg(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
