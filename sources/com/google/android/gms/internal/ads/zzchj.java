package com.google.android.gms.internal.ads;

public final class zzchj implements zzeqb<zzcrj<zzchb>> {
    private final zzeqo<zzcwi<zzchb, zzdog, zzctg>> zzfsx;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzcwi<zzchb, zzdog, zzctd>> zzgjt;

    public zzchj(zzeqo<zzcwi<zzchb, zzdog, zzctg>> zzeqo, zzeqo<zzcwi<zzchb, zzdog, zzctd>> zzeqo2, zzeqo<zzdnp> zzeqo3) {
        this.zzfsx = zzeqo;
        this.zzgjt = zzeqo2;
        this.zzfvf = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzcwi<zzchb, zzdog, zzctg> zzcwi;
        zzeqo<zzcwi<zzchb, zzdog, zzctg>> zzeqo = this.zzfsx;
        zzeqo<zzcwi<zzchb, zzdog, zzctd>> zzeqo2 = this.zzgjt;
        if (zzchk.zzgju[this.zzfvf.get().zzhle.zzhki - 1] != 1) {
            zzcwi = zzeqo2.get();
        } else {
            zzcwi = zzeqo.get();
        }
        return (zzcrj) zzeqh.zza(zzcwi, "Cannot return null from a non-@Nullable @Provides method");
    }
}
