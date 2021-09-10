package com.google.android.gms.internal.gtm;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* access modifiers changed from: package-private */
public final class zzwt {
    private static final zzwt zza = new zzwt();
    private final zzwy zzb = new zzwc();
    private final ConcurrentMap<Class<?>, zzwx<?>> zzc = new ConcurrentHashMap();

    private zzwt() {
    }

    public static zzwt zza() {
        return zza;
    }

    /* JADX DEBUG: Type inference failed for r3v2. Raw type applied. Possible types: com.google.android.gms.internal.gtm.zzwx<?>, com.google.android.gms.internal.gtm.zzwx<T> */
    public final <T> zzwx<T> zzb(Class<T> cls) {
        zzvi.zzf(cls, "messageType");
        zzwx<T> zzwx = (zzwx<T>) this.zzc.get(cls);
        if (zzwx == null) {
            zzwx = this.zzb.zza(cls);
            zzvi.zzf(cls, "messageType");
            zzvi.zzf(zzwx, "schema");
            zzwx putIfAbsent = this.zzc.putIfAbsent(cls, zzwx);
            return putIfAbsent == null ? zzwx : putIfAbsent;
        }
    }
}
