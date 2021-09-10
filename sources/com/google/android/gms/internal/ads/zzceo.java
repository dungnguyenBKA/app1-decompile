package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.common.util.d;
import java.util.concurrent.Executor;

public final class zzceo implements zzeqb<zzcem> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzay> zzfdj;
    private final zzeqo<d> zzfsz;

    public zzceo(zzeqo<zzay> zzeqo, zzeqo<d> zzeqo2, zzeqo<Executor> zzeqo3) {
        this.zzfdj = zzeqo;
        this.zzfsz = zzeqo2;
        this.zzewf = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcem(this.zzfdj.get(), this.zzfsz.get(), this.zzewf.get());
    }
}
