package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;

public final class zzcgz implements zzair {
    private final zzbsm zzfwu;
    private final zzavj zzgjq;
    private final String zzgjr;
    private final String zzgjs;

    public zzcgz(zzbsm zzbsm, zzdmw zzdmw) {
        this.zzfwu = zzbsm;
        this.zzgjq = zzdmw.zzdwm;
        this.zzgjr = zzdmw.zzdmf;
        this.zzgjs = zzdmw.zzdmg;
    }

    @Override // com.google.android.gms.internal.ads.zzair
    @ParametersAreNonnullByDefault
    public final void zza(zzavj zzavj) {
        int i;
        String str;
        zzavj zzavj2 = this.zzgjq;
        if (zzavj2 != null) {
            zzavj = zzavj2;
        }
        if (zzavj != null) {
            str = zzavj.type;
            i = zzavj.zzdzc;
        } else {
            str = "";
            i = 1;
        }
        this.zzfwu.zzb(new zzaui(str, i), this.zzgjr, this.zzgjs);
    }

    @Override // com.google.android.gms.internal.ads.zzair
    public final void zzuc() {
        this.zzfwu.onRewardedVideoStarted();
    }

    @Override // com.google.android.gms.internal.ads.zzair
    public final void zzud() {
        this.zzfwu.onRewardedVideoCompleted();
    }
}
