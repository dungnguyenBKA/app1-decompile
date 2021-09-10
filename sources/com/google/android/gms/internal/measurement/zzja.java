package com.google.android.gms.internal.measurement;

import com.google.ads.AdSize;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vungle.warren.error.VungleException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.apache.http.util.LangUtils;
import sun.misc.Unsafe;

/* access modifiers changed from: package-private */
public final class zzja<T> implements zzji<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzkh.zzr();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzix zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzil zzm;
    private final zzjw<?, ?> zzn;
    private final zzhf<?> zzo;
    private final zzjc zzp;
    private final zzis zzq;

    /* JADX DEBUG: Multi-variable search result rejected for r7v0, resolved type: int[] */
    /* JADX DEBUG: Multi-variable search result rejected for r8v0, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r10v0, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r11v0, resolved type: com.google.android.gms.internal.measurement.zzix */
    /* JADX DEBUG: Multi-variable search result rejected for r13v0, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r14v0, resolved type: int[] */
    /* JADX DEBUG: Multi-variable search result rejected for r16v0, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r17v0, resolved type: com.google.android.gms.internal.measurement.zzjc */
    /* JADX DEBUG: Multi-variable search result rejected for r18v0, resolved type: com.google.android.gms.internal.measurement.zzil */
    /* JADX DEBUG: Multi-variable search result rejected for r19v0, resolved type: com.google.android.gms.internal.measurement.zzjw<?, ?> */
    /* JADX DEBUG: Multi-variable search result rejected for r20v0, resolved type: com.google.android.gms.internal.measurement.zzhf<?> */
    /* JADX WARN: Multi-variable type inference failed */
    private zzja(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzix zzix, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzjc zzjc, zzil zzil, zzjw<?, ?> zzjw, zzhf<?> zzhf, zzis zzis) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zze = objArr;
        this.zzf = i;
        this.zzi = zzix;
        boolean z3 = false;
        if (zzjw != 0 && zzjw.zza(i2)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzj = z2;
        this.zzk = iArr3;
        this.zzl = i3;
        this.zzp = i4;
        this.zzm = zzjc;
        this.zzn = zzil;
        this.zzo = zzjw;
        this.zzg = i2;
        this.zzq = zzhf;
    }

    private final int zzA(int i) {
        return this.zzc[i + 1];
    }

    private final int zzB(int i) {
        return this.zzc[i + 2];
    }

    private static int zzC(int i) {
        return (i >>> 20) & 255;
    }

    private static <T> double zzD(T t, long j) {
        return ((Double) zzkh.zzn(t, j)).doubleValue();
    }

    private static <T> float zzE(T t, long j) {
        return ((Float) zzkh.zzn(t, j)).floatValue();
    }

    private static <T> int zzF(T t, long j) {
        return ((Integer) zzkh.zzn(t, j)).intValue();
    }

    private static <T> long zzG(T t, long j) {
        return ((Long) zzkh.zzn(t, j)).longValue();
    }

    private static <T> boolean zzH(T t, long j) {
        return ((Boolean) zzkh.zzn(t, j)).booleanValue();
    }

    private final boolean zzI(T t, T t2, int i) {
        return zzK(t, i) == zzK(t2, i);
    }

    private final boolean zzJ(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzK(t, i);
        }
        return (i3 & i4) != 0;
    }

    private final boolean zzK(T t, int i) {
        int zzB = zzB(i);
        long j = (long) (zzB & 1048575);
        if (j != 1048575) {
            return (zzkh.zzd(t, j) & (1 << (zzB >>> 20))) != 0;
        }
        int zzA = zzA(i);
        long j2 = (long) (zzA & 1048575);
        switch (zzC(zzA)) {
            case 0:
                return zzkh.zzl(t, j2) != 0.0d;
            case 1:
                return zzkh.zzj(t, j2) != 0.0f;
            case 2:
                return zzkh.zzf(t, j2) != 0;
            case 3:
                return zzkh.zzf(t, j2) != 0;
            case 4:
                return zzkh.zzd(t, j2) != 0;
            case 5:
                return zzkh.zzf(t, j2) != 0;
            case 6:
                return zzkh.zzd(t, j2) != 0;
            case 7:
                return zzkh.zzh(t, j2);
            case 8:
                Object zzn2 = zzkh.zzn(t, j2);
                if (zzn2 instanceof String) {
                    return !((String) zzn2).isEmpty();
                }
                if (zzn2 instanceof zzgs) {
                    return !zzgs.zzb.equals(zzn2);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzkh.zzn(t, j2) != null;
            case 10:
                return !zzgs.zzb.equals(zzkh.zzn(t, j2));
            case 11:
                return zzkh.zzd(t, j2) != 0;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                return zzkh.zzd(t, j2) != 0;
            case 13:
                return zzkh.zzd(t, j2) != 0;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return zzkh.zzf(t, j2) != 0;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                return zzkh.zzd(t, j2) != 0;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                return zzkh.zzf(t, j2) != 0;
            case 17:
                return zzkh.zzn(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzL(T t, int i) {
        int zzB = zzB(i);
        long j = (long) (1048575 & zzB);
        if (j != 1048575) {
            zzkh.zze(t, j, (1 << (zzB >>> 20)) | zzkh.zzd(t, j));
        }
    }

    private final boolean zzM(T t, int i, int i2) {
        return zzkh.zzd(t, (long) (zzB(i2) & 1048575)) == i;
    }

    private final void zzN(T t, int i, int i2) {
        zzkh.zze(t, (long) (zzB(i2) & 1048575), i);
    }

    private final int zzO(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzQ(i, 0);
    }

    private final int zzP(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzQ(i, i2);
    }

    private final int zzQ(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private final void zzR(T t, zzha zzha) {
        int i;
        if (!this.zzh) {
            int length = this.zzc.length;
            Unsafe unsafe = zzb;
            int i2 = 1048575;
            int i3 = 0;
            int i4 = 0;
            int i5 = 1048575;
            while (i3 < length) {
                int zzA = zzA(i3);
                int i6 = this.zzc[i3];
                int zzC = zzC(zzA);
                if (zzC <= 17) {
                    int i7 = this.zzc[i3 + 2];
                    int i8 = i7 & i2;
                    if (i8 != i5) {
                        i4 = unsafe.getInt(t, (long) i8);
                        i5 = i8;
                    }
                    i = 1 << (i7 >>> 20);
                } else {
                    i = 0;
                }
                long j = (long) (zzA & i2);
                switch (zzC) {
                    case 0:
                        if ((i4 & i) != 0) {
                            zzha.zzf(i6, zzkh.zzl(t, j));
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 1:
                        if ((i4 & i) != 0) {
                            zzha.zze(i6, zzkh.zzj(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 2:
                        if ((i4 & i) != 0) {
                            zzha.zzc(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 3:
                        if ((i4 & i) != 0) {
                            zzha.zzh(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 4:
                        if ((i4 & i) != 0) {
                            zzha.zzi(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 5:
                        if ((i4 & i) != 0) {
                            zzha.zzj(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 6:
                        if ((i4 & i) != 0) {
                            zzha.zzk(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 7:
                        if ((i4 & i) != 0) {
                            zzha.zzl(i6, zzkh.zzh(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 8:
                        if ((i4 & i) != 0) {
                            zzT(i6, unsafe.getObject(t, j), zzha);
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 9:
                        if ((i4 & i) != 0) {
                            zzha.zzr(i6, unsafe.getObject(t, j), zzv(i3));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 10:
                        if ((i4 & i) != 0) {
                            zzha.zzn(i6, (zzgs) unsafe.getObject(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 11:
                        if ((i4 & i) != 0) {
                            zzha.zzo(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                        if ((i4 & i) != 0) {
                            zzha.zzg(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 13:
                        if ((i4 & i) != 0) {
                            zzha.zzb(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                        if ((i4 & i) != 0) {
                            zzha.zzd(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                        if ((i4 & i) != 0) {
                            zzha.zzp(i6, unsafe.getInt(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                        if ((i4 & i) != 0) {
                            zzha.zzq(i6, unsafe.getLong(t, j));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case 17:
                        if ((i4 & i) != 0) {
                            zzha.zzs(i6, unsafe.getObject(t, j), zzv(i3));
                        } else {
                            continue;
                        }
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                        zzjk.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                        zzjk.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case 20:
                        zzjk.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        zzjk.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                        zzjk.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        zzjk.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                        zzjk.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                        zzjk.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        continue;
                        i3 += 3;
                        i2 = 1048575;
                    case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                        zzjk.zzX(this.zzc[i3], (List) unsafe.getObject(t, j), zzha);
                        break;
                    case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                        zzjk.zzZ(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, zzv(i3));
                        break;
                    case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                        zzjk.zzY(this.zzc[i3], (List) unsafe.getObject(t, j), zzha);
                        break;
                    case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                        zzjk.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        break;
                    case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                        zzjk.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        break;
                    case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                        zzjk.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        break;
                    case 32:
                        zzjk.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        break;
                    case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                        zzjk.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        break;
                    case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                        zzjk.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, false);
                        break;
                    case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                        zzjk.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 36:
                        zzjk.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                        zzjk.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 38:
                        zzjk.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 39:
                        zzjk.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 40:
                        zzjk.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 41:
                        zzjk.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 42:
                        zzjk.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 43:
                        zzjk.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 44:
                        zzjk.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 45:
                        zzjk.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case ModuleDescriptor.MODULE_VERSION:
                        zzjk.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 47:
                        zzjk.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 48:
                        zzjk.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, true);
                        break;
                    case 49:
                        zzjk.zzaa(this.zzc[i3], (List) unsafe.getObject(t, j), zzha, zzv(i3));
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT:
                        zzS(zzha, i6, unsafe.getObject(t, j), i3);
                        break;
                    case 51:
                        if (zzM(t, i6, i3)) {
                            zzha.zzf(i6, zzD(t, j));
                            break;
                        }
                        break;
                    case 52:
                        if (zzM(t, i6, i3)) {
                            zzha.zze(i6, zzE(t, j));
                            break;
                        }
                        break;
                    case 53:
                        if (zzM(t, i6, i3)) {
                            zzha.zzc(i6, zzG(t, j));
                            break;
                        }
                        break;
                    case 54:
                        if (zzM(t, i6, i3)) {
                            zzha.zzh(i6, zzG(t, j));
                            break;
                        }
                        break;
                    case 55:
                        if (zzM(t, i6, i3)) {
                            zzha.zzi(i6, zzF(t, j));
                            break;
                        }
                        break;
                    case 56:
                        if (zzM(t, i6, i3)) {
                            zzha.zzj(i6, zzG(t, j));
                            break;
                        }
                        break;
                    case 57:
                        if (zzM(t, i6, i3)) {
                            zzha.zzk(i6, zzF(t, j));
                            break;
                        }
                        break;
                    case 58:
                        if (zzM(t, i6, i3)) {
                            zzha.zzl(i6, zzH(t, j));
                            break;
                        }
                        break;
                    case 59:
                        if (zzM(t, i6, i3)) {
                            zzT(i6, unsafe.getObject(t, j), zzha);
                            break;
                        }
                        break;
                    case 60:
                        if (zzM(t, i6, i3)) {
                            zzha.zzr(i6, unsafe.getObject(t, j), zzv(i3));
                            break;
                        }
                        break;
                    case 61:
                        if (zzM(t, i6, i3)) {
                            zzha.zzn(i6, (zzgs) unsafe.getObject(t, j));
                            break;
                        }
                        break;
                    case 62:
                        if (zzM(t, i6, i3)) {
                            zzha.zzo(i6, zzF(t, j));
                            break;
                        }
                        break;
                    case 63:
                        if (zzM(t, i6, i3)) {
                            zzha.zzg(i6, zzF(t, j));
                            break;
                        }
                        break;
                    case 64:
                        if (zzM(t, i6, i3)) {
                            zzha.zzb(i6, zzF(t, j));
                            break;
                        }
                        break;
                    case 65:
                        if (zzM(t, i6, i3)) {
                            zzha.zzd(i6, zzG(t, j));
                            break;
                        }
                        break;
                    case 66:
                        if (zzM(t, i6, i3)) {
                            zzha.zzp(i6, zzF(t, j));
                            break;
                        }
                        break;
                    case 67:
                        if (zzM(t, i6, i3)) {
                            zzha.zzq(i6, zzG(t, j));
                            break;
                        }
                        break;
                    case 68:
                        if (zzM(t, i6, i3)) {
                            zzha.zzs(i6, unsafe.getObject(t, j), zzv(i3));
                            break;
                        }
                        break;
                }
                i3 += 3;
                i2 = 1048575;
            }
            zzjw<?, ?> zzjw = this.zzn;
            zzjw.zzi(zzjw.zzd(t), zzha);
            return;
        }
        this.zzo.zzb(t);
        throw null;
    }

    private final <K, V> void zzS(zzha zzha, int i, Object obj, int i2) {
        if (obj != null) {
            zziq zziq = (zziq) zzw(i2);
            throw null;
        }
    }

    private static final void zzT(int i, Object obj, zzha zzha) {
        if (obj instanceof String) {
            zzha.zzm(i, (String) obj);
        } else {
            zzha.zzn(i, (zzgs) obj);
        }
    }

    static zzjx zzf(Object obj) {
        zzhs zzhs = (zzhs) obj;
        zzjx zzjx = zzhs.zzc;
        if (zzjx != zzjx.zza()) {
            return zzjx;
        }
        zzjx zzb2 = zzjx.zzb();
        zzhs.zzc = zzb2;
        return zzb2;
    }

    static <T> zzja<T> zzk(Class<T> cls, zziu zziu, zzjc zzjc, zzil zzil, zzjw<?, ?> zzjw, zzhf<?> zzhf, zzis zzis) {
        if (zziu instanceof zzjh) {
            return zzl((zzjh) zziu, zzjc, zzil, zzjw, zzhf, zzis);
        }
        zzjt zzjt = (zzjt) zziu;
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:120:0x025d  */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0260  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0278  */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x027b  */
    /* JADX WARNING: Removed duplicated region for block: B:156:0x032b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T> com.google.android.gms.internal.measurement.zzja<T> zzl(com.google.android.gms.internal.measurement.zzjh r33, com.google.android.gms.internal.measurement.zzjc r34, com.google.android.gms.internal.measurement.zzil r35, com.google.android.gms.internal.measurement.zzjw<?, ?> r36, com.google.android.gms.internal.measurement.zzhf<?> r37, com.google.android.gms.internal.measurement.zzis r38) {
        /*
        // Method dump skipped, instructions count: 1016
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzja.zzl(com.google.android.gms.internal.measurement.zzjh, com.google.android.gms.internal.measurement.zzjc, com.google.android.gms.internal.measurement.zzil, com.google.android.gms.internal.measurement.zzjw, com.google.android.gms.internal.measurement.zzhf, com.google.android.gms.internal.measurement.zzis):com.google.android.gms.internal.measurement.zzja");
    }

    private static Field zzn(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            throw new RuntimeException(ic.l(sb, " not found. Known fields are ", arrays));
        }
    }

    private final void zzo(T t, T t2, int i) {
        long zzA = (long) (zzA(i) & 1048575);
        if (zzK(t2, i)) {
            Object zzn2 = zzkh.zzn(t, zzA);
            Object zzn3 = zzkh.zzn(t2, zzA);
            if (zzn2 != null && zzn3 != null) {
                zzkh.zzo(t, zzA, zzia.zzi(zzn2, zzn3));
                zzL(t, i);
            } else if (zzn3 != null) {
                zzkh.zzo(t, zzA, zzn3);
                zzL(t, i);
            }
        }
    }

    private final void zzp(T t, T t2, int i) {
        int zzA = zzA(i);
        int i2 = this.zzc[i];
        long j = (long) (zzA & 1048575);
        if (zzM(t2, i2, i)) {
            Object zzn2 = zzM(t, i2, i) ? zzkh.zzn(t, j) : null;
            Object zzn3 = zzkh.zzn(t2, j);
            if (zzn2 != null && zzn3 != null) {
                zzkh.zzo(t, j, zzia.zzi(zzn2, zzn3));
                zzN(t, i2, i);
            } else if (zzn3 != null) {
                zzkh.zzo(t, j, zzn3);
                zzN(t, i2, i);
            }
        }
    }

    private final int zzq(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Unsafe unsafe = zzb;
        int i17 = 0;
        int i18 = 0;
        int i19 = 1048575;
        for (int i20 = 0; i20 < this.zzc.length; i20 += 3) {
            int zzA = zzA(i20);
            int i21 = this.zzc[i20];
            int zzC = zzC(zzA);
            if (zzC <= 17) {
                int i22 = this.zzc[i20 + 2];
                int i23 = i22 & 1048575;
                i = 1 << (i22 >>> 20);
                if (i23 != i19) {
                    i18 = unsafe.getInt(t, (long) i23);
                    i19 = i23;
                }
            } else {
                i = 0;
            }
            long j = (long) (zzA & 1048575);
            switch (zzC) {
                case 0:
                    if ((i18 & i) != 0) {
                        i2 = zzgz.zzw(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i18 & i) != 0) {
                        i4 = zzgz.zzw(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i18 & i) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        i6 = zzgz.zzw(i21 << 3);
                        i5 = zzgz.zzx(j2);
                        i17 = i5 + i6 + i17;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i18 & i) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        i6 = zzgz.zzw(i21 << 3);
                        i5 = zzgz.zzx(j3);
                        i17 = i5 + i6 + i17;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i18 & i) != 0) {
                        int i24 = unsafe.getInt(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzv(i24);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i18 & i) != 0) {
                        i2 = zzgz.zzw(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i18 & i) != 0) {
                        i4 = zzgz.zzw(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i18 & i) != 0) {
                        i9 = zzgz.zzw(i21 << 3);
                        i3 = i9 + 1;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i18 & i) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zzgs) {
                            i12 = zzgz.zzw(i21 << 3);
                            i13 = ((zzgs) object).zzc();
                            i11 = zzgz.zzw(i13);
                            i10 = i11 + i13 + i12;
                            i17 += i10;
                            break;
                        } else {
                            i7 = zzgz.zzw(i21 << 3);
                            i8 = zzgz.zzy((String) object);
                            i3 = i8 + i7;
                            i17 += i3;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if ((i18 & i) != 0) {
                        i3 = zzjk.zzw(i21, unsafe.getObject(t, j), zzv(i20));
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i18 & i) != 0) {
                        i12 = zzgz.zzw(i21 << 3);
                        i13 = ((zzgs) unsafe.getObject(t, j)).zzc();
                        i11 = zzgz.zzw(i13);
                        i10 = i11 + i13 + i12;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i18 & i) != 0) {
                        int i25 = unsafe.getInt(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzw(i25);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if ((i18 & i) != 0) {
                        int i26 = unsafe.getInt(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzv(i26);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i18 & i) != 0) {
                        i4 = zzgz.zzw(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if ((i18 & i) != 0) {
                        i2 = zzgz.zzw(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if ((i18 & i) != 0) {
                        int i27 = unsafe.getInt(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzw((i27 >> 31) ^ (i27 + i27));
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if ((i18 & i) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzx((j4 >> 63) ^ (j4 + j4));
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i18 & i) != 0) {
                        i3 = zzgz.zzE(i21, (zzix) unsafe.getObject(t, j), zzv(i20));
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    i3 = zzjk.zzs(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    i3 = zzjk.zzq(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case 20:
                    i3 = zzjk.zzc(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    i3 = zzjk.zze(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    i3 = zzjk.zzk(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    i3 = zzjk.zzs(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    i3 = zzjk.zzq(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    i3 = zzjk.zzu(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    i3 = zzjk.zzv(i21, (List) unsafe.getObject(t, j));
                    i17 += i3;
                    break;
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                    i3 = zzjk.zzx(i21, (List) unsafe.getObject(t, j), zzv(i20));
                    i17 += i3;
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    i3 = zzjk.zzy(i21, (List) unsafe.getObject(t, j));
                    i17 += i3;
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    i3 = zzjk.zzm(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    i3 = zzjk.zzi(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    i3 = zzjk.zzq(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case 32:
                    i3 = zzjk.zzs(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    i3 = zzjk.zzo(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    i3 = zzjk.zzg(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    i16 = zzjk.zzr((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    i16 = zzjk.zzp((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    i16 = zzjk.zzb((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    i16 = zzjk.zzd((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    i16 = zzjk.zzj((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    i16 = zzjk.zzr((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    i16 = zzjk.zzp((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    i16 = zzjk.zzt((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    i16 = zzjk.zzl((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    i16 = zzjk.zzh((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    i16 = zzjk.zzp((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case ModuleDescriptor.MODULE_VERSION:
                    i16 = zzjk.zzr((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    i16 = zzjk.zzn((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    i16 = zzjk.zzf((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzgz.zzu(i21);
                        i14 = zzgz.zzw(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    i3 = zzjk.zzz(i21, (List) unsafe.getObject(t, j), zzv(i20));
                    i17 += i3;
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    zzis.zza(i21, unsafe.getObject(t, j), zzw(i20));
                    break;
                case 51:
                    if (zzM(t, i21, i20)) {
                        i2 = zzgz.zzw(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzM(t, i21, i20)) {
                        i4 = zzgz.zzw(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzM(t, i21, i20)) {
                        long zzG = zzG(t, j);
                        i6 = zzgz.zzw(i21 << 3);
                        i5 = zzgz.zzx(zzG);
                        i17 = i5 + i6 + i17;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzM(t, i21, i20)) {
                        long zzG2 = zzG(t, j);
                        i6 = zzgz.zzw(i21 << 3);
                        i5 = zzgz.zzx(zzG2);
                        i17 = i5 + i6 + i17;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzM(t, i21, i20)) {
                        int zzF = zzF(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzv(zzF);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzM(t, i21, i20)) {
                        i2 = zzgz.zzw(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzM(t, i21, i20)) {
                        i4 = zzgz.zzw(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzM(t, i21, i20)) {
                        i9 = zzgz.zzw(i21 << 3);
                        i3 = i9 + 1;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzM(t, i21, i20)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zzgs) {
                            i12 = zzgz.zzw(i21 << 3);
                            i13 = ((zzgs) object2).zzc();
                            i11 = zzgz.zzw(i13);
                            i10 = i11 + i13 + i12;
                            i17 += i10;
                            break;
                        } else {
                            i7 = zzgz.zzw(i21 << 3);
                            i8 = zzgz.zzy((String) object2);
                            i3 = i8 + i7;
                            i17 += i3;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (zzM(t, i21, i20)) {
                        i3 = zzjk.zzw(i21, unsafe.getObject(t, j), zzv(i20));
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzM(t, i21, i20)) {
                        i12 = zzgz.zzw(i21 << 3);
                        i13 = ((zzgs) unsafe.getObject(t, j)).zzc();
                        i11 = zzgz.zzw(i13);
                        i10 = i11 + i13 + i12;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzM(t, i21, i20)) {
                        int zzF2 = zzF(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzw(zzF2);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzM(t, i21, i20)) {
                        int zzF3 = zzF(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzv(zzF3);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzM(t, i21, i20)) {
                        i4 = zzgz.zzw(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzM(t, i21, i20)) {
                        i2 = zzgz.zzw(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzM(t, i21, i20)) {
                        int zzF4 = zzF(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzw((zzF4 >> 31) ^ (zzF4 + zzF4));
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzM(t, i21, i20)) {
                        long zzG3 = zzG(t, j);
                        i7 = zzgz.zzw(i21 << 3);
                        i8 = zzgz.zzx((zzG3 >> 63) ^ (zzG3 + zzG3));
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzM(t, i21, i20)) {
                        i3 = zzgz.zzE(i21, (zzix) unsafe.getObject(t, j), zzv(i20));
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzjw<?, ?> zzjw = this.zzn;
        int zzh2 = i17 + zzjw.zzh(zzjw.zzd(t));
        if (!this.zzh) {
            return zzh2;
        }
        this.zzo.zzb(t);
        throw null;
    }

    private final int zzr(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        Unsafe unsafe = zzb;
        int i16 = 0;
        for (int i17 = 0; i17 < this.zzc.length; i17 += 3) {
            int zzA = zzA(i17);
            int zzC = zzC(zzA);
            int i18 = this.zzc[i17];
            long j = (long) (zzA & 1048575);
            if (zzC >= zzhk.DOUBLE_LIST_PACKED.zza() && zzC <= zzhk.SINT64_LIST_PACKED.zza()) {
                int i19 = this.zzc[i17 + 2];
            }
            switch (zzC) {
                case 0:
                    if (zzK(t, i17)) {
                        i = zzgz.zzw(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if (zzK(t, i17)) {
                        i3 = zzgz.zzw(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if (zzK(t, i17)) {
                        long zzf2 = zzkh.zzf(t, j);
                        i4 = zzgz.zzw(i18 << 3);
                        i5 = zzgz.zzx(zzf2);
                        i2 = i5 + i4;
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if (zzK(t, i17)) {
                        long zzf3 = zzkh.zzf(t, j);
                        i4 = zzgz.zzw(i18 << 3);
                        i5 = zzgz.zzx(zzf3);
                        i2 = i5 + i4;
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if (zzK(t, i17)) {
                        int zzd2 = zzkh.zzd(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzv(zzd2);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    if (zzK(t, i17)) {
                        i = zzgz.zzw(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if (zzK(t, i17)) {
                        i3 = zzgz.zzw(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if (zzK(t, i17)) {
                        i8 = zzgz.zzw(i18 << 3);
                        i2 = i8 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (zzK(t, i17)) {
                        Object zzn2 = zzkh.zzn(t, j);
                        if (!(zzn2 instanceof zzgs)) {
                            i6 = zzgz.zzw(i18 << 3);
                            i7 = zzgz.zzy((String) zzn2);
                            i2 = i7 + i6;
                            break;
                        } else {
                            i11 = zzgz.zzw(i18 << 3);
                            i12 = ((zzgs) zzn2).zzc();
                            i10 = zzgz.zzw(i12);
                            i9 = i10 + i12 + i11;
                            i16 += i9;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if (zzK(t, i17)) {
                        i2 = zzjk.zzw(i18, zzkh.zzn(t, j), zzv(i17));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if (zzK(t, i17)) {
                        i11 = zzgz.zzw(i18 << 3);
                        i12 = ((zzgs) zzkh.zzn(t, j)).zzc();
                        i10 = zzgz.zzw(i12);
                        i9 = i10 + i12 + i11;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 11:
                    if (zzK(t, i17)) {
                        int zzd3 = zzkh.zzd(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzw(zzd3);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if (zzK(t, i17)) {
                        int zzd4 = zzkh.zzd(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzv(zzd4);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    if (zzK(t, i17)) {
                        i3 = zzgz.zzw(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if (zzK(t, i17)) {
                        i = zzgz.zzw(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if (zzK(t, i17)) {
                        int zzd5 = zzkh.zzd(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzw((zzd5 >> 31) ^ (zzd5 + zzd5));
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if (zzK(t, i17)) {
                        long zzf4 = zzkh.zzf(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzx((zzf4 >> 63) ^ (zzf4 + zzf4));
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    if (zzK(t, i17)) {
                        i2 = zzgz.zzE(i18, (zzix) zzkh.zzn(t, j), zzv(i17));
                        break;
                    } else {
                        continue;
                    }
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    i2 = zzjk.zzs(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    i2 = zzjk.zzq(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case 20:
                    i2 = zzjk.zzc(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    i2 = zzjk.zze(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    i2 = zzjk.zzk(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    i2 = zzjk.zzs(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    i2 = zzjk.zzq(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    i2 = zzjk.zzu(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    i2 = zzjk.zzv(i18, (List) zzkh.zzn(t, j));
                    break;
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                    i2 = zzjk.zzx(i18, (List) zzkh.zzn(t, j), zzv(i17));
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    i2 = zzjk.zzy(i18, (List) zzkh.zzn(t, j));
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    i2 = zzjk.zzm(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    i2 = zzjk.zzi(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    i2 = zzjk.zzq(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case 32:
                    i2 = zzjk.zzs(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    i2 = zzjk.zzo(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    i2 = zzjk.zzg(i18, (List) zzkh.zzn(t, j), false);
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    i15 = zzjk.zzr((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 36:
                    i15 = zzjk.zzp((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    i15 = zzjk.zzb((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 38:
                    i15 = zzjk.zzd((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 39:
                    i15 = zzjk.zzj((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 40:
                    i15 = zzjk.zzr((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 41:
                    i15 = zzjk.zzp((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 42:
                    i15 = zzjk.zzt((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 43:
                    i15 = zzjk.zzl((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 44:
                    i15 = zzjk.zzh((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 45:
                    i15 = zzjk.zzp((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case ModuleDescriptor.MODULE_VERSION:
                    i15 = zzjk.zzr((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 47:
                    i15 = zzjk.zzn((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 48:
                    i15 = zzjk.zzf((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzgz.zzu(i18);
                        i13 = zzgz.zzw(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 49:
                    i2 = zzjk.zzz(i18, (List) zzkh.zzn(t, j), zzv(i17));
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    zzis.zza(i18, zzkh.zzn(t, j), zzw(i17));
                    continue;
                case 51:
                    if (zzM(t, i18, i17)) {
                        i = zzgz.zzw(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (zzM(t, i18, i17)) {
                        i3 = zzgz.zzw(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (zzM(t, i18, i17)) {
                        long zzG = zzG(t, j);
                        i4 = zzgz.zzw(i18 << 3);
                        i5 = zzgz.zzx(zzG);
                        i2 = i5 + i4;
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (zzM(t, i18, i17)) {
                        long zzG2 = zzG(t, j);
                        i4 = zzgz.zzw(i18 << 3);
                        i5 = zzgz.zzx(zzG2);
                        i2 = i5 + i4;
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (zzM(t, i18, i17)) {
                        int zzF = zzF(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzv(zzF);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    if (zzM(t, i18, i17)) {
                        i = zzgz.zzw(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (zzM(t, i18, i17)) {
                        i3 = zzgz.zzw(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (zzM(t, i18, i17)) {
                        i8 = zzgz.zzw(i18 << 3);
                        i2 = i8 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (zzM(t, i18, i17)) {
                        Object zzn3 = zzkh.zzn(t, j);
                        if (!(zzn3 instanceof zzgs)) {
                            i6 = zzgz.zzw(i18 << 3);
                            i7 = zzgz.zzy((String) zzn3);
                            i2 = i7 + i6;
                            break;
                        } else {
                            i11 = zzgz.zzw(i18 << 3);
                            i12 = ((zzgs) zzn3).zzc();
                            i10 = zzgz.zzw(i12);
                            i9 = i10 + i12 + i11;
                            i16 += i9;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (zzM(t, i18, i17)) {
                        i2 = zzjk.zzw(i18, zzkh.zzn(t, j), zzv(i17));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (zzM(t, i18, i17)) {
                        i11 = zzgz.zzw(i18 << 3);
                        i12 = ((zzgs) zzkh.zzn(t, j)).zzc();
                        i10 = zzgz.zzw(i12);
                        i9 = i10 + i12 + i11;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 62:
                    if (zzM(t, i18, i17)) {
                        int zzF2 = zzF(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzw(zzF2);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    if (zzM(t, i18, i17)) {
                        int zzF3 = zzF(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzv(zzF3);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    if (zzM(t, i18, i17)) {
                        i3 = zzgz.zzw(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (zzM(t, i18, i17)) {
                        i = zzgz.zzw(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (zzM(t, i18, i17)) {
                        int zzF4 = zzF(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzw((zzF4 >> 31) ^ (zzF4 + zzF4));
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    if (zzM(t, i18, i17)) {
                        long zzG3 = zzG(t, j);
                        i6 = zzgz.zzw(i18 << 3);
                        i7 = zzgz.zzx((zzG3 >> 63) ^ (zzG3 + zzG3));
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    if (zzM(t, i18, i17)) {
                        i2 = zzgz.zzE(i18, (zzix) zzkh.zzn(t, j), zzv(i17));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i16 += i2;
        }
        zzjw<?, ?> zzjw = this.zzn;
        return i16 + zzjw.zzh(zzjw.zzd(t));
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:57)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:15)
        */
    /* JADX WARNING: Removed duplicated region for block: B:255:0x044f A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01cf  */
    private final int zzs(T r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.android.gms.internal.measurement.zzge r29) {
        /*
        // Method dump skipped, instructions count: 1172
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzja.zzs(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.zzge):int");
    }

    private final <K, V> int zzt(T t, byte[] bArr, int i, int i2, int i3, long j, zzge zzge) {
        Unsafe unsafe = zzb;
        Object zzw = zzw(i3);
        Object object = unsafe.getObject(t, j);
        if (!((zzir) object).zze()) {
            zzir<K, V> zzc2 = zzir.zza().zzc();
            zzis.zzb(zzc2, object);
            unsafe.putObject(t, j, zzc2);
        }
        zziq zziq = (zziq) zzw;
        throw null;
    }

    private final int zzu(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzge zzge) {
        Unsafe unsafe = zzb;
        long j2 = (long) (this.zzc[i8 + 2] & 1048575);
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(zzgf.zze(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(zzgf.zzd(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzc2 = zzgf.zzc(bArr, i, zzge);
                    unsafe.putObject(t, j, Long.valueOf(zzge.zzb));
                    unsafe.putInt(t, j2, i4);
                    return zzc2;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zza2 = zzgf.zza(bArr, i, zzge);
                    unsafe.putObject(t, j, Integer.valueOf(zzge.zza));
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzgf.zze(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzgf.zzd(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzc3 = zzgf.zzc(bArr, i, zzge);
                    unsafe.putObject(t, j, Boolean.valueOf(zzge.zzb != 0));
                    unsafe.putInt(t, j2, i4);
                    return zzc3;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int zza3 = zzgf.zza(bArr, i, zzge);
                    int i9 = zzge.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || zzkn.zzb(bArr, zza3, zza3 + i9)) {
                        unsafe.putObject(t, j, new String(bArr, zza3, i9, zzia.zza));
                        zza3 += i9;
                    } else {
                        throw zzic.zzf();
                    }
                    unsafe.putInt(t, j2, i4);
                    return zza3;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int zzi2 = zzgf.zzi(zzv(i8), bArr, i, i2, zzge);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzge.zzc);
                    } else {
                        unsafe.putObject(t, j, zzia.zzi(object, zzge.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzi2;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zzh2 = zzgf.zzh(bArr, i, zzge);
                    unsafe.putObject(t, j, zzge.zzc);
                    unsafe.putInt(t, j2, i4);
                    return zzh2;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int zza4 = zzgf.zza(bArr, i, zzge);
                    int i10 = zzge.zza;
                    zzhw zzx = zzx(i8);
                    if (zzx == null || zzx.zza(i10)) {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                    } else {
                        zzf(t).zzh(i3, Long.valueOf((long) i10));
                    }
                    return zza4;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int zza5 = zzgf.zza(bArr, i, zzge);
                    unsafe.putObject(t, j, Integer.valueOf(zzgv.zzb(zzge.zza)));
                    unsafe.putInt(t, j2, i4);
                    return zza5;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzc4 = zzgf.zzc(bArr, i, zzge);
                    unsafe.putObject(t, j, Long.valueOf(zzgv.zzc(zzge.zzb)));
                    unsafe.putInt(t, j2, i4);
                    return zzc4;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int zzj2 = zzgf.zzj(zzv(i8), bArr, i, i2, (i3 & -8) | 4, zzge);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzge.zzc);
                    } else {
                        unsafe.putObject(t, j, zzia.zzi(object2, zzge.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzj2;
                }
                break;
        }
        return i;
    }

    private final zzji zzv(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzji zzji = (zzji) this.zzd[i3];
        if (zzji != null) {
            return zzji;
        }
        zzji<T> zzb2 = zzjf.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzw(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final zzhw zzx(int i) {
        int i2 = i / 3;
        return (zzhw) this.zzd[i2 + i2 + 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /* JADX WARNING: Code restructure failed: missing block: B:101:0x02a8, code lost:
        if (r0 != r4) goto L_0x02aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x02be, code lost:
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:109:0x02f1, code lost:
        if (r0 != r15) goto L_0x02aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:0x0314, code lost:
        if (r0 != r15) goto L_0x02aa;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzy(T r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.measurement.zzge r35) {
        /*
        // Method dump skipped, instructions count: 898
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzja.zzy(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzge):int");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: com.google.android.gms.internal.measurement.zzji */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzz(Object obj, int i, zzji zzji) {
        return zzji.zzj(zzkh.zzn(obj, (long) (i & 1048575)));
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final T zza() {
        return (T) ((zzhs) this.zzg).zzl(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final boolean zzb(T t, T t2) {
        boolean z;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzA = zzA(i);
            long j = (long) (zzA & 1048575);
            switch (zzC(zzA)) {
                case 0:
                    if (zzI(t, t2, i) && Double.doubleToLongBits(zzkh.zzl(t, j)) == Double.doubleToLongBits(zzkh.zzl(t2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzI(t, t2, i) && Float.floatToIntBits(zzkh.zzj(t, j)) == Float.floatToIntBits(zzkh.zzj(t2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzI(t, t2, i) && zzkh.zzf(t, j) == zzkh.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzI(t, t2, i) && zzkh.zzf(t, j) == zzkh.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzI(t, t2, i) && zzkh.zzd(t, j) == zzkh.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzI(t, t2, i) && zzkh.zzf(t, j) == zzkh.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzI(t, t2, i) && zzkh.zzd(t, j) == zzkh.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzI(t, t2, i) && zzkh.zzh(t, j) == zzkh.zzh(t2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzI(t, t2, i) && zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzI(t, t2, i) && zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzI(t, t2, i) && zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzI(t, t2, i) && zzkh.zzd(t, j) == zzkh.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if (zzI(t, t2, i) && zzkh.zzd(t, j) == zzkh.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzI(t, t2, i) && zzkh.zzd(t, j) == zzkh.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if (zzI(t, t2, i) && zzkh.zzf(t, j) == zzkh.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if (zzI(t, t2, i) && zzkh.zzd(t, j) == zzkh.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if (zzI(t, t2, i) && zzkh.zzf(t, j) == zzkh.zzf(t2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzI(t, t2, i) && zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                case 20:
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                case 32:
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                case 36:
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case ModuleDescriptor.MODULE_VERSION:
                case 47:
                case 48:
                case 49:
                    z = zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j));
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    z = zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzB = (long) (zzB(i) & 1048575);
                    if (zzkh.zzd(t, zzB) == zzkh.zzd(t2, zzB) && zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!z) {
                return false;
            }
        }
        if (!this.zzn.zzd(t).equals(this.zzn.zzd(t2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zzb(t);
        this.zzo.zzb(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final int zzc(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int length = this.zzc.length;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int zzA = zzA(i6);
            int i7 = this.zzc[i6];
            long j = (long) (1048575 & zzA);
            int i8 = 37;
            switch (zzC(zzA)) {
                case 0:
                    i2 = i5 * 53;
                    i = zzia.zze(Double.doubleToLongBits(zzkh.zzl(t, j)));
                    i5 = i + i2;
                    break;
                case 1:
                    i2 = i5 * 53;
                    i = Float.floatToIntBits(zzkh.zzj(t, j));
                    i5 = i + i2;
                    break;
                case 2:
                    i2 = i5 * 53;
                    i = zzia.zze(zzkh.zzf(t, j));
                    i5 = i + i2;
                    break;
                case 3:
                    i2 = i5 * 53;
                    i = zzia.zze(zzkh.zzf(t, j));
                    i5 = i + i2;
                    break;
                case 4:
                    i4 = i5 * 53;
                    i3 = zzkh.zzd(t, j);
                    i5 = i4 + i3;
                    break;
                case 5:
                    i2 = i5 * 53;
                    i = zzia.zze(zzkh.zzf(t, j));
                    i5 = i + i2;
                    break;
                case 6:
                    i4 = i5 * 53;
                    i3 = zzkh.zzd(t, j);
                    i5 = i4 + i3;
                    break;
                case 7:
                    i2 = i5 * 53;
                    i = zzia.zzf(zzkh.zzh(t, j));
                    i5 = i + i2;
                    break;
                case 8:
                    i2 = i5 * 53;
                    i = ((String) zzkh.zzn(t, j)).hashCode();
                    i5 = i + i2;
                    break;
                case 9:
                    Object zzn2 = zzkh.zzn(t, j);
                    if (zzn2 != null) {
                        i8 = zzn2.hashCode();
                    }
                    i5 = (i5 * 53) + i8;
                    break;
                case 10:
                    i2 = i5 * 53;
                    i = zzkh.zzn(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case 11:
                    i4 = i5 * 53;
                    i3 = zzkh.zzd(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    i4 = i5 * 53;
                    i3 = zzkh.zzd(t, j);
                    i5 = i4 + i3;
                    break;
                case 13:
                    i4 = i5 * 53;
                    i3 = zzkh.zzd(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    i2 = i5 * 53;
                    i = zzia.zze(zzkh.zzf(t, j));
                    i5 = i + i2;
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    i4 = i5 * 53;
                    i3 = zzkh.zzd(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    i2 = i5 * 53;
                    i = zzia.zze(zzkh.zzf(t, j));
                    i5 = i + i2;
                    break;
                case 17:
                    Object zzn3 = zzkh.zzn(t, j);
                    if (zzn3 != null) {
                        i8 = zzn3.hashCode();
                    }
                    i5 = (i5 * 53) + i8;
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                case 20:
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                case 32:
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                case 36:
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case ModuleDescriptor.MODULE_VERSION:
                case 47:
                case 48:
                case 49:
                    i2 = i5 * 53;
                    i = zzkh.zzn(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    i2 = i5 * 53;
                    i = zzkh.zzn(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case 51:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzia.zze(Double.doubleToLongBits(zzD(t, j)));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = Float.floatToIntBits(zzE(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzia.zze(zzG(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzia.zze(zzG(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzM(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzF(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzia.zze(zzG(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzM(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzF(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzia.zzf(zzH(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = ((String) zzkh.zzn(t, j)).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzkh.zzn(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzkh.zzn(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzM(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzF(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzM(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzF(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzM(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzF(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzia.zze(zzG(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzM(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzF(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzia.zze(zzG(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzM(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzkh.zzn(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = this.zzn.zzd(t).hashCode() + (i5 * 53);
        if (!this.zzh) {
            return hashCode;
        }
        this.zzo.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzd(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzA = zzA(i);
            long j = (long) (1048575 & zzA);
            int i2 = this.zzc[i];
            switch (zzC(zzA)) {
                case 0:
                    if (zzK(t2, i)) {
                        zzkh.zzm(t, j, zzkh.zzl(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzK(t2, i)) {
                        zzkh.zzk(t, j, zzkh.zzj(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzK(t2, i)) {
                        zzkh.zzi(t, j, zzkh.zzh(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzK(t2, i)) {
                        zzkh.zzo(t, j, zzkh.zzn(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzo(t, t2, i);
                    break;
                case 10:
                    if (zzK(t2, i)) {
                        zzkh.zzo(t, j, zzkh.zzn(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzo(t, t2, i);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                case 20:
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                case 32:
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                case 36:
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case ModuleDescriptor.MODULE_VERSION:
                case 47:
                case 48:
                case 49:
                    this.zzm.zzb(t, t2, j);
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    zzjk.zzI(this.zzq, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzM(t2, i2, i)) {
                        zzkh.zzo(t, j, zzkh.zzn(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzp(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzM(t2, i2, i)) {
                        zzkh.zzo(t, j, zzkh.zzn(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzp(t, t2, i);
                    break;
            }
        }
        zzjk.zzF(this.zzn, t, t2);
        if (this.zzh) {
            zzjk.zzE(this.zzo, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final int zze(T t) {
        return this.zzi ? zzr(t) : zzq(t);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:108:0x032e, code lost:
        if (r0 != r1) goto L_0x0330;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x034a, code lost:
        r7 = r33;
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x0378, code lost:
        if (r0 != r15) goto L_0x0330;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x039a, code lost:
        if (r0 != r15) goto L_0x0330;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzg(T r29, byte[] r30, int r31, int r32, int r33, com.google.android.gms.internal.measurement.zzge r34) {
        /*
        // Method dump skipped, instructions count: 1164
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzja.zzg(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzge):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzh(T t, byte[] bArr, int i, int i2, zzge zzge) {
        if (this.zzi) {
            zzy(t, bArr, i, i2, zzge);
        } else {
            zzg(t, bArr, i, i2, 0, zzge);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzi(T t) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long zzA = (long) (zzA(this.zzj[i2]) & 1048575);
            Object zzn2 = zzkh.zzn(t, zzA);
            if (zzn2 != null) {
                ((zzir) zzn2).zzd();
                zzkh.zzo(t, zzA, zzn2);
            }
            i2++;
        }
        int length = this.zzj.length;
        while (i < length) {
            this.zzm.zza(t, (long) this.zzj[i]);
            i++;
        }
        this.zzn.zze(t);
        if (this.zzh) {
            this.zzo.zzc(t);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v8, resolved type: com.google.android.gms.internal.measurement.zzji */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzji
    public final boolean zzj(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzk) {
            int i6 = this.zzj[i5];
            int i7 = this.zzc[i6];
            int zzA = zzA(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(t, (long) i9);
                }
                i = i4;
                i2 = i9;
            } else {
                i2 = i3;
                i = i4;
            }
            if (!((268435456 & zzA) == 0 || zzJ(t, i6, i2, i, i10))) {
                return false;
            }
            int zzC = zzC(zzA);
            if (zzC != 9 && zzC != 17) {
                if (zzC != 27) {
                    if (zzC == 60 || zzC == 68) {
                        if (zzM(t, i7, i6) && !zzz(t, zzA, zzv(i6))) {
                            return false;
                        }
                    } else if (zzC != 49) {
                        if (zzC == 50 && !((zzir) zzkh.zzn(t, (long) (zzA & 1048575))).isEmpty()) {
                            zziq zziq = (zziq) zzw(i6);
                            throw null;
                        }
                    }
                }
                List list = (List) zzkh.zzn(t, (long) (zzA & 1048575));
                if (!list.isEmpty()) {
                    zzji zzv = zzv(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzv.zzj(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (zzJ(t, i6, i2, i, i10) && !zzz(t, zzA, zzv(i6))) {
                return false;
            }
            i5++;
            i3 = i2;
            i4 = i;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzm(T t, zzha zzha) {
        if (!this.zzi) {
            zzR(t, zzha);
        } else if (!this.zzh) {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzA = zzA(i);
                int i2 = this.zzc[i];
                switch (zzC(zzA)) {
                    case 0:
                        if (zzK(t, i)) {
                            zzha.zzf(i2, zzkh.zzl(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzK(t, i)) {
                            zzha.zze(i2, zzkh.zzj(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzK(t, i)) {
                            zzha.zzc(i2, zzkh.zzf(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzK(t, i)) {
                            zzha.zzh(i2, zzkh.zzf(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzK(t, i)) {
                            zzha.zzi(i2, zzkh.zzd(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzK(t, i)) {
                            zzha.zzj(i2, zzkh.zzf(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzK(t, i)) {
                            zzha.zzk(i2, zzkh.zzd(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzK(t, i)) {
                            zzha.zzl(i2, zzkh.zzh(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzK(t, i)) {
                            zzT(i2, zzkh.zzn(t, (long) (zzA & 1048575)), zzha);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzK(t, i)) {
                            zzha.zzr(i2, zzkh.zzn(t, (long) (zzA & 1048575)), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzK(t, i)) {
                            zzha.zzn(i2, (zzgs) zzkh.zzn(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzK(t, i)) {
                            zzha.zzo(i2, zzkh.zzd(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                        if (zzK(t, i)) {
                            zzha.zzg(i2, zzkh.zzd(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzK(t, i)) {
                            zzha.zzb(i2, zzkh.zzd(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                        if (zzK(t, i)) {
                            zzha.zzd(i2, zzkh.zzf(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                        if (zzK(t, i)) {
                            zzha.zzp(i2, zzkh.zzd(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                        if (zzK(t, i)) {
                            zzha.zzq(i2, zzkh.zzf(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzK(t, i)) {
                            zzha.zzs(i2, zzkh.zzn(t, (long) (zzA & 1048575)), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                        zzjk.zzJ(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                        zzjk.zzK(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case 20:
                        zzjk.zzL(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        zzjk.zzM(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                        zzjk.zzQ(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        zzjk.zzO(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                        zzjk.zzT(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                        zzjk.zzW(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                        zzjk.zzX(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha);
                        break;
                    case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                        zzjk.zzZ(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, zzv(i));
                        break;
                    case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                        zzjk.zzY(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha);
                        break;
                    case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                        zzjk.zzR(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                        zzjk.zzV(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                        zzjk.zzU(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case 32:
                        zzjk.zzP(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                        zzjk.zzS(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                        zzjk.zzN(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, false);
                        break;
                    case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                        zzjk.zzJ(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 36:
                        zzjk.zzK(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                        zzjk.zzL(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 38:
                        zzjk.zzM(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 39:
                        zzjk.zzQ(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 40:
                        zzjk.zzO(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 41:
                        zzjk.zzT(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 42:
                        zzjk.zzW(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 43:
                        zzjk.zzR(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 44:
                        zzjk.zzV(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 45:
                        zzjk.zzU(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case ModuleDescriptor.MODULE_VERSION:
                        zzjk.zzP(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 47:
                        zzjk.zzS(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 48:
                        zzjk.zzN(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, true);
                        break;
                    case 49:
                        zzjk.zzaa(this.zzc[i], (List) zzkh.zzn(t, (long) (zzA & 1048575)), zzha, zzv(i));
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT:
                        zzS(zzha, i2, zzkh.zzn(t, (long) (zzA & 1048575)), i);
                        break;
                    case 51:
                        if (zzM(t, i2, i)) {
                            zzha.zzf(i2, zzD(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzM(t, i2, i)) {
                            zzha.zze(i2, zzE(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzM(t, i2, i)) {
                            zzha.zzc(i2, zzG(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzM(t, i2, i)) {
                            zzha.zzh(i2, zzG(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzM(t, i2, i)) {
                            zzha.zzi(i2, zzF(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzM(t, i2, i)) {
                            zzha.zzj(i2, zzG(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzM(t, i2, i)) {
                            zzha.zzk(i2, zzF(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzM(t, i2, i)) {
                            zzha.zzl(i2, zzH(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzM(t, i2, i)) {
                            zzT(i2, zzkh.zzn(t, (long) (zzA & 1048575)), zzha);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzM(t, i2, i)) {
                            zzha.zzr(i2, zzkh.zzn(t, (long) (zzA & 1048575)), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzM(t, i2, i)) {
                            zzha.zzn(i2, (zzgs) zzkh.zzn(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzM(t, i2, i)) {
                            zzha.zzo(i2, zzF(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzM(t, i2, i)) {
                            zzha.zzg(i2, zzF(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzM(t, i2, i)) {
                            zzha.zzb(i2, zzF(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzM(t, i2, i)) {
                            zzha.zzd(i2, zzG(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzM(t, i2, i)) {
                            zzha.zzp(i2, zzF(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzM(t, i2, i)) {
                            zzha.zzq(i2, zzG(t, (long) (zzA & 1048575)));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzM(t, i2, i)) {
                            zzha.zzs(i2, zzkh.zzn(t, (long) (zzA & 1048575)), zzv(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzjw<?, ?> zzjw = this.zzn;
            zzjw.zzi(zzjw.zzd(t), zzha);
        } else {
            this.zzo.zzb(t);
            throw null;
        }
    }
}
