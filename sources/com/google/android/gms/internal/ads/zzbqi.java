package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;

public final class zzbqi implements zzeqb<zzbqf> {
    private final zzeqo<zzclq> zzexo;
    private final zzeqo<zzf> zzfag;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<Context> zzfxw;

    private zzbqi(zzeqo<Context> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<zzazn> zzeqo3, zzeqo<zzf> zzeqo4, zzeqo<zzclq> zzeqo5) {
        this.zzfxw = zzeqo;
        this.zzfvf = zzeqo2;
        this.zzftb = zzeqo3;
        this.zzfag = zzeqo4;
        this.zzexo = zzeqo5;
    }

    public static zzbqi zzb(zzeqo<Context> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<zzazn> zzeqo3, zzeqo<zzf> zzeqo4, zzeqo<zzclq> zzeqo5) {
        return new zzbqi(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbqf(this.zzfxw.get(), this.zzfvf.get(), this.zzftb.get(), this.zzfag.get(), this.zzexo.get());
    }
}
