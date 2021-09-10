package com.google.android.gms.internal.ads;

public final class zzcgb implements zzeqb<zzcgc> {
    private final zzeqo<String> zzfza;
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzcbu> zzgir;

    private zzcgb(zzeqo<String> zzeqo, zzeqo<zzcbu> zzeqo2, zzeqo<zzccd> zzeqo3) {
        this.zzfza = zzeqo;
        this.zzgir = zzeqo2;
        this.zzgcy = zzeqo3;
    }

    public static zzcgb zzq(zzeqo<String> zzeqo, zzeqo<zzcbu> zzeqo2, zzeqo<zzccd> zzeqo3) {
        return new zzcgb(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcgc(this.zzfza.get(), this.zzgir.get(), this.zzgcy.get());
    }
}
