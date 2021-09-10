package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class zzekl extends zzejo {
    private static final Logger logger = Logger.getLogger(zzekl.class.getName());
    private static final boolean zzinc = zzeoh.zzblc();
    zzekn zzind;

    public static class zza extends IOException {
        zza() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        zza(java.lang.String r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r1 = r3.length()
                if (r1 == 0) goto L_0x0011
                java.lang.String r3 = r0.concat(r3)
                goto L_0x0016
            L_0x0011:
                java.lang.String r3 = new java.lang.String
                r3.<init>(r0)
            L_0x0016:
                r2.<init>(r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzekl.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    private zzekl() {
    }

    public static int zzag(int i, int i2) {
        return zzgw(i2) + zzgx(i << 3);
    }

    public static int zzah(int i, int i2) {
        return zzgx(i2) + zzgx(i << 3);
    }

    public static int zzai(int i, int i2) {
        return zzgx(zzhc(i2)) + zzgx(i << 3);
    }

    public static int zzaj(int i, int i2) {
        return zzgx(i << 3) + 4;
    }

    public static int zzak(int i, int i2) {
        return zzgx(i << 3) + 4;
    }

    public static int zzal(int i, int i2) {
        return zzgw(i2) + zzgx(i << 3);
    }

    public static int zzbs(boolean z) {
        return 1;
    }

    public static int zzd(double d) {
        return 8;
    }

    public static int zzd(int i, zzejr zzejr) {
        int zzah = zzah(2, i);
        return zzc(3, zzejr) + zzah + (zzgx(8) << 1);
    }

    public static int zzfk(long j) {
        return zzfl(j);
    }

    public static int zzfl(long j) {
        int i;
        if ((-128 & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if ((-34359738368L & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if ((-2097152 & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & -16384) != 0 ? i + 1 : i;
    }

    public static int zzfm(long j) {
        return zzfl(zzfp(j));
    }

    public static int zzfn(long j) {
        return 8;
    }

    public static int zzfo(long j) {
        return 8;
    }

    private static long zzfp(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzg(float f) {
        return 4;
    }

    public static int zzgv(int i) {
        return zzgx(i << 3);
    }

    public static int zzgw(int i) {
        if (i >= 0) {
            return zzgx(i);
        }
        return 10;
    }

    public static int zzgx(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i) == 0) {
            return 3;
        }
        return (i & -268435456) == 0 ? 4 : 5;
    }

    public static int zzgy(int i) {
        return zzgx(zzhc(i));
    }

    public static int zzgz(int i) {
        return 4;
    }

    public static int zzh(zzemo zzemo) {
        int zzbik = zzemo.zzbik();
        return zzgx(zzbik) + zzbik;
    }

    public static int zzha(int i) {
        return 4;
    }

    public static int zzhb(int i) {
        return zzgw(i);
    }

    private static int zzhc(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    public static int zzhd(int i) {
        return zzgx(i);
    }

    public static int zzi(int i, boolean z) {
        return zzgx(i << 3) + 1;
    }

    public static int zzia(String str) {
        int i;
        try {
            i = zzeok.zzd(str);
        } catch (zzeon unused) {
            i = str.getBytes(zzeld.UTF_8).length;
        }
        return zzgx(i) + i;
    }

    public static int zzl(int i, long j) {
        return zzfl(j) + zzgx(i << 3);
    }

    public static int zzm(int i, long j) {
        return zzfl(j) + zzgx(i << 3);
    }

    public static int zzn(int i, long j) {
        return zzfl(zzfp(j)) + zzgx(i << 3);
    }

    public static int zzo(int i, long j) {
        return zzgx(i << 3) + 8;
    }

    public static int zzp(int i, long j) {
        return zzgx(i << 3) + 8;
    }

    public static zzekl zzv(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zzw(byte[] bArr) {
        int length = bArr.length;
        return zzgx(length) + length;
    }

    public abstract void writeTag(int i, int i2);

    public final void zza(int i, float f) {
        zzaf(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, zzejr zzejr);

    public abstract void zza(int i, zzemo zzemo);

    /* access modifiers changed from: package-private */
    public abstract void zza(int i, zzemo zzemo, zzenj zzenj);

    public abstract void zzac(int i, int i2);

    public abstract void zzad(int i, int i2);

    public final void zzae(int i, int i2) {
        zzad(i, zzhc(i2));
    }

    public abstract void zzaf(int i, int i2);

    public abstract void zzai(zzejr zzejr);

    public final void zzb(int i, double d) {
        zzk(i, Double.doubleToRawLongBits(d));
    }

    public abstract void zzb(int i, zzejr zzejr);

    public abstract int zzbhs();

    public final void zzbht() {
        if (zzbhs() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzbr(boolean z) {
        zzd(z ? (byte) 1 : 0);
    }

    public final void zzc(double d) {
        zzfj(Double.doubleToRawLongBits(d));
    }

    public abstract void zzd(byte b);

    public final void zzf(float f) {
        zzgu(Float.floatToRawIntBits(f));
    }

    public abstract void zzfh(long j);

    public final void zzfi(long j) {
        zzfh(zzfp(j));
    }

    public abstract void zzfj(long j);

    public abstract void zzg(zzemo zzemo);

    public abstract void zzgr(int i);

    public abstract void zzgs(int i);

    public final void zzgt(int i) {
        zzgs(zzhc(i));
    }

    public abstract void zzgu(int i);

    public abstract void zzh(int i, boolean z);

    public abstract void zzhz(String str);

    public abstract void zzi(int i, long j);

    public abstract void zzi(int i, String str);

    public final void zzj(int i, long j) {
        zzi(i, zzfp(j));
    }

    public abstract void zzk(int i, long j);

    /* access modifiers changed from: package-private */
    public abstract void zzk(byte[] bArr, int i, int i2);

    /* access modifiers changed from: private */
    public static class zzb extends zzekl {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zzb(byte[] bArr, int i, int i2) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            if ((i2 | 0 | (bArr.length - i2)) >= 0) {
                this.buffer = bArr;
                this.offset = 0;
                this.position = 0;
                this.limit = i2;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
        }

        private final void write(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void writeTag(int i, int i2) {
            zzgs((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zza(int i, zzejr zzejr) {
            writeTag(i, 2);
            zzai(zzejr);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzac(int i, int i2) {
            writeTag(i, 0);
            zzgr(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzad(int i, int i2) {
            writeTag(i, 0);
            zzgs(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzaf(int i, int i2) {
            writeTag(i, 5);
            zzgu(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzai(zzejr zzejr) {
            zzgs(zzejr.size());
            zzejr.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzb(int i, zzejr zzejr) {
            writeTag(1, 3);
            zzad(2, i);
            zza(3, zzejr);
            writeTag(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final int zzbhs() {
            return this.limit - this.position;
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzd(byte b) {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzfh(long j) {
            if (!zzekl.zzinc || zzbhs() < 10) {
                while ((j & -128) != 0) {
                    byte[] bArr = this.buffer;
                    int i = this.position;
                    this.position = i + 1;
                    bArr[i] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                }
                try {
                    byte[] bArr2 = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    bArr2[i2] = (byte) ((int) j);
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            } else {
                while ((j & -128) != 0) {
                    byte[] bArr3 = this.buffer;
                    int i3 = this.position;
                    this.position = i3 + 1;
                    zzeoh.zza(bArr3, (long) i3, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr4 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                zzeoh.zza(bArr4, (long) i4, (byte) ((int) j));
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzfj(long j) {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                int i2 = i + 1;
                this.position = i2;
                bArr[i] = (byte) ((int) j);
                int i3 = i2 + 1;
                this.position = i3;
                bArr[i2] = (byte) ((int) (j >> 8));
                int i4 = i3 + 1;
                this.position = i4;
                bArr[i3] = (byte) ((int) (j >> 16));
                int i5 = i4 + 1;
                this.position = i5;
                bArr[i4] = (byte) ((int) (j >> 24));
                int i6 = i5 + 1;
                this.position = i6;
                bArr[i5] = (byte) ((int) (j >> 32));
                int i7 = i6 + 1;
                this.position = i7;
                bArr[i6] = (byte) ((int) (j >> 40));
                int i8 = i7 + 1;
                this.position = i8;
                bArr[i7] = (byte) ((int) (j >> 48));
                this.position = i8 + 1;
                bArr[i8] = (byte) ((int) (j >> 56));
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzg(zzemo zzemo) {
            zzgs(zzemo.zzbik());
            zzemo.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzgr(int i) {
            if (i >= 0) {
                zzgs(i);
            } else {
                zzfh((long) i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzgs(int i) {
            if (!zzekl.zzinc || zzejk.zzbgc() || zzbhs() < 5) {
                while ((i & -128) != 0) {
                    byte[] bArr = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    bArr[i2] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                }
                try {
                    byte[] bArr2 = this.buffer;
                    int i3 = this.position;
                    this.position = i3 + 1;
                    bArr2[i3] = (byte) i;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            } else if ((i & -128) == 0) {
                byte[] bArr3 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                zzeoh.zza(bArr3, (long) i4, (byte) i);
            } else {
                byte[] bArr4 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                zzeoh.zza(bArr4, (long) i5, (byte) (i | 128));
                int i6 = i >>> 7;
                if ((i6 & -128) == 0) {
                    byte[] bArr5 = this.buffer;
                    int i7 = this.position;
                    this.position = i7 + 1;
                    zzeoh.zza(bArr5, (long) i7, (byte) i6);
                    return;
                }
                byte[] bArr6 = this.buffer;
                int i8 = this.position;
                this.position = i8 + 1;
                zzeoh.zza(bArr6, (long) i8, (byte) (i6 | 128));
                int i9 = i6 >>> 7;
                if ((i9 & -128) == 0) {
                    byte[] bArr7 = this.buffer;
                    int i10 = this.position;
                    this.position = i10 + 1;
                    zzeoh.zza(bArr7, (long) i10, (byte) i9);
                    return;
                }
                byte[] bArr8 = this.buffer;
                int i11 = this.position;
                this.position = i11 + 1;
                zzeoh.zza(bArr8, (long) i11, (byte) (i9 | 128));
                int i12 = i9 >>> 7;
                if ((i12 & -128) == 0) {
                    byte[] bArr9 = this.buffer;
                    int i13 = this.position;
                    this.position = i13 + 1;
                    zzeoh.zza(bArr9, (long) i13, (byte) i12);
                    return;
                }
                byte[] bArr10 = this.buffer;
                int i14 = this.position;
                this.position = i14 + 1;
                zzeoh.zza(bArr10, (long) i14, (byte) (i12 | 128));
                byte[] bArr11 = this.buffer;
                int i15 = this.position;
                this.position = i15 + 1;
                zzeoh.zza(bArr11, (long) i15, (byte) (i12 >>> 7));
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzgu(int i) {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                int i3 = i2 + 1;
                this.position = i3;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                this.position = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                this.position = i5;
                bArr[i4] = (byte) (i >> 16);
                this.position = i5 + 1;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzh(int i, boolean z) {
            writeTag(i, 0);
            zzd(z ? (byte) 1 : 0);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzhz(String str) {
            int i = this.position;
            try {
                int zzgx = zzekl.zzgx(str.length() * 3);
                int zzgx2 = zzekl.zzgx(str.length());
                if (zzgx2 == zzgx) {
                    int i2 = i + zzgx2;
                    this.position = i2;
                    int zza = zzeok.zza(str, this.buffer, i2, zzbhs());
                    this.position = i;
                    zzgs((zza - i) - zzgx2);
                    this.position = zza;
                    return;
                }
                zzgs(zzeok.zzd(str));
                this.position = zzeok.zza(str, this.buffer, this.position, zzbhs());
            } catch (zzeon e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzi(int i, long j) {
            writeTag(i, 0);
            zzfh(j);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzk(int i, long j) {
            writeTag(i, 1);
            zzfj(j);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zza(int i, zzemo zzemo, zzenj zzenj) {
            writeTag(i, 2);
            zzejh zzejh = (zzejh) zzemo;
            int zzbga = zzejh.zzbga();
            if (zzbga == -1) {
                zzbga = zzenj.zzau(zzejh);
                zzejh.zzfv(zzbga);
            }
            zzgs(zzbga);
            zzenj.zza(zzemo, this.zzind);
        }

        @Override // com.google.android.gms.internal.ads.zzejo
        public final void zzh(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzi(int i, String str) {
            writeTag(i, 2);
            zzhz(str);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzk(byte[] bArr, int i, int i2) {
            zzgs(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zza(int i, zzemo zzemo) {
            writeTag(1, 3);
            zzad(2, i);
            writeTag(3, 2);
            zzg(zzemo);
            writeTag(1, 4);
        }
    }

    public static int zza(int i, zzelt zzelt) {
        int zzgx = zzgx(i << 3);
        int zzbik = zzelt.zzbik();
        return zzgx(zzbik) + zzbik + zzgx;
    }

    public static int zzaj(zzejr zzejr) {
        int size = zzejr.size();
        return zzgx(size) + size;
    }

    public static int zzb(int i, float f) {
        return zzgx(i << 3) + 4;
    }

    public static int zzc(int i, double d) {
        return zzgx(i << 3) + 8;
    }

    @Deprecated
    public static int zzi(zzemo zzemo) {
        return zzemo.zzbik();
    }

    public static int zzj(int i, String str) {
        return zzia(str) + zzgx(i << 3);
    }

    static int zzb(int i, zzemo zzemo, zzenj zzenj) {
        return zzgx(i << 3) + zza(zzemo, zzenj);
    }

    public static int zzc(int i, zzejr zzejr) {
        int zzgx = zzgx(i << 3);
        int size = zzejr.size();
        return zzgx(size) + size + zzgx;
    }

    public static int zza(zzelt zzelt) {
        int zzbik = zzelt.zzbik();
        return zzgx(zzbik) + zzbik;
    }

    public static int zzb(int i, zzemo zzemo) {
        return zzh(zzemo) + zzgx(24) + zzah(2, i) + (zzgx(8) << 1);
    }

    @Deprecated
    static int zzc(int i, zzemo zzemo, zzenj zzenj) {
        int zzgx = zzgx(i << 3) << 1;
        zzejh zzejh = (zzejh) zzemo;
        int zzbga = zzejh.zzbga();
        if (zzbga == -1) {
            zzbga = zzenj.zzau(zzejh);
            zzejh.zzfv(zzbga);
        }
        return zzgx + zzbga;
    }

    static int zza(zzemo zzemo, zzenj zzenj) {
        zzejh zzejh = (zzejh) zzemo;
        int zzbga = zzejh.zzbga();
        if (zzbga == -1) {
            zzbga = zzenj.zzau(zzejh);
            zzejh.zzfv(zzbga);
        }
        return zzgx(zzbga) + zzbga;
    }

    public static int zzb(int i, zzelt zzelt) {
        int zzah = zzah(2, i);
        return zza(3, zzelt) + zzah + (zzgx(8) << 1);
    }

    /* access modifiers changed from: package-private */
    public final void zza(String str, zzeon zzeon) {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzeon);
        byte[] bytes = str.getBytes(zzeld.UTF_8);
        try {
            zzgs(bytes.length);
            zzh(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new zza(e);
        } catch (zza e2) {
            throw e2;
        }
    }
}
