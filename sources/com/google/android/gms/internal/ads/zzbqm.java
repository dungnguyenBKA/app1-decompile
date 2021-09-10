package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;

public final class zzbqm implements zzeqb<zzdvz<zzdmw, zzad>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzdnp> zzfvf;

    public zzbqm(zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<zzdnp> zzeqo3) {
        this.zzewk = zzeqo;
        this.zzfqo = zzeqo2;
        this.zzfvf = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdvz) zzeqh.zza(new zzbqj(this.zzewk.get(), this.zzfqo.get(), this.zzfvf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
