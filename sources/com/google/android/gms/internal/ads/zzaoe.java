package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.Adapter;

public final class zzaoe extends zzann {
    private final zzavf zzdnn;
    private final Adapter zzdnv;

    zzaoe(Adapter adapter, zzavf zzavf) {
        this.zzdnv = adapter;
        this.zzdnn = zzavf;
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClicked() {
        zzavf zzavf = this.zzdnn;
        if (zzavf != null) {
            zzavf.zzak(aw.Q(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClosed() {
        zzavf zzavf = this.zzdnn;
        if (zzavf != null) {
            zzavf.zzaj(aw.Q(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdFailedToLoad(int i) {
        zzavf zzavf = this.zzdnn;
        if (zzavf != null) {
            zzavf.zze(aw.Q(this.zzdnv), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLoaded() {
        zzavf zzavf = this.zzdnn;
        if (zzavf != null) {
            zzavf.zzag(aw.Q(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdOpened() {
        zzavf zzavf = this.zzdnn;
        if (zzavf != null) {
            zzavf.zzah(aw.Q(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAppEvent(String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoEnd() {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPause() {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPlay() {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzafn zzafn, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzanp zzanp) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzavl zzavl) {
        zzavf zzavf = this.zzdnn;
        if (zzavf != null) {
            zzavf.zza(aw.Q(this.zzdnv), new zzavj(zzavl.getType(), zzavl.getAmount()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(zzavj zzavj) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzc(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzd(zzvg zzvg) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdb(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdi(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdj(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzf(zzvg zzvg) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzve() {
        zzavf zzavf = this.zzdnn;
        if (zzavf != null) {
            zzavf.zzai(aw.Q(this.zzdnv));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzvf() {
        zzavf zzavf = this.zzdnn;
        if (zzavf != null) {
            zzavf.zzam(aw.Q(this.zzdnv));
        }
    }
}
