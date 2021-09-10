package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.concurrent.Executor;

public final class zzcdd implements zzeqb<zzccz> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzf> zzfag;
    private final zzeqo<zzcch> zzfih;
    private final zzeqo<zzcdh> zzfii;
    private final zzeqo<zzcdp> zzfij;
    private final zzeqo<zzccc> zzfil;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzccd> zzgcy;

    private zzcdd(zzeqo<zzf> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<zzcch> zzeqo3, zzeqo<zzccd> zzeqo4, zzeqo<zzcdh> zzeqo5, zzeqo<zzcdp> zzeqo6, zzeqo<Executor> zzeqo7, zzeqo<Executor> zzeqo8, zzeqo<zzccc> zzeqo9) {
        this.zzfag = zzeqo;
        this.zzfvf = zzeqo2;
        this.zzfih = zzeqo3;
        this.zzgcy = zzeqo4;
        this.zzfii = zzeqo5;
        this.zzfij = zzeqo6;
        this.zzfux = zzeqo7;
        this.zzewf = zzeqo8;
        this.zzfil = zzeqo9;
    }

    public static zzcdd zza(zzeqo<zzf> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<zzcch> zzeqo3, zzeqo<zzccd> zzeqo4, zzeqo<zzcdh> zzeqo5, zzeqo<zzcdp> zzeqo6, zzeqo<Executor> zzeqo7, zzeqo<Executor> zzeqo8, zzeqo<zzccc> zzeqo9) {
        return new zzcdd(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6, zzeqo7, zzeqo8, zzeqo9);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzccz(this.zzfag.get(), this.zzfvf.get(), this.zzfih.get(), this.zzgcy.get(), this.zzfii.get(), this.zzfij.get(), this.zzfux.get(), this.zzewf.get(), this.zzfil.get());
    }
}
