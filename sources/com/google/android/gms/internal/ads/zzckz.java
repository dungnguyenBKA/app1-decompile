package com.google.android.gms.internal.ads;

public final class zzckz implements zzeqb<zzcla> {
    private final zzeqo<String> zzgmg;
    private final zzeqo<zzckw> zzgmh;

    public zzckz(zzeqo<String> zzeqo, zzeqo<zzckw> zzeqo2) {
        this.zzgmg = zzeqo;
        this.zzgmh = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcla(this.zzgmg.get(), this.zzgmh.get());
    }
}
