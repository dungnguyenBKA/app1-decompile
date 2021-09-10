package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

public final class zzbgj implements zzeqb<Set<zzbya<zzbxl>>> {
    private final zzeqo<zzcpj> zzewe;
    private final zzeqo<Executor> zzewf;

    public zzbgj(zzeqo<zzcpj> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Set set;
        zzcpj zzcpj = this.zzewe.get();
        Executor executor = this.zzewf.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcro)).booleanValue()) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
                set = Collections.singleton(new zzbya(zzcpj, executor));
                return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
            }
        }
        set = Collections.emptySet();
        return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
    }
}
