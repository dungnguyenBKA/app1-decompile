package com.google.android.gms.internal.ads;

public final class zzcux implements zzeqb<zzcuy> {
    private final zzeqo<zzcim> zzexc;
    private final zzeqo<zzckn> zzexw;
    private final zzeqo<zzdoc> zzeyk;
    private final zzeqo<zzdrz> zzgjp;

    private zzcux(zzeqo<zzdoc> zzeqo, zzeqo<zzcim> zzeqo2, zzeqo<zzckn> zzeqo3, zzeqo<zzdrz> zzeqo4) {
        this.zzeyk = zzeqo;
        this.zzexc = zzeqo2;
        this.zzexw = zzeqo3;
        this.zzgjp = zzeqo4;
    }

    public static zzcux zzf(zzeqo<zzdoc> zzeqo, zzeqo<zzcim> zzeqo2, zzeqo<zzckn> zzeqo3, zzeqo<zzdrz> zzeqo4) {
        return new zzcux(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcuy(this.zzeyk.get(), this.zzexc.get(), this.zzexw.get(), this.zzgjp.get());
    }
}
