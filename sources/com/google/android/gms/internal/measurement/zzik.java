package com.google.android.gms.internal.measurement;

final class zzik extends zzil {
    private zzik() {
        super(null);
    }

    /* synthetic */ zzik(zzii zzii) {
        super(null);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzil
    public final void zza(Object obj, long j) {
        ((zzhz) zzkh.zzn(obj, j)).zzb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzil
    public final <E> void zzb(Object obj, Object obj2, long j) {
        zzhz<E> zzhz = (zzhz) zzkh.zzn(obj, j);
        zzhz<E> zzhz2 = (zzhz) zzkh.zzn(obj2, j);
        int size = zzhz.size();
        int size2 = zzhz2.size();
        zzhz<E> zzhz3 = zzhz;
        zzhz3 = zzhz;
        if (size > 0 && size2 > 0) {
            boolean zza = zzhz.zza();
            zzhz<E> zzhz4 = zzhz;
            if (!zza) {
                zzhz4 = zzhz.zze(size2 + size);
            }
            zzhz4.addAll(zzhz2);
            zzhz3 = zzhz4;
        }
        if (size > 0) {
            zzhz2 = zzhz3;
        }
        zzkh.zzo(obj, j, zzhz2);
    }
}
