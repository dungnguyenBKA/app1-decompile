package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcml implements zzeqb<zzdzw<String>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzei> zzfru;
    private final zzeqo<zzdzv> zzfyj;

    private zzcml(zzeqo<zzei> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzdzv> zzeqo3) {
        this.zzfru = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfyj = zzeqo3;
    }

    public static zzcml zzx(zzeqo<zzei> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzdzv> zzeqo3) {
        return new zzcml(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdzw) zzeqh.zza(this.zzfyj.get().zze(new zzcmm(this.zzfru.get(), this.zzewk.get())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
