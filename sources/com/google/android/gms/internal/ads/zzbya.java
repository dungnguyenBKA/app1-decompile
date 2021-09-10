package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbya<T> {
    public Executor executor;
    public T zzgba;

    public zzbya(T t, Executor executor2) {
        this.zzgba = t;
        this.executor = executor2;
    }

    public static <T> zzbya<T> zzb(T t, Executor executor2) {
        return new zzbya<>(t, executor2);
    }
}
