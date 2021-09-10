package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.d;
import java.util.concurrent.Executor;

public final class zzcbp implements zzeqb<zzbkm> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<d> zzfsz;
    private final zzeqo<zzqt> zzgde;

    public zzcbp(zzeqo<zzqt> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<Context> zzeqo3, zzeqo<d> zzeqo4) {
        this.zzgde = zzeqo;
        this.zzewf = zzeqo2;
        this.zzewk = zzeqo3;
        this.zzfsz = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbkm) zzeqh.zza(new zzbkm(this.zzewf.get(), new zzbjx(this.zzewk.get(), this.zzgde.get()), this.zzfsz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
