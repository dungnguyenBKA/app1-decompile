package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* access modifiers changed from: package-private */
public final class zzjf {
    private static final zzjf zza = new zzjf();
    private final zzjj zzb = new zzip();
    private final ConcurrentMap<Class<?>, zzji<?>> zzc = new ConcurrentHashMap();

    private zzjf() {
    }

    public static zzjf zza() {
        return zza;
    }

    /* JADX DEBUG: Type inference failed for r3v2. Raw type applied. Possible types: com.google.android.gms.internal.measurement.zzji<?>, com.google.android.gms.internal.measurement.zzji<T> */
    public final <T> zzji<T> zzb(Class<T> cls) {
        zzia.zzb(cls, "messageType");
        zzji<T> zzji = (zzji<T>) this.zzc.get(cls);
        if (zzji == null) {
            zzji = this.zzb.zza(cls);
            zzia.zzb(cls, "messageType");
            zzia.zzb(zzji, "schema");
            zzji putIfAbsent = this.zzc.putIfAbsent(cls, zzji);
            return putIfAbsent == null ? zzji : putIfAbsent;
        }
    }
}
