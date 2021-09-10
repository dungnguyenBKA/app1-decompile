package com.google.android.gms.internal.ads;

public final class zzdsi implements zzeqb<zzdsf> {
    private final zzeqo<zzdsh> zzewt;
    private final zzeqo<zzdsj> zzgme;
    private final zzeqo<zzdrw> zzhru;

    public zzdsi(zzeqo<zzdrw> zzeqo, zzeqo<zzdsj> zzeqo2, zzeqo<zzdsh> zzeqo3) {
        this.zzhru = zzeqo;
        this.zzgme = zzeqo2;
        this.zzewt = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdsf(this.zzhru.get(), this.zzgme.get(), this.zzewt.get());
    }
}
