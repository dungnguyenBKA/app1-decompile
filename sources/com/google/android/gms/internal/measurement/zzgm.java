package com.google.android.gms.internal.measurement;

final class zzgm extends zzgq {
    private final int zzc;

    zzgm(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgs.zzn(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzgs, com.google.android.gms.internal.measurement.zzgq
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zza[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(ic.C(22, "Index < 0: ", i));
        }
        throw new ArrayIndexOutOfBoundsException(ic.c(40, "Index > length: ", i, ", ", i2));
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzgs, com.google.android.gms.internal.measurement.zzgq
    public final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgs, com.google.android.gms.internal.measurement.zzgq
    public final int zzc() {
        return this.zzc;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzgq
    public final int zzd() {
        return 0;
    }
}
