package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzgf {
    static int zza(byte[] bArr, int i, zzge zzge) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzb(b, bArr, i2, zzge);
        }
        zzge.zza = b;
        return i2;
    }

    static int zzb(int i, byte[] bArr, int i2, zzge zzge) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzge.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzge.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzge.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzge.zza = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                zzge.zza = i11;
                return i12;
            }
        }
    }

    static int zzc(byte[] bArr, int i, zzge zzge) {
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
            zzge.zzb = j2;
            return i3;
        }
        zzge.zzb = j;
        return i2;
    }

    static int zzd(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static long zze(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    static int zzf(byte[] bArr, int i, zzge zzge) {
        int zza = zza(bArr, i, zzge);
        int i2 = zzge.zza;
        if (i2 < 0) {
            throw zzic.zzb();
        } else if (i2 == 0) {
            zzge.zzc = "";
            return zza;
        } else {
            zzge.zzc = new String(bArr, zza, i2, zzia.zza);
            return zza + i2;
        }
    }

    static int zzg(byte[] bArr, int i, zzge zzge) {
        int zza = zza(bArr, i, zzge);
        int i2 = zzge.zza;
        if (i2 < 0) {
            throw zzic.zzb();
        } else if (i2 == 0) {
            zzge.zzc = "";
            return zza;
        } else {
            zzge.zzc = zzkn.zze(bArr, zza, i2);
            return zza + i2;
        }
    }

    static int zzh(byte[] bArr, int i, zzge zzge) {
        int zza = zza(bArr, i, zzge);
        int i2 = zzge.zza;
        if (i2 < 0) {
            throw zzic.zzb();
        } else if (i2 > bArr.length - zza) {
            throw zzic.zza();
        } else if (i2 == 0) {
            zzge.zzc = zzgs.zzb;
            return zza;
        } else {
            zzge.zzc = zzgs.zzj(bArr, zza, i2);
            return zza + i2;
        }
    }

    static int zzi(zzji zzji, byte[] bArr, int i, int i2, zzge zzge) {
        int i3 = i + 1;
        byte b = bArr[i];
        byte b2 = b;
        if (b < 0) {
            i3 = zzb(b, bArr, i3, zzge);
            b2 = zzge.zza;
        }
        if (b2 < 0 || b2 > i2 - i3) {
            throw zzic.zza();
        }
        Object zza = zzji.zza();
        int i4 = (b2 == 1 ? 1 : 0) + i3;
        zzji.zzh(zza, bArr, i3, i4, zzge);
        zzji.zzi(zza);
        zzge.zzc = zza;
        return i4;
    }

    static int zzj(zzji zzji, byte[] bArr, int i, int i2, int i3, zzge zzge) {
        zzja zzja = (zzja) zzji;
        Object zza = zzja.zza();
        int zzg = zzja.zzg(zza, bArr, i, i2, i3, zzge);
        zzja.zzi(zza);
        zzge.zzc = zza;
        return zzg;
    }

    static int zzk(int i, byte[] bArr, int i2, int i3, zzhz<?> zzhz, zzge zzge) {
        zzht zzht = (zzht) zzhz;
        int zza = zza(bArr, i2, zzge);
        zzht.zzh(zzge.zza);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zzge);
            if (i != zzge.zza) {
                break;
            }
            zza = zza(bArr, zza2, zzge);
            zzht.zzh(zzge.zza);
        }
        return zza;
    }

    static int zzl(byte[] bArr, int i, zzhz<?> zzhz, zzge zzge) {
        zzht zzht = (zzht) zzhz;
        int zza = zza(bArr, i, zzge);
        int i2 = zzge.zza + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zzge);
            zzht.zzh(zzge.zza);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzic.zza();
    }

    static int zzm(zzji<?> zzji, int i, byte[] bArr, int i2, int i3, zzhz<?> zzhz, zzge zzge) {
        int zzi = zzi(zzji, bArr, i2, i3, zzge);
        zzhz.add(zzge.zzc);
        while (zzi < i3) {
            int zza = zza(bArr, zzi, zzge);
            if (i != zzge.zza) {
                break;
            }
            zzi = zzi(zzji, bArr, zza, i3, zzge);
            zzhz.add(zzge.zzc);
        }
        return zzi;
    }

    static int zzn(int i, byte[] bArr, int i2, int i3, zzjx zzjx, zzge zzge) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 == 0) {
                int zzc = zzc(bArr, i2, zzge);
                zzjx.zzh(i, Long.valueOf(zzge.zzb));
                return zzc;
            } else if (i4 == 1) {
                zzjx.zzh(i, Long.valueOf(zze(bArr, i2)));
                return i2 + 8;
            } else if (i4 == 2) {
                int zza = zza(bArr, i2, zzge);
                int i5 = zzge.zza;
                if (i5 < 0) {
                    throw zzic.zzb();
                } else if (i5 <= bArr.length - zza) {
                    if (i5 == 0) {
                        zzjx.zzh(i, zzgs.zzb);
                    } else {
                        zzjx.zzh(i, zzgs.zzj(bArr, zza, i5));
                    }
                    return zza + i5;
                } else {
                    throw zzic.zza();
                }
            } else if (i4 == 3) {
                int i6 = (i & -8) | 4;
                zzjx zzb = zzjx.zzb();
                int i7 = 0;
                while (true) {
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zzge);
                    int i8 = zzge.zza;
                    if (i8 == i6) {
                        i7 = i8;
                        i2 = zza2;
                        break;
                    }
                    i7 = i8;
                    i2 = zzn(i8, bArr, zza2, i3, zzb, zzge);
                }
                if (i2 > i3 || i7 != i6) {
                    throw zzic.zze();
                }
                zzjx.zzh(i, zzb);
                return i2;
            } else if (i4 == 5) {
                zzjx.zzh(i, Integer.valueOf(zzd(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzic.zzc();
            }
        } else {
            throw zzic.zzc();
        }
    }
}
