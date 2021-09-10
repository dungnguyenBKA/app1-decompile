package com.google.android.gms.internal.ads;

public final class zzbnn implements zzeqb<zzbno> {
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<zzbsd> zzfvu;
    private final zzeqo<zzbtf> zzfvv;

    private zzbnn(zzeqo<zzdmw> zzeqo, zzeqo<zzbsd> zzeqo2, zzeqo<zzbtf> zzeqo3) {
        this.zzfrs = zzeqo;
        this.zzfvu = zzeqo2;
        this.zzfvv = zzeqo3;
    }

    public static zzbnn zzf(zzeqo<zzdmw> zzeqo, zzeqo<zzbsd> zzeqo2, zzeqo<zzbtf> zzeqo3) {
        return new zzbnn(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbno(this.zzfrs.get(), this.zzfvu.get(), this.zzfvv.get());
    }
}
