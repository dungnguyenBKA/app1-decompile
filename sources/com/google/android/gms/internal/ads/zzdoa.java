package com.google.android.gms.internal.ads;

public final class zzdoa implements zzeqb<zzdnx> {
    private final zzeqo<zzdss> zzexv;
    private final zzeqo<zzdmw> zzfvr;
    private final zzeqo<zzdnb> zzgji;
    private final zzeqo<zzcqr> zzgjo;

    private zzdoa(zzeqo<zzcqr> zzeqo, zzeqo<zzdss> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzdnb> zzeqo4) {
        this.zzgjo = zzeqo;
        this.zzexv = zzeqo2;
        this.zzfvr = zzeqo3;
        this.zzgji = zzeqo4;
    }

    public static zzdoa zzk(zzeqo<zzcqr> zzeqo, zzeqo<zzdss> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzdnb> zzeqo4) {
        return new zzdoa(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdnx(this.zzgjo.get(), this.zzexv.get(), this.zzfvr.get(), this.zzgji.get());
    }
}
