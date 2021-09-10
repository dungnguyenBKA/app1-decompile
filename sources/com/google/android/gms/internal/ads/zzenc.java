package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* access modifiers changed from: package-private */
public final class zzenc {
    private static final zzenc zzito = new zzenc();
    private final zzenm zzitp = new zzemb();
    private final ConcurrentMap<Class<?>, zzenj<?>> zzitq = new ConcurrentHashMap();

    private zzenc() {
    }

    public static zzenc zzbkf() {
        return zzito;
    }

    public final <T> zzenj<T> zzax(T t) {
        return zzh(t.getClass());
    }

    public final <T> zzenj<T> zzh(Class<T> cls) {
        zzeld.zza(cls, "messageType");
        zzenj<T> zzenj = (zzenj<T>) this.zzitq.get(cls);
        if (zzenj != null) {
            return zzenj;
        }
        zzenj<T> zzg = this.zzitp.zzg(cls);
        zzeld.zza(cls, "messageType");
        zzeld.zza(zzg, "schema");
        zzenj<T> zzenj2 = (zzenj<T>) this.zzitq.putIfAbsent(cls, zzg);
        return zzenj2 != null ? zzenj2 : zzg;
    }
}
