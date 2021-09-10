package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzckh implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzckd> zzfxt;
    private final zzeqo<zzcph> zzfxu;

    private zzckh(zzeqo<zzckd> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzcph> zzeqo3) {
        this.zzfxt = zzeqo;
        this.zzewf = zzeqo2;
        this.zzfxu = zzeqo3;
    }

    public static zzckh zzt(zzeqo<zzckd> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzcph> zzeqo3) {
        return new zzckh(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzbya zzbya;
        zzckd zzckd = this.zzfxt.get();
        Executor executor = this.zzewf.get();
        zzcph zzcph = this.zzfxu.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            zzbya = new zzbya(zzcph, executor);
        } else {
            zzbya = new zzbya(zzckd, executor);
        }
        return (zzbya) zzeqh.zza(zzbya, "Cannot return null from a non-@Nullable @Provides method");
    }
}
