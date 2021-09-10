package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcvs implements zzdvz {
    private final zzdmw zzfva;
    private final zzbeb zzggw;
    private final zzcvo zzgvr;
    private final zzchd zzgvs;

    zzcvs(zzcvo zzcvo, zzbeb zzbeb, zzdmw zzdmw, zzchd zzchd) {
        this.zzgvr = zzcvo;
        this.zzggw = zzbeb;
        this.zzfva = zzdmw;
        this.zzgvs = zzchd;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        zzbeb zzbeb = this.zzggw;
        zzdmw zzdmw = this.zzfva;
        zzchd zzchd = this.zzgvs;
        if (zzdmw.zzdxt) {
            zzbeb.zzadk();
        }
        zzbeb.zzacr();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcoz)).booleanValue()) {
            zzbeb.onPause();
        }
        return zzchd.zzaig();
    }
}
