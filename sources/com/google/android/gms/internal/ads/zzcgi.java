package com.google.android.gms.internal.ads;

public final class zzcgi implements zzeqb<zzcgf> {
    private final zzeqo<String> zzfza;
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzcbu> zzgir;

    private zzcgi(zzeqo<String> zzeqo, zzeqo<zzcbu> zzeqo2, zzeqo<zzccd> zzeqo3) {
        this.zzfza = zzeqo;
        this.zzgir = zzeqo2;
        this.zzgcy = zzeqo3;
    }

    public static zzcgi zzr(zzeqo<String> zzeqo, zzeqo<zzcbu> zzeqo2, zzeqo<zzccd> zzeqo3) {
        return new zzcgi(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcgf(this.zzfza.get(), this.zzgir.get(), this.zzgcy.get());
    }
}
