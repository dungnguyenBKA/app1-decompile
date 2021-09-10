package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzbpf implements zzbrm, zzbse, zzbtb, zzbua, zzvc {
    private final d zzbqg;
    private final zzayn zzfxn;

    public zzbpf(d dVar, zzayn zzayn) {
        this.zzbqg = dVar;
        this.zzfxn = zzayn;
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        this.zzfxn.zzxj();
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        this.zzfxn.zzxk();
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        this.zzfxn.zzxi();
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        this.zzfxn.zzao(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzauk, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnl) {
        this.zzfxn.zzey(this.zzbqg.b());
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatq) {
    }

    public final void zzf(zzvl zzvl) {
        this.zzfxn.zze(zzvl);
    }

    public final String zzxl() {
        return this.zzfxn.zzxl();
    }
}
