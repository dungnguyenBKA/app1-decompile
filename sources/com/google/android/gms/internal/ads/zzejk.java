package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzejk {
    private static final Class<?> zzilq = zzhx("libcore.io.Memory");
    private static final boolean zzilr = (zzhx("org.robolectric.Robolectric") != null);

    static boolean zzbgc() {
        return zzilq != null && !zzilr;
    }

    static Class<?> zzbgd() {
        return zzilq;
    }

    private static <T> Class<T> zzhx(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
