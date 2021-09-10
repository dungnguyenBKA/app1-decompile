package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbpt implements zzeqb<zzbya<zzbrq>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzckb> zzfxt;
    private final zzeqo<zzcpf> zzfxu;

    private zzbpt(zzeqo<zzckb> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzcpf> zzeqo3) {
        this.zzfxt = zzeqo;
        this.zzewf = zzeqo2;
        this.zzfxu = zzeqo3;
    }

    public static zzbpt zzh(zzeqo<zzckb> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzcpf> zzeqo3) {
        return new zzbpt(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzbya zzbya;
        zzckb zzckb = this.zzfxt.get();
        Executor executor = this.zzewf.get();
        zzcpf zzcpf = this.zzfxu.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            zzbya = new zzbya(zzcpf, executor);
        } else {
            zzbya = new zzbya(zzckb, executor);
        }
        return (zzbya) zzeqh.zza(zzbya, "Cannot return null from a non-@Nullable @Provides method");
    }
}
