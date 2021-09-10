package com.google.android.gms.internal.ads;

public final class zzbjn implements zzbrr {
    private final zzdnb zzfrc;
    private final zzdnl zzfrd;
    private final zzdsq zzfre;
    private final zzdss zzfrf;

    public zzbjn(zzdnl zzdnl, zzdss zzdss, zzdsq zzdsq) {
        this.zzfrd = zzdnl;
        this.zzfrf = zzdss;
        this.zzfre = zzdsq;
        this.zzfrc = zzdnl.zzhks.zzess;
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        this.zzfrf.zzk(this.zzfre.zza(this.zzfrd, (zzdmw) null, this.zzfrc.zzdms));
    }
}
