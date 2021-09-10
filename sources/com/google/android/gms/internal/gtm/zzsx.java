package com.google.android.gms.internal.gtm;

/* access modifiers changed from: package-private */
public final class zzsx extends zzta {
    private final int zzc;
    private final int zzd;

    zzsx(byte[] bArr, int i, int i2) {
        super(bArr);
        zztd.zzk(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.gtm.zztd, com.google.android.gms.internal.gtm.zzta
    public final byte zza(int i) {
        int i2 = this.zzd;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zza[this.zzc + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(ic.C(22, "Index < 0: ", i));
        }
        throw new ArrayIndexOutOfBoundsException(ic.c(40, "Index > length: ", i, ", ", i2));
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.gtm.zztd, com.google.android.gms.internal.gtm.zzta
    public final byte zzb(int i) {
        return this.zza[this.zzc + i];
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzta
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.gtm.zztd, com.google.android.gms.internal.gtm.zzta
    public final int zzd() {
        return this.zzd;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zztd, com.google.android.gms.internal.gtm.zzta
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, this.zzc, bArr, 0, i3);
    }
}
