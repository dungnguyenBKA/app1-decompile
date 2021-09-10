package com.google.android.gms.internal.ads;

import java.util.List;

public final class zzbyi implements zzbyf {
    private final List<String> zzdwa;
    private final zzdss zzfrf;
    private boolean zzgbc;

    public zzbyi(zzdmw zzdmw, zzdss zzdss) {
        this.zzdwa = zzdmw.zzdwa;
        this.zzfrf = zzdss;
    }

    @Override // com.google.android.gms.internal.ads.zzbyf
    public final void zzamr() {
        if (!this.zzgbc) {
            this.zzfrf.zzk(this.zzdwa);
            this.zzgbc = true;
        }
    }
}
