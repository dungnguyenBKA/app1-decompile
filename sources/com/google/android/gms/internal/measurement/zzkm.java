package com.google.android.gms.internal.measurement;

final class zzkm extends zzkj {
    zzkm() {
    }

    private static int zze(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return zzkn.zzj(i);
        }
        if (i2 == 1) {
            return zzkn.zzk(i, zzkh.zzp(bArr, j));
        }
        if (i2 == 2) {
            return zzkn.zzl(i, zzkh.zzp(bArr, j), zzkh.zzp(bArr, j + 1));
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkj
    public final int zzb(int i, byte[] bArr, int i2, int i3) {
        int i4;
        long j;
        int length = bArr.length;
        if ((i2 | i3 | (length - i3)) >= 0) {
            long j2 = (long) i2;
            int i5 = (int) (((long) i3) - j2);
            if (i5 >= 16) {
                long j3 = j2;
                i4 = 0;
                while (true) {
                    if (i4 >= i5) {
                        i4 = i5;
                        break;
                    }
                    long j4 = j3 + 1;
                    if (zzkh.zzp(bArr, j3) < 0) {
                        break;
                    }
                    i4++;
                    j3 = j4;
                }
            } else {
                i4 = 0;
            }
            int i6 = i5 - i4;
            long j5 = j2 + ((long) i4);
            while (true) {
                byte b = 0;
                while (true) {
                    if (i6 <= 0) {
                        break;
                    }
                    long j6 = j5 + 1;
                    b = zzkh.zzp(bArr, j5);
                    if (b < 0) {
                        j5 = j6;
                        break;
                    }
                    i6--;
                    j5 = j6;
                }
                if (i6 == 0) {
                    return 0;
                }
                int i7 = i6 - 1;
                if (b >= -32) {
                    if (b >= -16) {
                        if (i7 >= 3) {
                            i6 = i7 - 3;
                            long j7 = j5 + 1;
                            byte zzp = zzkh.zzp(bArr, j5);
                            if (zzp > -65) {
                                break;
                            }
                            if ((((zzp + 112) + (b << 28)) >> 30) != 0) {
                                break;
                            }
                            long j8 = j7 + 1;
                            if (zzkh.zzp(bArr, j7) > -65) {
                                break;
                            }
                            j = j8 + 1;
                            if (zzkh.zzp(bArr, j8) > -65) {
                                break;
                            }
                        } else {
                            return zze(bArr, b, j5, i7);
                        }
                    } else if (i7 >= 2) {
                        i6 = i7 - 2;
                        long j9 = j5 + 1;
                        byte zzp2 = zzkh.zzp(bArr, j5);
                        if (zzp2 > -65 || ((b == -32 && zzp2 < -96) || (b == -19 && zzp2 >= -96))) {
                            break;
                        }
                        j5 = j9 + 1;
                        if (zzkh.zzp(bArr, j9) > -65) {
                            break;
                        }
                    } else {
                        return zze(bArr, b, j5, i7);
                    }
                } else if (i7 != 0) {
                    i6 = i7 - 1;
                    if (b < -62) {
                        break;
                    }
                    j = j5 + 1;
                    if (zzkh.zzp(bArr, j5) > -65) {
                        break;
                    }
                } else {
                    return b;
                }
                j5 = j;
            }
            return -1;
        }
        throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(length), Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzkj
    public final String zzc(byte[] bArr, int i, int i2) {
        int length = bArr.length;
        if ((i | i2 | ((length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte zzp = zzkh.zzp(bArr, (long) i);
                if (!zzki.zza(zzp)) {
                    break;
                }
                i++;
                cArr[i4] = (char) zzp;
                i4++;
            }
            while (i < i3) {
                int i5 = i + 1;
                byte zzp2 = zzkh.zzp(bArr, (long) i);
                if (zzki.zza(zzp2)) {
                    int i6 = i4 + 1;
                    cArr[i4] = (char) zzp2;
                    i = i5;
                    while (true) {
                        i4 = i6;
                        if (i >= i3) {
                            break;
                        }
                        byte zzp3 = zzkh.zzp(bArr, (long) i);
                        if (!zzki.zza(zzp3)) {
                            break;
                        }
                        i++;
                        i6 = i4 + 1;
                        cArr[i4] = (char) zzp3;
                    }
                } else if (zzki.zzb(zzp2)) {
                    if (i5 < i3) {
                        zzki.zzc(zzp2, zzkh.zzp(bArr, (long) i5), cArr, i4);
                        i = i5 + 1;
                        i4++;
                    } else {
                        throw zzic.zzf();
                    }
                } else if (zzki.zzd(zzp2)) {
                    if (i5 < i3 - 1) {
                        int i7 = i5 + 1;
                        zzki.zze(zzp2, zzkh.zzp(bArr, (long) i5), zzkh.zzp(bArr, (long) i7), cArr, i4);
                        i = i7 + 1;
                        i4++;
                    } else {
                        throw zzic.zzf();
                    }
                } else if (i5 < i3 - 2) {
                    int i8 = i5 + 1;
                    int i9 = i8 + 1;
                    zzki.zzf(zzp2, zzkh.zzp(bArr, (long) i5), zzkh.zzp(bArr, (long) i8), zzkh.zzp(bArr, (long) i9), cArr, i4);
                    i4 += 2;
                    i = i9 + 1;
                } else {
                    throw zzic.zzf();
                }
            }
            return new String(cArr, 0, i4);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0031 A[LOOP:1: B:11:0x0031->B:36:0x00f6, LOOP_START, PHI: r2 r3 r4 r11 
      PHI: (r2v3 int) = (r2v2 int), (r2v5 int) binds: [B:10:0x002f, B:36:0x00f6] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r3v2 char) = (r3v1 char), (r3v3 char) binds: [B:10:0x002f, B:36:0x00f6] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r4v3 long) = (r4v2 long), (r4v5 long) binds: [B:10:0x002f, B:36:0x00f6] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r11v3 long) = (r11v2 long), (r11v4 long) binds: [B:10:0x002f, B:36:0x00f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0141  */
    @Override // com.google.android.gms.internal.measurement.zzkj
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzd(java.lang.CharSequence r23, byte[] r24, int r25, int r26) {
        /*
        // Method dump skipped, instructions count: 362
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzkm.zzd(java.lang.CharSequence, byte[], int, int):int");
    }
}
