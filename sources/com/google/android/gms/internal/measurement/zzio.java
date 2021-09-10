package com.google.android.gms.internal.measurement;

final class zzio implements zziv {
    private final zziv[] zza;

    zzio(zziv... zzivArr) {
        this.zza = zzivArr;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final boolean zzb(Class<?> cls) {
        zziv[] zzivArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzivArr[i].zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final zziu zzc(Class<?> cls) {
        zziv[] zzivArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zziv zziv = zzivArr[i];
            if (zziv.zzb(cls)) {
                return zziv.zzc(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
