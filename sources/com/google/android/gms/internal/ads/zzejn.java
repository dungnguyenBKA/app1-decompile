package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzejn {
    static int zza(byte[] bArr, int i, zzejm zzejm) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zza(b, bArr, i2, zzejm);
        }
        zzejm.zzils = b;
        return i2;
    }

    static int zzb(byte[] bArr, int i, zzejm zzejm) {
        int i2 = i + 1;
        long j = (long) bArr[i];
        if (j >= 0) {
            zzejm.zzilt = j;
            return i2;
        }
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
        zzejm.zzilt = j2;
        return i3;
    }

    static int zzc(byte[] bArr, int i, zzejm zzejm) {
        int zza = zza(bArr, i, zzejm);
        int i2 = zzejm.zzils;
        if (i2 < 0) {
            throw zzelo.zzbjb();
        } else if (i2 == 0) {
            zzejm.zzilu = "";
            return zza;
        } else {
            zzejm.zzilu = new String(bArr, zza, i2, zzeld.UTF_8);
            return zza + i2;
        }
    }

    static int zzd(byte[] bArr, int i, zzejm zzejm) {
        int zza = zza(bArr, i, zzejm);
        int i2 = zzejm.zzils;
        if (i2 < 0) {
            throw zzelo.zzbjb();
        } else if (i2 == 0) {
            zzejm.zzilu = "";
            return zza;
        } else {
            zzejm.zzilu = zzeok.zzo(bArr, zza, i2);
            return zza + i2;
        }
    }

    static int zze(byte[] bArr, int i, zzejm zzejm) {
        int zza = zza(bArr, i, zzejm);
        int i2 = zzejm.zzils;
        if (i2 < 0) {
            throw zzelo.zzbjb();
        } else if (i2 > bArr.length - zza) {
            throw zzelo.zzbja();
        } else if (i2 == 0) {
            zzejm.zzilu = zzejr.zzilz;
            return zza;
        } else {
            zzejm.zzilu = zzejr.zzi(bArr, zza, i2);
            return zza + i2;
        }
    }

    static int zzh(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static long zzi(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    static double zzj(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzi(bArr, i));
    }

    static float zzk(byte[] bArr, int i) {
        return Float.intBitsToFloat(zzh(bArr, i));
    }

    static int zza(int i, byte[] bArr, int i2, zzejm zzejm) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzejm.zzils = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzejm.zzils = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzejm.zzils = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzejm.zzils = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzejm.zzils = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zza(zzenj zzenj, byte[] bArr, int i, int i2, zzejm zzejm) {
        int i3 = i + 1;
        byte b = bArr[i];
        byte b2 = b;
        if (b < 0) {
            i3 = zza(b, bArr, i3, zzejm);
            b2 = zzejm.zzils;
        }
        if (b2 < 0 || b2 > i2 - i3) {
            throw zzelo.zzbja();
        }
        Object newInstance = zzenj.newInstance();
        int i4 = (b2 == 1 ? 1 : 0) + i3;
        zzenj.zza(newInstance, bArr, i3, i4, zzejm);
        zzenj.zzak(newInstance);
        zzejm.zzilu = newInstance;
        return i4;
    }

    static int zza(zzenj zzenj, byte[] bArr, int i, int i2, int i3, zzejm zzejm) {
        zzems zzems = (zzems) zzenj;
        Object newInstance = zzems.newInstance();
        int zza = zzems.zza(newInstance, bArr, i, i2, i3, zzejm);
        zzems.zzak(newInstance);
        zzejm.zzilu = newInstance;
        return zza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzell<?> zzell, zzejm zzejm) {
        zzele zzele = (zzele) zzell;
        int zza = zza(bArr, i2, zzejm);
        zzele.zzhh(zzejm.zzils);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzejm);
            if (i != zzejm.zzils) {
                break;
            }
            zza = zza(bArr, zza2, zzejm);
            zzele.zzhh(zzejm.zzils);
        }
        return zza;
    }

    static int zza(byte[] bArr, int i, zzell<?> zzell, zzejm zzejm) {
        zzele zzele = (zzele) zzell;
        int zza = zza(bArr, i, zzejm);
        int i2 = zzejm.zzils + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzejm);
            zzele.zzhh(zzejm.zzils);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzelo.zzbja();
    }

    static int zza(zzenj<?> zzenj, int i, byte[] bArr, int i2, int i3, zzell<?> zzell, zzejm zzejm) {
        int zza = zza(zzenj, bArr, i2, i3, zzejm);
        zzell.add(zzejm.zzilu);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzejm);
            if (i != zzejm.zzils) {
                break;
            }
            zza = zza(zzenj, bArr, zza2, i3, zzejm);
            zzell.add(zzejm.zzilu);
        }
        return zza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzeoe zzeoe, zzejm zzejm) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 == 0) {
                int zzb = zzb(bArr, i2, zzejm);
                zzeoe.zzd(i, Long.valueOf(zzejm.zzilt));
                return zzb;
            } else if (i4 == 1) {
                zzeoe.zzd(i, Long.valueOf(zzi(bArr, i2)));
                return i2 + 8;
            } else if (i4 == 2) {
                int zza = zza(bArr, i2, zzejm);
                int i5 = zzejm.zzils;
                if (i5 < 0) {
                    throw zzelo.zzbjb();
                } else if (i5 <= bArr.length - zza) {
                    if (i5 == 0) {
                        zzeoe.zzd(i, zzejr.zzilz);
                    } else {
                        zzeoe.zzd(i, zzejr.zzi(bArr, zza, i5));
                    }
                    return zza + i5;
                } else {
                    throw zzelo.zzbja();
                }
            } else if (i4 == 3) {
                zzeoe zzbla = zzeoe.zzbla();
                int i6 = (i & -8) | 4;
                int i7 = 0;
                while (true) {
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zzejm);
                    int i8 = zzejm.zzils;
                    i7 = i8;
                    if (i8 == i6) {
                        i2 = zza2;
                        break;
                    }
                    int zza3 = zza(i7, bArr, zza2, i3, zzbla, zzejm);
                    i7 = i8;
                    i2 = zza3;
                }
                if (i2 > i3 || i7 != i6) {
                    throw zzelo.zzbjh();
                }
                zzeoe.zzd(i, zzbla);
                return i2;
            } else if (i4 == 5) {
                zzeoe.zzd(i, Integer.valueOf(zzh(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzelo.zzbjd();
            }
        } else {
            throw zzelo.zzbjd();
        }
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzejm zzejm) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 == 0) {
                return zzb(bArr, i2, zzejm);
            }
            if (i4 == 1) {
                return i2 + 8;
            }
            if (i4 == 2) {
                return zza(bArr, i2, zzejm) + zzejm.zzils;
            }
            if (i4 == 3) {
                int i5 = (i & -8) | 4;
                int i6 = 0;
                while (i2 < i3) {
                    i2 = zza(bArr, i2, zzejm);
                    i6 = zzejm.zzils;
                    if (i6 == i5) {
                        break;
                    }
                    i2 = zza(i6, bArr, i2, i3, zzejm);
                }
                if (i2 <= i3 && i6 == i5) {
                    return i2;
                }
                throw zzelo.zzbjh();
            } else if (i4 == 5) {
                return i2 + 4;
            } else {
                throw zzelo.zzbjd();
            }
        } else {
            throw zzelo.zzbjd();
        }
    }
}
