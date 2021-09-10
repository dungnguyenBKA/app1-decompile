package com.google.android.gms.internal.ads;

public final class zzeqe<T> implements zzepv<T>, zzeqb<T> {
    private static final zzeqe<Object> zzjcb = new zzeqe<>(null);
    private final T zzegu;

    private zzeqe(T t) {
        this.zzegu = t;
    }

    public static <T> zzeqb<T> zzbb(T t) {
        return new zzeqe(zzeqh.zza(t, "instance cannot be null"));
    }

    public static <T> zzeqb<T> zzbc(T t) {
        if (t == null) {
            return zzjcb;
        }
        return new zzeqe(t);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo, com.google.android.gms.internal.ads.zzepv
    public final T get() {
        return this.zzegu;
    }
}
