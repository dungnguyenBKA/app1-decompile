package com.google.android.gms.internal.ads;

public final class zzcfz implements zzeqb<zzcga> {
    private final zzeqo<String> zzfza;
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzcbu> zzgir;

    private zzcfz(zzeqo<String> zzeqo, zzeqo<zzcbu> zzeqo2, zzeqo<zzccd> zzeqo3) {
        this.zzfza = zzeqo;
        this.zzgir = zzeqo2;
        this.zzgcy = zzeqo3;
    }

    public static zzcfz zzp(zzeqo<String> zzeqo, zzeqo<zzcbu> zzeqo2, zzeqo<zzccd> zzeqo3) {
        return new zzcfz(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcga(this.zzfza.get(), this.zzgir.get(), this.zzgcy.get());
    }
}
