package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcry implements zzdvz {
    private final zzdmw zzfva;
    private final zzbeb zzggw;
    private final zzcru zzgta;
    private final zzbli zzgth;

    zzcry(zzcru zzcru, zzbeb zzbeb, zzdmw zzdmw, zzbli zzbli) {
        this.zzgta = zzcru;
        this.zzggw = zzbeb;
        this.zzfva = zzdmw;
        this.zzgth = zzbli;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        zzbeb zzbeb = this.zzggw;
        zzdmw zzdmw = this.zzfva;
        zzbli zzbli = this.zzgth;
        if (zzdmw.zzdxt) {
            zzbeb.zzadk();
        }
        zzbeb.zzacr();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcoz)).booleanValue()) {
            zzbeb.onPause();
        }
        return zzbli.zzahd();
    }
}
