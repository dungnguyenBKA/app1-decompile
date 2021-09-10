package com.google.android.gms.internal.gtm;

import java.util.Objects;

/* access modifiers changed from: package-private */
public final class zztl extends zzto {
    private final byte[] zzb;
    private final int zzc;
    private int zzd;

    zztl(byte[] bArr, int i, int i2) {
        super(null);
        Objects.requireNonNull(bArr, "buffer");
        int length = bArr.length;
        if (((length - i2) | i2) >= 0) {
            this.zzb = bArr;
            this.zzd = 0;
            this.zzc = i2;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final int zza() {
        return this.zzc - this.zzd;
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzb(byte b) {
        try {
            byte[] bArr = this.zzb;
            int i = this.zzd;
            this.zzd = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zztm(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    public final void zzc(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.zzb, this.zzd, i2);
            this.zzd += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zztm(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), Integer.valueOf(i2)), e);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzd(int i, boolean z) {
        zzq(i << 3);
        zzb(z ? (byte) 1 : 0);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zze(int i, zztd zztd) {
        zzq((i << 3) | 2);
        zzq(zztd.zzd());
        zztd.zzi(this);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzf(int i, int i2) {
        zzq((i << 3) | 5);
        zzg(i2);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzg(int i) {
        try {
            byte[] bArr = this.zzb;
            int i2 = this.zzd;
            int i3 = i2 + 1;
            this.zzd = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            this.zzd = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            this.zzd = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.zzd = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zztm(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzh(int i, long j) {
        zzq((i << 3) | 1);
        zzi(j);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzi(long j) {
        try {
            byte[] bArr = this.zzb;
            int i = this.zzd;
            int i2 = i + 1;
            this.zzd = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i2 + 1;
            this.zzd = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i3 + 1;
            this.zzd = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i4 + 1;
            this.zzd = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i5 + 1;
            this.zzd = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            this.zzd = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            this.zzd = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.zzd = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zztm(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzj(int i, int i2) {
        zzq(i << 3);
        zzk(i2);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzk(int i) {
        if (i >= 0) {
            zzq(i);
        } else {
            zzs((long) i);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzl(byte[] bArr, int i, int i2) {
        zzc(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzm(int i, String str) {
        zzq((i << 3) | 2);
        zzn(str);
    }

    public final void zzn(String str) {
        int i = this.zzd;
        try {
            int zzD = zzto.zzD(str.length() * 3);
            int zzD2 = zzto.zzD(str.length());
            if (zzD2 == zzD) {
                int i2 = i + zzD2;
                this.zzd = i2;
                int zzb2 = zzyd.zzb(str, this.zzb, i2, this.zzc - i2);
                this.zzd = i;
                zzq((zzb2 - i) - zzD2);
                this.zzd = zzb2;
                return;
            }
            zzq(zzyd.zzc(str));
            byte[] bArr = this.zzb;
            int i3 = this.zzd;
            this.zzd = zzyd.zzb(str, bArr, i3, this.zzc - i3);
        } catch (zzyc e) {
            this.zzd = i;
            zzH(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zztm(e2);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzo(int i, int i2) {
        zzq((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzp(int i, int i2) {
        zzq(i << 3);
        zzq(i2);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzq(int i) {
        if (zzto.zzc) {
            int i2 = zzsk.zza;
        }
        while ((i & -128) != 0) {
            byte[] bArr = this.zzb;
            int i3 = this.zzd;
            this.zzd = i3 + 1;
            bArr[i3] = (byte) ((i & 127) | 128);
            i >>>= 7;
        }
        try {
            byte[] bArr2 = this.zzb;
            int i4 = this.zzd;
            this.zzd = i4 + 1;
            bArr2[i4] = (byte) i;
        } catch (IndexOutOfBoundsException e) {
            throw new zztm(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzr(int i, long j) {
        zzq(i << 3);
        zzs(j);
    }

    @Override // com.google.android.gms.internal.gtm.zzto
    public final void zzs(long j) {
        if (!(zzto.zzc) || this.zzc - this.zzd < 10) {
            while ((j & -128) != 0) {
                byte[] bArr = this.zzb;
                int i = this.zzd;
                this.zzd = i + 1;
                bArr[i] = (byte) ((((int) j) & 127) | 128);
                j >>>= 7;
            }
            try {
                byte[] bArr2 = this.zzb;
                int i2 = this.zzd;
                this.zzd = i2 + 1;
                bArr2[i2] = (byte) ((int) j);
            } catch (IndexOutOfBoundsException e) {
                throw new zztm(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
            }
        } else {
            while ((j & -128) != 0) {
                byte[] bArr3 = this.zzb;
                int i3 = this.zzd;
                this.zzd = i3 + 1;
                zzxy.zzn(bArr3, (long) i3, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr4 = this.zzb;
            int i4 = this.zzd;
            this.zzd = i4 + 1;
            zzxy.zzn(bArr4, (long) i4, (byte) ((int) j));
        }
    }
}
