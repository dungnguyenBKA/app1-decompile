package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;

public final class zzdag implements zzeqb<zzdzw<zzdak>> {
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzdaj> zzhab;
    private final zzeqo<zzbqu> zzhac;

    public zzdag(zzeqo<zzdrj> zzeqo, zzeqo<zzdaj> zzeqo2, zzeqo<zzbqu> zzeqo3) {
        this.zzfvi = zzeqo;
        this.zzhab = zzeqo2;
        this.zzhac = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdzw) zzeqh.zza(this.zzfvi.get().zza(zzdrk.GENERATE_SIGNALS, this.zzhac.get().zzalj()).zza(this.zzhab.get()).zza((long) ((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS).zzaxj(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
