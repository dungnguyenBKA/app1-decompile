package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbkd implements zzeqb<zzbju> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzqt> zzfsu;
    private final zzeqo<zzamo> zzfsv;

    private zzbkd(zzeqo<zzqt> zzeqo, zzeqo<zzamo> zzeqo2, zzeqo<Executor> zzeqo3) {
        this.zzfsu = zzeqo;
        this.zzfsv = zzeqo2;
        this.zzewf = zzeqo3;
    }

    public static zzbkd zza(zzeqo<zzqt> zzeqo, zzeqo<zzamo> zzeqo2, zzeqo<Executor> zzeqo3) {
        return new zzbkd(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbju) zzeqh.zza(new zzbju(this.zzfsu.get().getUniqueId(), this.zzfsv.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
