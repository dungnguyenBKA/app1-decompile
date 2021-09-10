package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzn;

final class zzcwc extends zzave {
    private final /* synthetic */ zzbtj zzgvz;
    private final /* synthetic */ zzbrl zzgwa;
    private final /* synthetic */ zzbsm zzgwb;
    private final /* synthetic */ zzbyk zzgwc;

    zzcwc(zzcvy zzcvy, zzbtj zzbtj, zzbrl zzbrl, zzbsm zzbsm, zzbyk zzbyk) {
        this.zzgvz = zzbtj;
        this.zzgwa = zzbrl;
        this.zzgwb = zzbsm;
        this.zzgwc = zzbyk;
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zza(zv zvVar, zzavj zzavj) {
        this.zzgwc.zza(zzavj);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzaf(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzag(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzah(zv zvVar) {
        this.zzgvz.zzvo();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzai(zv zvVar) {
        this.zzgwc.zzuc();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzaj(zv zvVar) {
        this.zzgvz.zza(zzn.OTHER);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzak(zv zvVar) {
        this.zzgwa.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzal(zv zvVar) {
        this.zzgwb.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzam(zv zvVar) {
        this.zzgwb.onRewardedVideoCompleted();
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzd(zv zvVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zze(zv zvVar, int i) {
    }
}
