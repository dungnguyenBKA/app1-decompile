package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

public final class zzcjh implements zzeqb<Set<zzbya<zzdrp>>> {
    private final zzeqo<zzcjx> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcjh(zzeqo<Executor> zzeqo, zzeqo<zzcjx> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzewe = zzeqo2;
    }

    public static zzcjh zzac(zzeqo<Executor> zzeqo, zzeqo<zzcjx> zzeqo2) {
        return new zzcjh(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Set set;
        Executor executor = this.zzewf.get();
        zzcjx zzcjx = this.zzewe.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvg)).booleanValue()) {
            set = Collections.singleton(new zzbya(zzcjx, executor));
        } else {
            set = Collections.emptySet();
        }
        return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
    }
}
