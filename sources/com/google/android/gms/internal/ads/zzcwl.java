package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.overlay.zzn;

public class zzcwl extends zzann {
    private final zzbsw zzfwf;
    private final zzbsm zzfwu;
    private final zzbrt zzgbi;
    private final zzbtj zzgbl;
    private final zzbsd zzgci;
    private final zzbrl zzgcj;
    private final zzbvt zzgjg;
    private final zzbvm zzgwf;
    private final zzbyp zzgwm;

    public zzcwl(zzbrl zzbrl, zzbsd zzbsd, zzbsm zzbsm, zzbsw zzbsw, zzbvt zzbvt, zzbtj zzbtj, zzbyp zzbyp, zzbvm zzbvm, zzbrt zzbrt) {
        this.zzgcj = zzbrl;
        this.zzgci = zzbsd;
        this.zzfwu = zzbsm;
        this.zzfwf = zzbsw;
        this.zzgjg = zzbvt;
        this.zzgbl = zzbtj;
        this.zzgwm = zzbyp;
        this.zzgwf = zzbvm;
        this.zzgbi = zzbrt;
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClicked() {
        this.zzgcj.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClosed() {
        this.zzgbl.zza(zzn.OTHER);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdFailedToLoad(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public void onAdImpression() {
        this.zzgci.onAdImpression();
        this.zzgwf.zzale();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLeftApplication() {
        this.zzfwu.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLoaded() {
        this.zzfwf.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdOpened() {
        this.zzgbl.zzvo();
        this.zzgwf.zzalg();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAppEvent(String str, String str2) {
        this.zzgjg.onAppEvent(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public void onVideoEnd() {
        this.zzgwm.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPause() {
        this.zzgwm.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPlay() {
        this.zzgwm.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzafn zzafn, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzanp zzanp) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public void zza(zzavl zzavl) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public void zzb(zzavj zzavj) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzc(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzd(zzvg zzvg) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    @Deprecated
    public final void zzdb(int i) {
        zzf(new zzvg(i, "", AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdi(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdj(String str) {
        zzf(new zzvg(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzf(zzvg zzvg) {
        this.zzgbi.zzl(zzdok.zza(zzdom.MEDIATION_SHOW_ERROR, zzvg));
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public void zzve() {
        this.zzgwm.onVideoStart();
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public void zzvf() {
    }
}
