package com.google.android.gms.internal.gtm;

final class zzwb implements zzwi {
    private final zzwi[] zza;

    zzwb(zzwi... zzwiArr) {
        this.zza = zzwiArr;
    }

    @Override // com.google.android.gms.internal.gtm.zzwi
    public final zzwh zzb(Class<?> cls) {
        zzwi[] zzwiArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzwi zzwi = zzwiArr[i];
            if (zzwi.zzc(cls)) {
                return zzwi.zzb(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.gtm.zzwi
    public final boolean zzc(Class<?> cls) {
        zzwi[] zzwiArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzwiArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
