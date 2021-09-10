package com.google.android.gms.internal.gtm;

public final class zzet<V> {
    private final zzes<V> zza;
    private final V zzb;
    private final V zzc;
    private final Object zzd = new Object();

    private zzet(V v, V v2, zzes<V> zzes) {
        this.zzb = v;
        this.zzc = v2;
        this.zza = zzes;
    }

    static <T> zzet<T> zza(T t, T t2, zzes<T> zzes) {
        return new zzet<>(t, t2, zzes);
    }

    public final V zzb() {
        synchronized (this.zzd) {
        }
        return this.zzb;
    }
}
