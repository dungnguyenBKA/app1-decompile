package com.google.android.gms.internal.ads;

public final class zzbmw implements zzeqb<zzcrj<zzblv>> {
    private final zzeqo<zzcwi<zzblv, zzdog, zzctd>> zzfde;
    private final zzeqo<Boolean> zzfnm;
    private final zzeqo<zzcuq> zzfno;

    public zzbmw(zzeqo<Boolean> zzeqo, zzeqo<zzcuq> zzeqo2, zzeqo<zzcwi<zzblv, zzdog, zzctd>> zzeqo3) {
        this.zzfnm = zzeqo;
        this.zzfno = zzeqo2;
        this.zzfde = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        boolean booleanValue = this.zzfnm.get().booleanValue();
        zzcuq zzcuq = this.zzfno.get();
        zzcwi<zzblv, zzdog, zzctd> zzcwi = this.zzfde.get();
        if (!booleanValue) {
            zzcuq = zzcwi;
        }
        return (zzcrj) zzeqh.zza(zzcuq, "Cannot return null from a non-@Nullable @Provides method");
    }
}
