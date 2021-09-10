package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

public final class zzclh implements zzeqb<Set<zzbya<zzbua>>> {
    public static Set<zzbya<zzbua>> zza(zzcle zzcle, zzclo zzclo, Executor executor) {
        return (Set) zzeqh.zza(zzcle.zzi(zzclo, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
