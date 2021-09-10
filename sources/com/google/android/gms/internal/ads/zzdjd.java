package com.google.android.gms.internal.ads;

final class zzdjd implements zzcze<zzblq> {
    private final /* synthetic */ zzdiz zzhgf;

    zzdjd(zzdiz zzdiz) {
        this.zzhgf = zzdiz;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzblq zzblq) {
        zzblq zzblq2 = zzblq;
        synchronized (this.zzhgf) {
            zzblq zzblq3 = this.zzhgf.zzhgd;
            if (zzblq3 != null) {
                zzblq3.destroy();
            }
            zzdiz zzdiz = this.zzhgf;
            zzdiz.zzhgd = zzblq2;
            zzdiz.zza((zzdiz) zzblq2);
            zzdil zzdil = this.zzhgf.zzhfd;
            zzdiz zzdiz2 = this.zzhgf;
            zzdil.zzb(new zzblp(zzblq2, zzdiz2, zzdiz2.zzhfd));
            zzblq2.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzhgf) {
            this.zzhgf.zzhgd = null;
        }
    }
}
