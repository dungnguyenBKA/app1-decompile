package com.google.android.gms.internal.ads;

public final class zzeqc<T> implements zzepv<T>, zzeqo<T> {
    private static final Object zzjby = new Object();
    private volatile Object zzegu = zzjby;
    private volatile zzeqo<T> zzjbz;

    private zzeqc(zzeqo<T> zzeqo) {
        this.zzjbz = zzeqo;
    }

    public static <P extends zzeqo<T>, T> zzeqo<T> zzau(P p) {
        zzeqh.checkNotNull(p);
        if (p instanceof zzeqc) {
            return p;
        }
        return new zzeqc(p);
    }

    public static <P extends zzeqo<T>, T> zzepv<T> zzav(P p) {
        if (p instanceof zzepv) {
            return (zzepv) p;
        }
        return new zzeqc((zzeqo) zzeqh.checkNotNull(p));
    }

    @Override // com.google.android.gms.internal.ads.zzeqo, com.google.android.gms.internal.ads.zzepv
    public final T get() {
        T t = (T) this.zzegu;
        Object obj = zzjby;
        if (t == obj) {
            synchronized (this) {
                t = this.zzegu;
                if (t == obj) {
                    t = this.zzjbz.get();
                    Object obj2 = this.zzegu;
                    if (obj2 != obj && !(obj2 instanceof zzeqi)) {
                        if (obj2 != t) {
                            String valueOf = String.valueOf(obj2);
                            String valueOf2 = String.valueOf(t);
                            StringBuilder sb = new StringBuilder(valueOf.length() + 118 + valueOf2.length());
                            sb.append("Scoped provider was invoked recursively returning different results: ");
                            sb.append(valueOf);
                            sb.append(" & ");
                            sb.append(valueOf2);
                            sb.append(". This is likely due to a circular dependency.");
                            throw new IllegalStateException(sb.toString());
                        }
                    }
                    this.zzegu = t;
                    this.zzjbz = null;
                }
            }
        }
        return t;
    }
}
