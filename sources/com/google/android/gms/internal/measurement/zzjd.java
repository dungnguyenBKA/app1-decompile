package com.google.android.gms.internal.measurement;

final class zzjd {
    private static final zzjc zza;
    private static final zzjc zzb = new zzjc();

    static {
        zzjc zzjc;
        try {
            zzjc = (zzjc) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzjc = null;
        }
        zza = zzjc;
    }

    static zzjc zza() {
        return zza;
    }

    static zzjc zzb() {
        return zzb;
    }
}
