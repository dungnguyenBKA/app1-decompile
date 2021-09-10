package com.google.android.gms.internal.ads;

final class zzeoq extends zzeol {
    zzeoq() {
    }

    private static int zza(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return zzeok.zzhw(i);
        }
        if (i2 == 1) {
            return zzeok.zzaq(i, zzeoh.zza(bArr, j));
        }
        if (i2 == 2) {
            return zzeok.zzj(i, zzeoh.zza(bArr, j), zzeoh.zza(bArr, j + 1));
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0035, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zza(r23, r8) > -65) goto L_0x003c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0066, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zza(r23, r8) > -65) goto L_0x0068;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x00fa, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0121, code lost:
        return -1;
     */
    @Override // com.google.android.gms.internal.ads.zzeol
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzb(int r22, byte[] r23, int r24, int r25) {
        /*
        // Method dump skipped, instructions count: 378
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeoq.zzb(int, byte[], int, int):int");
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzeol
    public final String zzo(byte[] bArr, int i, int i2) {
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte zza = zzeoh.zza(bArr, (long) i);
                if (!(zzeom.zze(zza))) {
                    break;
                }
                i++;
                zzeom.zza(zza, cArr, i4);
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte zza2 = zzeoh.zza(bArr, (long) i);
                if (zzeom.zze(zza2)) {
                    int i7 = i5 + 1;
                    zzeom.zza(zza2, cArr, i5);
                    while (i6 < i3) {
                        byte zza3 = zzeoh.zza(bArr, (long) i6);
                        if (!(zzeom.zze(zza3))) {
                            break;
                        }
                        i6++;
                        zzeom.zza(zza3, cArr, i7);
                        i7++;
                    }
                    i = i6;
                    i5 = i7;
                } else if (zzeom.zzf(zza2)) {
                    if (i6 < i3) {
                        int i8 = i6 + 1;
                        zzeom.zza(zza2, zzeoh.zza(bArr, (long) i6), cArr, i5);
                        i = i8;
                        i5++;
                    } else {
                        throw zzelo.zzbji();
                    }
                } else if (zzeom.zzg(zza2)) {
                    if (i6 < i3 - 1) {
                        int i9 = i6 + 1;
                        int i10 = i9 + 1;
                        zzeom.zza(zza2, zzeoh.zza(bArr, (long) i6), zzeoh.zza(bArr, (long) i9), cArr, i5);
                        i = i10;
                        i5++;
                    } else {
                        throw zzelo.zzbji();
                    }
                } else if (i6 < i3 - 2) {
                    int i11 = i6 + 1;
                    int i12 = i11 + 1;
                    zzeom.zza(zza2, zzeoh.zza(bArr, (long) i6), zzeoh.zza(bArr, (long) i11), zzeoh.zza(bArr, (long) i12), cArr, i5);
                    i = i12 + 1;
                    i5 = i5 + 1 + 1;
                } else {
                    throw zzelo.zzbji();
                }
            }
            return new String(cArr, 0, i5);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0033 A[LOOP:1: B:13:0x0033->B:38:0x00fb, LOOP_START, PHI: r2 r3 r4 r11 
      PHI: (r2v4 int) = (r2v3 int), (r2v6 int) binds: [B:10:0x002f, B:38:0x00fb] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r3v3 char) = (r3v2 char), (r3v4 char) binds: [B:10:0x002f, B:38:0x00fb] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r4v3 long) = (r4v2 long), (r4v5 long) binds: [B:10:0x002f, B:38:0x00fb] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r11v3 long) = (r11v2 long), (r11v4 long) binds: [B:10:0x002f, B:38:0x00fb] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzeol
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzb(java.lang.CharSequence r23, byte[] r24, int r25, int r26) {
        /*
        // Method dump skipped, instructions count: 364
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeoq.zzb(java.lang.CharSequence, byte[], int, int):int");
    }
}
