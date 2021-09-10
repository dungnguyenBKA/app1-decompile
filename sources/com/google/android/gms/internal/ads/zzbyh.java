package com.google.android.gms.internal.ads;

public final class zzbyh implements zzeqb<zzbyi> {
    private final zzeqo<zzdss> zzexv;
    private final zzeqo<zzdmw> zzfrs;

    private zzbyh(zzeqo<zzdmw> zzeqo, zzeqo<zzdss> zzeqo2) {
        this.zzfrs = zzeqo;
        this.zzexv = zzeqo2;
    }

    public static zzbyh zzs(zzeqo<zzdmw> zzeqo, zzeqo<zzdss> zzeqo2) {
        return new zzbyh(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbyi(this.zzfrs.get(), this.zzexv.get());
    }
}
