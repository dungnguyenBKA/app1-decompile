package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

final class zzelc implements zzeml {
    private static final zzelc zziqn = new zzelc();

    private zzelc() {
    }

    public static zzelc zzbir() {
        return zziqn;
    }

    @Override // com.google.android.gms.internal.ads.zzeml
    public final boolean zze(Class<?> cls) {
        return zzelb.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeml
    public final zzemm zzf(Class<?> cls) {
        if (!zzelb.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzemm) zzelb.zzd(cls.asSubclass(zzelb.class)).zza(zzelb.zze.zziqu, (Object) null, (Object) null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
