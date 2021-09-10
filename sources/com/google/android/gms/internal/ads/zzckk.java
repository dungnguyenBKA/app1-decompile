package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzckk implements zzeqb<zzbya<zzdrp>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzckr> zzfxt;
    private final zzeqo<zzcpn> zzfxu;

    private zzckk(zzeqo<zzckr> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzcpn> zzeqo3) {
        this.zzfxt = zzeqo;
        this.zzewf = zzeqo2;
        this.zzfxu = zzeqo3;
    }

    public static zzckk zzv(zzeqo<zzckr> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzcpn> zzeqo3) {
        return new zzckk(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzbya zzbya;
        zzckr zzckr = this.zzfxt.get();
        Executor executor = this.zzewf.get();
        zzcpn zzcpn = this.zzfxu.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            zzbya = new zzbya(zzcpn, executor);
        } else {
            zzbya = new zzbya(zzckr, executor);
        }
        return (zzbya) zzeqh.zza(zzbya, "Cannot return null from a non-@Nullable @Provides method");
    }
}
