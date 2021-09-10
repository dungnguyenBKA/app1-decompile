package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzctj implements zzdvz {
    private final zzdmw zzfva;
    private final zzbeb zzggw;
    private final zzctf zzguj;
    private final zzbza zzguk;

    zzctj(zzctf zzctf, zzbeb zzbeb, zzdmw zzdmw, zzbza zzbza) {
        this.zzguj = zzctf;
        this.zzggw = zzbeb;
        this.zzfva = zzdmw;
        this.zzguk = zzbza;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        zzbeb zzbeb = this.zzggw;
        zzdmw zzdmw = this.zzfva;
        zzbza zzbza = this.zzguk;
        if (zzdmw.zzdxt) {
            zzbeb.zzadk();
        }
        zzbeb.zzacr();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcoz)).booleanValue()) {
            zzbeb.onPause();
        }
        return zzbza.zzahz();
    }
}
