package com.google.android.gms.internal.measurement;

final class zzgd {
    private static final Class<?> zza;
    private static final boolean zzb;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        zzb = cls2 != null;
    }

    static boolean zza() {
        return zza != null && !zzb;
    }

    static Class<?> zzb() {
        return zza;
    }
}
