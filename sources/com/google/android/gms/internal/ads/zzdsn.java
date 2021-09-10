package com.google.android.gms.internal.ads;

public final class zzdsn implements zzeqb<zzdso> {
    private final zzeqo<zzdsh> zzewt;
    private final zzeqo<zzdsj> zzgme;

    public zzdsn(zzeqo<zzdsj> zzeqo, zzeqo<zzdsh> zzeqo2) {
        this.zzgme = zzeqo;
        this.zzewt = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdso(this.zzgme.get(), this.zzewt.get());
    }
}
