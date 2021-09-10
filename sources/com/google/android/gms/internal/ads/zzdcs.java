package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdcs implements zzeqb<zzdco> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzfxw;

    private zzdcs(zzeqo<Context> zzeqo, zzeqo<zzdzv> zzeqo2) {
        this.zzfxw = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzdco zza(Context context, zzdzv zzdzv) {
        return new zzdco(context, zzdzv);
    }

    public static zzdcs zzau(zzeqo<Context> zzeqo, zzeqo<zzdzv> zzeqo2) {
        return new zzdcs(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfxw.get(), this.zzewf.get());
    }
}
