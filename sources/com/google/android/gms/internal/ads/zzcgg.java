package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcgg implements zzeqb<zzcge> {
    private final zzeqo<zzccz> zzfim;
    private final zzeqo<Context> zzfxw;
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzcbu> zzgir;

    private zzcgg(zzeqo<Context> zzeqo, zzeqo<zzccd> zzeqo2, zzeqo<zzccz> zzeqo3, zzeqo<zzcbu> zzeqo4) {
        this.zzfxw = zzeqo;
        this.zzgcy = zzeqo2;
        this.zzfim = zzeqo3;
        this.zzgir = zzeqo4;
    }

    public static zzcgg zzc(zzeqo<Context> zzeqo, zzeqo<zzccd> zzeqo2, zzeqo<zzccz> zzeqo3, zzeqo<zzcbu> zzeqo4) {
        return new zzcgg(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcge(this.zzfxw.get(), this.zzgcy.get(), this.zzfim.get(), this.zzgir.get());
    }
}
