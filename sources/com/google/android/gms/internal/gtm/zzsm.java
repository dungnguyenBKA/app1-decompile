package com.google.android.gms.internal.gtm;

/* access modifiers changed from: package-private */
public final class zzsm {
    static int zza(byte[] bArr, int i, zzsl zzsl) {
        int zzj = zzj(bArr, i, zzsl);
        int i2 = zzsl.zza;
        if (i2 < 0) {
            throw zzvk.zzf();
        } else if (i2 > bArr.length - zzj) {
            throw zzvk.zzj();
        } else if (i2 == 0) {
            zzsl.zzc = zztd.zzb;
            return zzj;
        } else {
            zzsl.zzc = zztd.zzn(bArr, zzj, i2);
            return zzj + i2;
        }
    }

    static int zzb(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static int zzc(zzwx zzwx, byte[] bArr, int i, int i2, int i3, zzsl zzsl) {
        zzwn zzwn = (zzwn) zzwx;
        Object zze = zzwn.zze();
        int zzc = zzwn.zzc(zze, bArr, i, i2, i3, zzsl);
        zzwn.zzf(zze);
        zzsl.zzc = zze;
        return zzc;
    }

    static int zzd(zzwx zzwx, byte[] bArr, int i, int i2, zzsl zzsl) {
        int i3 = i + 1;
        byte b = bArr[i];
        byte b2 = b;
        if (b < 0) {
            i3 = zzk(b, bArr, i3, zzsl);
            b2 = zzsl.zza;
        }
        if (b2 < 0 || b2 > i2 - i3) {
            throw zzvk.zzj();
        }
        Object zze = zzwx.zze();
        int i4 = (b2 == 1 ? 1 : 0) + i3;
        zzwx.zzi(zze, bArr, i3, i4, zzsl);
        zzwx.zzf(zze);
        zzsl.zzc = zze;
        return i4;
    }

    static int zze(zzwx<?> zzwx, int i, byte[] bArr, int i2, int i3, zzvh<?> zzvh, zzsl zzsl) {
        int zzd = zzd(zzwx, bArr, i2, i3, zzsl);
        zzvh.add(zzsl.zzc);
        while (zzd < i3) {
            int zzj = zzj(bArr, zzd, zzsl);
            if (i != zzsl.zza) {
                break;
            }
            zzd = zzd(zzwx, bArr, zzj, i3, zzsl);
            zzvh.add(zzsl.zzc);
        }
        return zzd;
    }

    static int zzf(byte[] bArr, int i, zzvh<?> zzvh, zzsl zzsl) {
        zzva zzva = (zzva) zzvh;
        int zzj = zzj(bArr, i, zzsl);
        int i2 = zzsl.zza + zzj;
        while (zzj < i2) {
            zzj = zzj(bArr, zzj, zzsl);
            zzva.zzh(zzsl.zza);
        }
        if (zzj == i2) {
            return zzj;
        }
        throw zzvk.zzj();
    }

    static int zzg(byte[] bArr, int i, zzsl zzsl) {
        int zzj = zzj(bArr, i, zzsl);
        int i2 = zzsl.zza;
        if (i2 < 0) {
            throw zzvk.zzf();
        } else if (i2 == 0) {
            zzsl.zzc = "";
            return zzj;
        } else {
            zzsl.zzc = new String(bArr, zzj, i2, zzvi.zza);
            return zzj + i2;
        }
    }

    static int zzh(byte[] bArr, int i, zzsl zzsl) {
        int zzj = zzj(bArr, i, zzsl);
        int i2 = zzsl.zza;
        if (i2 < 0) {
            throw zzvk.zzf();
        } else if (i2 == 0) {
            zzsl.zzc = "";
            return zzj;
        } else {
            zzsl.zzc = zzyd.zzd(bArr, zzj, i2);
            return zzj + i2;
        }
    }

    static int zzi(int i, byte[] bArr, int i2, int i3, zzxp zzxp, zzsl zzsl) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 == 0) {
                int zzm = zzm(bArr, i2, zzsl);
                zzxp.zzh(i, Long.valueOf(zzsl.zzb));
                return zzm;
            } else if (i4 == 1) {
                zzxp.zzh(i, Long.valueOf(zzo(bArr, i2)));
                return i2 + 8;
            } else if (i4 == 2) {
                int zzj = zzj(bArr, i2, zzsl);
                int i5 = zzsl.zza;
                if (i5 < 0) {
                    throw zzvk.zzf();
                } else if (i5 <= bArr.length - zzj) {
                    if (i5 == 0) {
                        zzxp.zzh(i, zztd.zzb);
                    } else {
                        zzxp.zzh(i, zztd.zzn(bArr, zzj, i5));
                    }
                    return zzj + i5;
                } else {
                    throw zzvk.zzj();
                }
            } else if (i4 == 3) {
                int i6 = (i & -8) | 4;
                zzxp zze = zzxp.zze();
                int i7 = 0;
                while (true) {
                    if (i2 >= i3) {
                        break;
                    }
                    int zzj2 = zzj(bArr, i2, zzsl);
                    int i8 = zzsl.zza;
                    if (i8 == i6) {
                        i7 = i8;
                        i2 = zzj2;
                        break;
                    }
                    i7 = i8;
                    i2 = zzi(i8, bArr, zzj2, i3, zze, zzsl);
                }
                if (i2 > i3 || i7 != i6) {
                    throw zzvk.zzg();
                }
                zzxp.zzh(i, zze);
                return i2;
            } else if (i4 == 5) {
                zzxp.zzh(i, Integer.valueOf(zzb(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzvk.zzc();
            }
        } else {
            throw zzvk.zzc();
        }
    }

    static int zzj(byte[] bArr, int i, zzsl zzsl) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzk(b, bArr, i2, zzsl);
        }
        zzsl.zza = b;
        return i2;
    }

    static int zzk(int i, byte[] bArr, int i2, zzsl zzsl) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzsl.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzsl.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzsl.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzsl.zza = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                zzsl.zza = i11;
                return i12;
            }
        }
    }

    static int zzl(int i, byte[] bArr, int i2, int i3, zzvh<?> zzvh, zzsl zzsl) {
        zzva zzva = (zzva) zzvh;
        int zzj = zzj(bArr, i2, zzsl);
        zzva.zzh(zzsl.zza);
        while (zzj < i3) {
            int zzj2 = zzj(bArr, zzj, zzsl);
            if (i != zzsl.zza) {
                break;
            }
            zzj = zzj(bArr, zzj2, zzsl);
            zzva.zzh(zzsl.zza);
        }
        return zzj;
    }

    static int zzm(byte[] bArr, int i, zzsl zzsl) {
        int i2 = i + 1;
        long j = (long) bArr[i];
        if (j < 0) {
            int i3 = i2 + 1;
            byte b = bArr[i2];
            long j2 = (j & 127) | (((long) (b & Byte.MAX_VALUE)) << 7);
            int i4 = 7;
            while (b < 0) {
                int i5 = i3 + 1;
                byte b2 = bArr[i3];
                i4 += 7;
                j2 |= ((long) (b2 & Byte.MAX_VALUE)) << i4;
                b = b2;
                i3 = i5;
            }
            zzsl.zzb = j2;
            return i3;
        }
        zzsl.zzb = j;
        return i2;
    }

    static int zzn(int i, byte[] bArr, int i2, int i3, zzsl zzsl) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 == 0) {
                return zzm(bArr, i2, zzsl);
            }
            if (i4 == 1) {
                return i2 + 8;
            }
            if (i4 == 2) {
                return zzj(bArr, i2, zzsl) + zzsl.zza;
            }
            if (i4 == 3) {
                int i5 = (i & -8) | 4;
                int i6 = 0;
                while (i2 < i3) {
                    i2 = zzj(bArr, i2, zzsl);
                    i6 = zzsl.zza;
                    if (i6 == i5) {
                        break;
                    }
                    i2 = zzn(i6, bArr, i2, i3, zzsl);
                }
                if (i2 <= i3 && i6 == i5) {
                    return i2;
                }
                throw zzvk.zzg();
            } else if (i4 == 5) {
                return i2 + 4;
            } else {
                throw zzvk.zzc();
            }
        } else {
            throw zzvk.zzc();
        }
    }

    static long zzo(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }
}
