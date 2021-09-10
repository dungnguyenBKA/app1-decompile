package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;

public final class zzcie implements zzeqb<zzchq> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzacq> zzfdl;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzbts> zzfvg;
    private final zzeqo<zzei> zzgcz;
    private final zzeqo<zztu> zzgii;
    private final zzeqo<zzbej> zzgjn;
    private final zzeqo<zzb> zzgke;

    private zzcie(zzeqo<zzbej> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzei> zzeqo3, zzeqo<zzacq> zzeqo4, zzeqo<zzazn> zzeqo5, zzeqo<zzb> zzeqo6, zzeqo<zztu> zzeqo7, zzeqo<zzbts> zzeqo8) {
        this.zzgjn = zzeqo;
        this.zzewk = zzeqo2;
        this.zzgcz = zzeqo3;
        this.zzfdl = zzeqo4;
        this.zzfqo = zzeqo5;
        this.zzgke = zzeqo6;
        this.zzgii = zzeqo7;
        this.zzfvg = zzeqo8;
    }

    public static zzcie zza(zzeqo<zzbej> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzei> zzeqo3, zzeqo<zzacq> zzeqo4, zzeqo<zzazn> zzeqo5, zzeqo<zzb> zzeqo6, zzeqo<zztu> zzeqo7, zzeqo<zzbts> zzeqo8) {
        return new zzcie(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6, zzeqo7, zzeqo8);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzchq(this.zzgjn.get(), this.zzewk.get(), this.zzgcz.get(), this.zzfdl.get(), this.zzfqo.get(), this.zzgke.get(), this.zzgii.get(), this.zzfvg.get());
    }
}
