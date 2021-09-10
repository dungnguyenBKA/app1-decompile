package com.google.android.gms.internal.ads;

public final class zzeql<T> implements zzeqo<T> {
    private static final Object zzjby = new Object();
    private volatile Object zzegu = zzjby;
    private volatile zzeqo<T> zzjbz;

    private zzeql(zzeqo<T> zzeqo) {
        this.zzjbz = zzeqo;
    }

    public static <P extends zzeqo<T>, T> zzeqo<T> zzau(P p) {
        return ((p instanceof zzeql) || (p instanceof zzeqc)) ? p : new zzeql((zzeqo) zzeqh.checkNotNull(p));
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final T get() {
        T t = (T) this.zzegu;
        if (t != zzjby) {
            return t;
        }
        zzeqo<T> zzeqo = this.zzjbz;
        if (zzeqo == null) {
            return (T) this.zzegu;
        }
        T t2 = zzeqo.get();
        this.zzegu = t2;
        this.zzjbz = null;
        return t2;
    }
}
