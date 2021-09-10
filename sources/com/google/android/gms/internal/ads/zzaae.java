package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Collections;
import java.util.List;

public final class zzaae extends zzyf {
    private zzajk zzcll;

    @Override // com.google.android.gms.internal.ads.zzyg
    public final String getVersionString() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void initialize() {
        zzazk.zzev("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zzaza.zzaac.post(new zzaah(this));
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void setAppMuted(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void setAppVolume(float f) {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzaao zzaao) {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzajk zzajk) {
        this.zzcll = zzajk;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzane zzane) {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(String str, zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzb(zv zvVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzcd(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzce(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final float zzra() {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final boolean zzrb() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final List<zzajh> zzrc() {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzrd() {
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzru() {
        zzajk zzajk = this.zzcll;
        if (zzajk != null) {
            try {
                zzajk.zze(Collections.emptyList());
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onComplete event.", e);
            }
        }
    }
}
