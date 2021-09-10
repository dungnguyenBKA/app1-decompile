package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcsx implements zzeqb<zzcsw> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzbzy> zzgtg;
    private final zzeqo<zzdmu> zzgua;

    public zzcsx(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzbzy> zzeqo3, zzeqo<zzdmu> zzeqo4) {
        this.zzewk = zzeqo;
        this.zzfux = zzeqo2;
        this.zzgtg = zzeqo3;
        this.zzgua = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcsw(this.zzewk.get(), this.zzfux.get(), this.zzgtg.get(), this.zzgua.get());
    }
}
