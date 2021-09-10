package com.google.android.gms.internal.measurement;

final class zzhn implements zziv {
    private static final zzhn zza = new zzhn();

    private zzhn() {
    }

    public static zzhn zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final boolean zzb(Class<?> cls) {
        return zzhs.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final zziu zzc(Class<?> cls) {
        String str;
        if (!zzhs.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            if (name.length() != 0) {
                str = "Unsupported message type: ".concat(name);
            } else {
                str = new String("Unsupported message type: ");
            }
            throw new IllegalArgumentException(str);
        }
        try {
            return (zziu) zzhs.zzbx(cls.asSubclass(zzhs.class)).zzl(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
