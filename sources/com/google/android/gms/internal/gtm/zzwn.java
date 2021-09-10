package com.google.android.gms.internal.gtm;

import com.google.ads.AdSize;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vungle.warren.error.VungleException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.http.util.LangUtils;
import sun.misc.Unsafe;

/* access modifiers changed from: package-private */
public final class zzwn<T> implements zzwx<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzxy.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzwk zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzvy zzn;
    private final zzxo<?, ?> zzo;
    private final zzuk<?> zzp;
    private final zzwq zzq;
    private final zzwf zzr;

    /* JADX DEBUG: Multi-variable search result rejected for r7v0, resolved type: int[] */
    /* JADX DEBUG: Multi-variable search result rejected for r8v0, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r10v0, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r11v0, resolved type: com.google.android.gms.internal.gtm.zzwk */
    /* JADX DEBUG: Multi-variable search result rejected for r13v0, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r14v0, resolved type: int[] */
    /* JADX DEBUG: Multi-variable search result rejected for r16v0, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r17v0, resolved type: com.google.android.gms.internal.gtm.zzwq */
    /* JADX DEBUG: Multi-variable search result rejected for r18v0, resolved type: com.google.android.gms.internal.gtm.zzvy */
    /* JADX DEBUG: Multi-variable search result rejected for r19v0, resolved type: com.google.android.gms.internal.gtm.zzxo<?, ?> */
    /* JADX DEBUG: Multi-variable search result rejected for r20v0, resolved type: com.google.android.gms.internal.gtm.zzuk<?> */
    /* JADX WARN: Multi-variable type inference failed */
    private zzwn(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzwk zzwk, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzwq zzwq, zzvy zzvy, zzxo<?, ?> zzxo, zzuk<?> zzuk, zzwf zzwf) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zze = objArr;
        this.zzf = i;
        this.zzi = i2 instanceof zzuz;
        this.zzj = zzwk;
        boolean z3 = false;
        if (zzxo != 0 && zzxo.zzi(i2)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzk = z2;
        this.zzl = iArr3;
        this.zzm = i3;
        this.zzq = i4;
        this.zzn = zzwq;
        this.zzo = zzvy;
        this.zzp = zzxo;
        this.zzg = i2;
        this.zzr = zzuk;
    }

    private final int zzA(int i, int i2) {
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

    private static int zzB(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzC(int i) {
        return this.zzc[i + 1];
    }

    private static <T> long zzD(T t, long j) {
        return ((Long) zzxy.zzf(t, j)).longValue();
    }

    private final zzvd zzE(int i) {
        int i2 = i / 3;
        return (zzvd) this.zzd[i2 + i2 + 1];
    }

    private final zzwx zzF(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzwx zzwx = (zzwx) this.zzd[i3];
        if (zzwx != null) {
            return zzwx;
        }
        zzwx<T> zzb2 = zzwt.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final <UT, UB> UB zzG(Object obj, int i, UB ub, zzxo<UT, UB> zzxo) {
        int i2 = this.zzc[i];
        Object zzf2 = zzxy.zzf(obj, (long) (zzC(i) & 1048575));
        if (zzf2 == null || zzE(i) == null) {
            return ub;
        }
        zzwe zzwe = (zzwe) zzf2;
        zzwd zzwd = (zzwd) zzH(i);
        throw null;
    }

    private final Object zzH(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzI(Class<?> cls, String str) {
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

    private final void zzJ(T t, T t2, int i) {
        long zzC = (long) (zzC(i) & 1048575);
        if (zzQ(t2, i)) {
            Object zzf2 = zzxy.zzf(t, zzC);
            Object zzf3 = zzxy.zzf(t2, zzC);
            if (zzf2 != null && zzf3 != null) {
                zzxy.zzs(t, zzC, zzvi.zzg(zzf2, zzf3));
                zzM(t, i);
            } else if (zzf3 != null) {
                zzxy.zzs(t, zzC, zzf3);
                zzM(t, i);
            }
        }
    }

    private final void zzK(T t, T t2, int i) {
        int zzC = zzC(i);
        int i2 = this.zzc[i];
        long j = (long) (zzC & 1048575);
        if (zzT(t2, i2, i)) {
            Object zzf2 = zzT(t, i2, i) ? zzxy.zzf(t, j) : null;
            Object zzf3 = zzxy.zzf(t2, j);
            if (zzf2 != null && zzf3 != null) {
                zzxy.zzs(t, j, zzvi.zzg(zzf2, zzf3));
                zzN(t, i2, i);
            } else if (zzf3 != null) {
                zzxy.zzs(t, j, zzf3);
                zzN(t, i2, i);
            }
        }
    }

    private final void zzL(Object obj, int i, zzww zzww) {
        if (zzP(i)) {
            zzxy.zzs(obj, (long) (i & 1048575), zzww.zzx());
        } else if (this.zzi) {
            zzxy.zzs(obj, (long) (i & 1048575), zzww.zzv());
        } else {
            zzxy.zzs(obj, (long) (i & 1048575), zzww.zzq());
        }
    }

    private final void zzM(T t, int i) {
        int zzz = zzz(i);
        long j = (long) (1048575 & zzz);
        if (j != 1048575) {
            zzxy.zzq(t, j, (1 << (zzz >>> 20)) | zzxy.zzc(t, j));
        }
    }

    private final void zzN(T t, int i, int i2) {
        zzxy.zzq(t, (long) (zzz(i2) & 1048575), i);
    }

    private final boolean zzO(T t, T t2, int i) {
        return zzQ(t, i) == zzQ(t2, i);
    }

    private static boolean zzP(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzQ(T t, int i) {
        int zzz = zzz(i);
        long j = (long) (zzz & 1048575);
        if (j != 1048575) {
            return (zzxy.zzc(t, j) & (1 << (zzz >>> 20))) != 0;
        }
        int zzC = zzC(i);
        long j2 = (long) (zzC & 1048575);
        switch (zzB(zzC)) {
            case 0:
                return zzxy.zza(t, j2) != 0.0d;
            case 1:
                return zzxy.zzb(t, j2) != 0.0f;
            case 2:
                return zzxy.zzd(t, j2) != 0;
            case 3:
                return zzxy.zzd(t, j2) != 0;
            case 4:
                return zzxy.zzc(t, j2) != 0;
            case 5:
                return zzxy.zzd(t, j2) != 0;
            case 6:
                return zzxy.zzc(t, j2) != 0;
            case 7:
                return zzxy.zzw(t, j2);
            case 8:
                Object zzf2 = zzxy.zzf(t, j2);
                if (zzf2 instanceof String) {
                    return !((String) zzf2).isEmpty();
                }
                if (zzf2 instanceof zztd) {
                    return !zztd.zzb.equals(zzf2);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzxy.zzf(t, j2) != null;
            case 10:
                return !zztd.zzb.equals(zzxy.zzf(t, j2));
            case 11:
                return zzxy.zzc(t, j2) != 0;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                return zzxy.zzc(t, j2) != 0;
            case 13:
                return zzxy.zzc(t, j2) != 0;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return zzxy.zzd(t, j2) != 0;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                return zzxy.zzc(t, j2) != 0;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                return zzxy.zzd(t, j2) != 0;
            case 17:
                return zzxy.zzf(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzR(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzQ(t, i);
        }
        return (i3 & i4) != 0;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: com.google.android.gms.internal.gtm.zzwx */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzS(Object obj, int i, zzwx zzwx) {
        return zzwx.zzk(zzxy.zzf(obj, (long) (i & 1048575)));
    }

    private final boolean zzT(T t, int i, int i2) {
        return zzxy.zzc(t, (long) (zzz(i2) & 1048575)) == i;
    }

    private static <T> boolean zzU(T t, long j) {
        return ((Boolean) zzxy.zzf(t, j)).booleanValue();
    }

    /* JADX WARNING: Removed duplicated region for block: B:168:0x0492  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0034  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzV(T r18, com.google.android.gms.internal.gtm.zztp r19) {
        /*
        // Method dump skipped, instructions count: 1344
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzwn.zzV(java.lang.Object, com.google.android.gms.internal.gtm.zztp):void");
    }

    private final <K, V> void zzW(zztp zztp, int i, Object obj, int i2) {
        if (obj != null) {
            zzwd zzwd = (zzwd) zzH(i2);
            throw null;
        }
    }

    private static final void zzX(int i, Object obj, zztp zztp) {
        if (obj instanceof String) {
            zztp.zzG(i, (String) obj);
        } else {
            zztp.zzd(i, (zztd) obj);
        }
    }

    static zzxp zzd(Object obj) {
        zzuz zzuz = (zzuz) obj;
        zzxp zzxp = zzuz.zzc;
        if (zzxp != zzxp.zzc()) {
            return zzxp;
        }
        zzxp zze2 = zzxp.zze();
        zzuz.zzc = zze2;
        return zze2;
    }

    static <T> zzwn<T> zzl(Class<T> cls, zzwh zzwh, zzwq zzwq, zzvy zzvy, zzxo<?, ?> zzxo, zzuk<?> zzuk, zzwf zzwf) {
        if (zzwh instanceof zzwv) {
            return zzm((zzwv) zzwh, zzwq, zzvy, zzxo, zzuk, zzwf);
        }
        zzxl zzxl = (zzxl) zzwh;
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:120:0x025d  */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0260  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0278  */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x027b  */
    /* JADX WARNING: Removed duplicated region for block: B:156:0x032b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T> com.google.android.gms.internal.gtm.zzwn<T> zzm(com.google.android.gms.internal.gtm.zzwv r33, com.google.android.gms.internal.gtm.zzwq r34, com.google.android.gms.internal.gtm.zzvy r35, com.google.android.gms.internal.gtm.zzxo<?, ?> r36, com.google.android.gms.internal.gtm.zzuk<?> r37, com.google.android.gms.internal.gtm.zzwf r38) {
        /*
        // Method dump skipped, instructions count: 1016
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzwn.zzm(com.google.android.gms.internal.gtm.zzwv, com.google.android.gms.internal.gtm.zzwq, com.google.android.gms.internal.gtm.zzvy, com.google.android.gms.internal.gtm.zzxo, com.google.android.gms.internal.gtm.zzuk, com.google.android.gms.internal.gtm.zzwf):com.google.android.gms.internal.gtm.zzwn");
    }

    private static <T> double zzo(T t, long j) {
        return ((Double) zzxy.zzf(t, j)).doubleValue();
    }

    private static <T> float zzp(T t, long j) {
        return ((Float) zzxy.zzf(t, j)).floatValue();
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
            int zzC = zzC(i20);
            int i21 = this.zzc[i20];
            int zzB = zzB(zzC);
            if (zzB <= 17) {
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
            long j = (long) (zzC & 1048575);
            switch (zzB) {
                case 0:
                    if ((i18 & i) != 0) {
                        i2 = zzto.zzD(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i18 & i) != 0) {
                        i4 = zzto.zzD(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i18 & i) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        i6 = zzto.zzD(i21 << 3);
                        i5 = zzto.zzE(j2);
                        i17 = i5 + i6 + i17;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i18 & i) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        i6 = zzto.zzD(i21 << 3);
                        i5 = zzto.zzE(j3);
                        i17 = i5 + i6 + i17;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i18 & i) != 0) {
                        int i24 = unsafe.getInt(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzx(i24);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i18 & i) != 0) {
                        i2 = zzto.zzD(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i18 & i) != 0) {
                        i4 = zzto.zzD(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i18 & i) != 0) {
                        i9 = zzto.zzD(i21 << 3);
                        i3 = i9 + 1;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i18 & i) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zztd) {
                            i12 = zzto.zzD(i21 << 3);
                            i13 = ((zztd) object).zzd();
                            i11 = zzto.zzD(i13);
                            i10 = i11 + i13 + i12;
                            i17 += i10;
                            break;
                        } else {
                            i7 = zzto.zzD(i21 << 3);
                            i8 = zzto.zzB((String) object);
                            i3 = i8 + i7;
                            i17 += i3;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if ((i18 & i) != 0) {
                        i3 = zzwz.zzo(i21, unsafe.getObject(t, j), zzF(i20));
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i18 & i) != 0) {
                        i12 = zzto.zzD(i21 << 3);
                        i13 = ((zztd) unsafe.getObject(t, j)).zzd();
                        i11 = zzto.zzD(i13);
                        i10 = i11 + i13 + i12;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i18 & i) != 0) {
                        int i25 = unsafe.getInt(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzD(i25);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if ((i18 & i) != 0) {
                        int i26 = unsafe.getInt(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzx(i26);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i18 & i) != 0) {
                        i4 = zzto.zzD(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if ((i18 & i) != 0) {
                        i2 = zzto.zzD(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if ((i18 & i) != 0) {
                        int i27 = unsafe.getInt(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzD((i27 >> 31) ^ (i27 + i27));
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if ((i18 & i) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzE((j4 >> 63) ^ (j4 + j4));
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i18 & i) != 0) {
                        i3 = zzto.zzv(i21, (zzwk) unsafe.getObject(t, j), zzF(i20));
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    i3 = zzwz.zzh(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    i3 = zzwz.zzf(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case 20:
                    i3 = zzwz.zzm(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    i3 = zzwz.zzx(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    i3 = zzwz.zzk(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    i3 = zzwz.zzh(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    i3 = zzwz.zzf(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    i3 = zzwz.zza(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    i3 = zzwz.zzu(i21, (List) unsafe.getObject(t, j));
                    i17 += i3;
                    break;
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                    i3 = zzwz.zzp(i21, (List) unsafe.getObject(t, j), zzF(i20));
                    i17 += i3;
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    i3 = zzwz.zzc(i21, (List) unsafe.getObject(t, j));
                    i17 += i3;
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    i3 = zzwz.zzv(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    i3 = zzwz.zzd(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    i3 = zzwz.zzf(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case 32:
                    i3 = zzwz.zzh(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    i3 = zzwz.zzq(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    i3 = zzwz.zzs(i21, (List) unsafe.getObject(t, j), false);
                    i17 += i3;
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    i16 = zzwz.zzi((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    i16 = zzwz.zzg((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    i16 = zzwz.zzn((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    i16 = zzwz.zzy((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    i16 = zzwz.zzl((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    i16 = zzwz.zzi((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    i16 = zzwz.zzg((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    i16 = zzwz.zzb((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    i16 = zzwz.zzw((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    i16 = zzwz.zze((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    i16 = zzwz.zzg((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case ModuleDescriptor.MODULE_VERSION:
                    i16 = zzwz.zzi((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    i16 = zzwz.zzr((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    i16 = zzwz.zzt((List) unsafe.getObject(t, j));
                    if (i16 > 0) {
                        i15 = zzto.zzC(i21);
                        i14 = zzto.zzD(i16);
                        i10 = i14 + i15 + i16;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    i3 = zzwz.zzj(i21, (List) unsafe.getObject(t, j), zzF(i20));
                    i17 += i3;
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    zzwf.zza(i21, unsafe.getObject(t, j), zzH(i20));
                    break;
                case 51:
                    if (zzT(t, i21, i20)) {
                        i2 = zzto.zzD(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzT(t, i21, i20)) {
                        i4 = zzto.zzD(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzT(t, i21, i20)) {
                        long zzD = zzD(t, j);
                        i6 = zzto.zzD(i21 << 3);
                        i5 = zzto.zzE(zzD);
                        i17 = i5 + i6 + i17;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzT(t, i21, i20)) {
                        long zzD2 = zzD(t, j);
                        i6 = zzto.zzD(i21 << 3);
                        i5 = zzto.zzE(zzD2);
                        i17 = i5 + i6 + i17;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzT(t, i21, i20)) {
                        int zzs = zzs(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzx(zzs);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzT(t, i21, i20)) {
                        i2 = zzto.zzD(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzT(t, i21, i20)) {
                        i4 = zzto.zzD(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzT(t, i21, i20)) {
                        i9 = zzto.zzD(i21 << 3);
                        i3 = i9 + 1;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzT(t, i21, i20)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zztd) {
                            i12 = zzto.zzD(i21 << 3);
                            i13 = ((zztd) object2).zzd();
                            i11 = zzto.zzD(i13);
                            i10 = i11 + i13 + i12;
                            i17 += i10;
                            break;
                        } else {
                            i7 = zzto.zzD(i21 << 3);
                            i8 = zzto.zzB((String) object2);
                            i3 = i8 + i7;
                            i17 += i3;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (zzT(t, i21, i20)) {
                        i3 = zzwz.zzo(i21, unsafe.getObject(t, j), zzF(i20));
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzT(t, i21, i20)) {
                        i12 = zzto.zzD(i21 << 3);
                        i13 = ((zztd) unsafe.getObject(t, j)).zzd();
                        i11 = zzto.zzD(i13);
                        i10 = i11 + i13 + i12;
                        i17 += i10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzT(t, i21, i20)) {
                        int zzs2 = zzs(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzD(zzs2);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzT(t, i21, i20)) {
                        int zzs3 = zzs(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzx(zzs3);
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzT(t, i21, i20)) {
                        i4 = zzto.zzD(i21 << 3);
                        i3 = i4 + 4;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzT(t, i21, i20)) {
                        i2 = zzto.zzD(i21 << 3);
                        i3 = i2 + 8;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzT(t, i21, i20)) {
                        int zzs4 = zzs(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzD((zzs4 >> 31) ^ (zzs4 + zzs4));
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzT(t, i21, i20)) {
                        long zzD3 = zzD(t, j);
                        i7 = zzto.zzD(i21 << 3);
                        i8 = zzto.zzE((zzD3 >> 63) ^ (zzD3 + zzD3));
                        i3 = i8 + i7;
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzT(t, i21, i20)) {
                        i3 = zzto.zzv(i21, (zzwk) unsafe.getObject(t, j), zzF(i20));
                        i17 += i3;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzxo<?, ?> zzxo = this.zzo;
        int zza2 = i17 + zzxo.zza(zzxo.zzd(t));
        if (!this.zzh) {
            return zza2;
        }
        zzuo<?> zzb2 = this.zzp.zzb(t);
        int i28 = 0;
        for (int i29 = 0; i29 < zzb2.zza.zzb(); i29++) {
            Map.Entry<T, Object> zzg2 = zzb2.zza.zzg(i29);
            i28 += zzuo.zza(zzg2.getKey(), zzg2.getValue());
        }
        for (Map.Entry<T, Object> entry : zzb2.zza.zzc()) {
            i28 += zzuo.zza(entry.getKey(), entry.getValue());
        }
        return zza2 + i28;
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
            int zzC = zzC(i17);
            int zzB = zzB(zzC);
            int i18 = this.zzc[i17];
            long j = (long) (zzC & 1048575);
            if (zzB >= zzup.DOUBLE_LIST_PACKED.zza() && zzB <= zzup.SINT64_LIST_PACKED.zza()) {
                int i19 = this.zzc[i17 + 2];
            }
            switch (zzB) {
                case 0:
                    if (zzQ(t, i17)) {
                        i = zzto.zzD(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if (zzQ(t, i17)) {
                        i3 = zzto.zzD(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if (zzQ(t, i17)) {
                        long zzd2 = zzxy.zzd(t, j);
                        i4 = zzto.zzD(i18 << 3);
                        i5 = zzto.zzE(zzd2);
                        i2 = i5 + i4;
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if (zzQ(t, i17)) {
                        long zzd3 = zzxy.zzd(t, j);
                        i4 = zzto.zzD(i18 << 3);
                        i5 = zzto.zzE(zzd3);
                        i2 = i5 + i4;
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if (zzQ(t, i17)) {
                        int zzc2 = zzxy.zzc(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzx(zzc2);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    if (zzQ(t, i17)) {
                        i = zzto.zzD(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if (zzQ(t, i17)) {
                        i3 = zzto.zzD(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if (zzQ(t, i17)) {
                        i8 = zzto.zzD(i18 << 3);
                        i2 = i8 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (zzQ(t, i17)) {
                        Object zzf2 = zzxy.zzf(t, j);
                        if (!(zzf2 instanceof zztd)) {
                            i6 = zzto.zzD(i18 << 3);
                            i7 = zzto.zzB((String) zzf2);
                            i2 = i7 + i6;
                            break;
                        } else {
                            i11 = zzto.zzD(i18 << 3);
                            i12 = ((zztd) zzf2).zzd();
                            i10 = zzto.zzD(i12);
                            i9 = i10 + i12 + i11;
                            i16 += i9;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if (zzQ(t, i17)) {
                        i2 = zzwz.zzo(i18, zzxy.zzf(t, j), zzF(i17));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if (zzQ(t, i17)) {
                        i11 = zzto.zzD(i18 << 3);
                        i12 = ((zztd) zzxy.zzf(t, j)).zzd();
                        i10 = zzto.zzD(i12);
                        i9 = i10 + i12 + i11;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 11:
                    if (zzQ(t, i17)) {
                        int zzc3 = zzxy.zzc(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzD(zzc3);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if (zzQ(t, i17)) {
                        int zzc4 = zzxy.zzc(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzx(zzc4);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    if (zzQ(t, i17)) {
                        i3 = zzto.zzD(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if (zzQ(t, i17)) {
                        i = zzto.zzD(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if (zzQ(t, i17)) {
                        int zzc5 = zzxy.zzc(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzD((zzc5 >> 31) ^ (zzc5 + zzc5));
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if (zzQ(t, i17)) {
                        long zzd4 = zzxy.zzd(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzE((zzd4 >> 63) ^ (zzd4 + zzd4));
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    if (zzQ(t, i17)) {
                        i2 = zzto.zzv(i18, (zzwk) zzxy.zzf(t, j), zzF(i17));
                        break;
                    } else {
                        continue;
                    }
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    i2 = zzwz.zzh(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    i2 = zzwz.zzf(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case 20:
                    i2 = zzwz.zzm(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    i2 = zzwz.zzx(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    i2 = zzwz.zzk(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    i2 = zzwz.zzh(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    i2 = zzwz.zzf(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    i2 = zzwz.zza(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    i2 = zzwz.zzu(i18, (List) zzxy.zzf(t, j));
                    break;
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                    i2 = zzwz.zzp(i18, (List) zzxy.zzf(t, j), zzF(i17));
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    i2 = zzwz.zzc(i18, (List) zzxy.zzf(t, j));
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    i2 = zzwz.zzv(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    i2 = zzwz.zzd(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    i2 = zzwz.zzf(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case 32:
                    i2 = zzwz.zzh(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    i2 = zzwz.zzq(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    i2 = zzwz.zzs(i18, (List) zzxy.zzf(t, j), false);
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    i15 = zzwz.zzi((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 36:
                    i15 = zzwz.zzg((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    i15 = zzwz.zzn((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 38:
                    i15 = zzwz.zzy((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 39:
                    i15 = zzwz.zzl((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 40:
                    i15 = zzwz.zzi((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 41:
                    i15 = zzwz.zzg((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 42:
                    i15 = zzwz.zzb((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 43:
                    i15 = zzwz.zzw((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 44:
                    i15 = zzwz.zze((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 45:
                    i15 = zzwz.zzg((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case ModuleDescriptor.MODULE_VERSION:
                    i15 = zzwz.zzi((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 47:
                    i15 = zzwz.zzr((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 48:
                    i15 = zzwz.zzt((List) unsafe.getObject(t, j));
                    if (i15 > 0) {
                        i14 = zzto.zzC(i18);
                        i13 = zzto.zzD(i15);
                        i9 = i13 + i14 + i15;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 49:
                    i2 = zzwz.zzj(i18, (List) zzxy.zzf(t, j), zzF(i17));
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    zzwf.zza(i18, zzxy.zzf(t, j), zzH(i17));
                    continue;
                case 51:
                    if (zzT(t, i18, i17)) {
                        i = zzto.zzD(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (zzT(t, i18, i17)) {
                        i3 = zzto.zzD(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (zzT(t, i18, i17)) {
                        long zzD = zzD(t, j);
                        i4 = zzto.zzD(i18 << 3);
                        i5 = zzto.zzE(zzD);
                        i2 = i5 + i4;
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (zzT(t, i18, i17)) {
                        long zzD2 = zzD(t, j);
                        i4 = zzto.zzD(i18 << 3);
                        i5 = zzto.zzE(zzD2);
                        i2 = i5 + i4;
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (zzT(t, i18, i17)) {
                        int zzs = zzs(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzx(zzs);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    if (zzT(t, i18, i17)) {
                        i = zzto.zzD(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (zzT(t, i18, i17)) {
                        i3 = zzto.zzD(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (zzT(t, i18, i17)) {
                        i8 = zzto.zzD(i18 << 3);
                        i2 = i8 + 1;
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (zzT(t, i18, i17)) {
                        Object zzf3 = zzxy.zzf(t, j);
                        if (!(zzf3 instanceof zztd)) {
                            i6 = zzto.zzD(i18 << 3);
                            i7 = zzto.zzB((String) zzf3);
                            i2 = i7 + i6;
                            break;
                        } else {
                            i11 = zzto.zzD(i18 << 3);
                            i12 = ((zztd) zzf3).zzd();
                            i10 = zzto.zzD(i12);
                            i9 = i10 + i12 + i11;
                            i16 += i9;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (zzT(t, i18, i17)) {
                        i2 = zzwz.zzo(i18, zzxy.zzf(t, j), zzF(i17));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (zzT(t, i18, i17)) {
                        i11 = zzto.zzD(i18 << 3);
                        i12 = ((zztd) zzxy.zzf(t, j)).zzd();
                        i10 = zzto.zzD(i12);
                        i9 = i10 + i12 + i11;
                        i16 += i9;
                    } else {
                        continue;
                    }
                case 62:
                    if (zzT(t, i18, i17)) {
                        int zzs2 = zzs(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzD(zzs2);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    if (zzT(t, i18, i17)) {
                        int zzs3 = zzs(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzx(zzs3);
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    if (zzT(t, i18, i17)) {
                        i3 = zzto.zzD(i18 << 3);
                        i2 = i3 + 4;
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (zzT(t, i18, i17)) {
                        i = zzto.zzD(i18 << 3);
                        i2 = i + 8;
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (zzT(t, i18, i17)) {
                        int zzs4 = zzs(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzD((zzs4 >> 31) ^ (zzs4 + zzs4));
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    if (zzT(t, i18, i17)) {
                        long zzD3 = zzD(t, j);
                        i6 = zzto.zzD(i18 << 3);
                        i7 = zzto.zzE((zzD3 >> 63) ^ (zzD3 + zzD3));
                        i2 = i7 + i6;
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    if (zzT(t, i18, i17)) {
                        i2 = zzto.zzv(i18, (zzwk) zzxy.zzf(t, j), zzF(i17));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i16 += i2;
        }
        zzxo<?, ?> zzxo = this.zzo;
        return i16 + zzxo.zza(zzxo.zzd(t));
    }

    private static <T> int zzs(T t, long j) {
        return ((Integer) zzxy.zzf(t, j)).intValue();
    }

    private final <K, V> int zzt(T t, byte[] bArr, int i, int i2, int i3, long j, zzsl zzsl) {
        Unsafe unsafe = zzb;
        Object zzH = zzH(i3);
        Object object = unsafe.getObject(t, j);
        if (zzwf.zzb(object)) {
            zzwe<K, V> zzb2 = zzwe.zza().zzb();
            zzwf.zzc(zzb2, object);
            unsafe.putObject(t, j, zzb2);
        }
        zzwd zzwd = (zzwd) zzH;
        throw null;
    }

    private final int zzu(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzsl zzsl) {
        Unsafe unsafe = zzb;
        long j2 = (long) (this.zzc[i8 + 2] & 1048575);
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(zzsm.zzo(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(zzsm.zzb(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzm2 = zzsm.zzm(bArr, i, zzsl);
                    unsafe.putObject(t, j, Long.valueOf(zzsl.zzb));
                    unsafe.putInt(t, j2, i4);
                    return zzm2;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zzj2 = zzsm.zzj(bArr, i, zzsl);
                    unsafe.putObject(t, j, Integer.valueOf(zzsl.zza));
                    unsafe.putInt(t, j2, i4);
                    return zzj2;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzsm.zzo(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzsm.zzb(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzm3 = zzsm.zzm(bArr, i, zzsl);
                    unsafe.putObject(t, j, Boolean.valueOf(zzsl.zzb != 0));
                    unsafe.putInt(t, j2, i4);
                    return zzm3;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int zzj3 = zzsm.zzj(bArr, i, zzsl);
                    int i9 = zzsl.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || zzyd.zzf(bArr, zzj3, zzj3 + i9)) {
                        unsafe.putObject(t, j, new String(bArr, zzj3, i9, zzvi.zza));
                        zzj3 += i9;
                    } else {
                        throw zzvk.zzd();
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzj3;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int zzd2 = zzsm.zzd(zzF(i8), bArr, i, i2, zzsl);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzsl.zzc);
                    } else {
                        unsafe.putObject(t, j, zzvi.zzg(object, zzsl.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzd2;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zza2 = zzsm.zza(bArr, i, zzsl);
                    unsafe.putObject(t, j, zzsl.zzc);
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int zzj4 = zzsm.zzj(bArr, i, zzsl);
                    int i10 = zzsl.zza;
                    zzvd zzE = zzE(i8);
                    if (zzE == null || zzE.zza(i10)) {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                    } else {
                        zzd(t).zzh(i3, Long.valueOf((long) i10));
                    }
                    return zzj4;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int zzj5 = zzsm.zzj(bArr, i, zzsl);
                    unsafe.putObject(t, j, Integer.valueOf(zztj.zzs(zzsl.zza)));
                    unsafe.putInt(t, j2, i4);
                    return zzj5;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzm4 = zzsm.zzm(bArr, i, zzsl);
                    unsafe.putObject(t, j, Long.valueOf(zztj.zzt(zzsl.zzb)));
                    unsafe.putInt(t, j2, i4);
                    return zzm4;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int zzc2 = zzsm.zzc(zzF(i8), bArr, i, i2, (i3 & -8) | 4, zzsl);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzsl.zzc);
                    } else {
                        unsafe.putObject(t, j, zzvi.zzg(object2, zzsl.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzc2;
                }
                break;
        }
        return i;
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
    private final int zzv(T r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.gtm.zzsl r35) {
        /*
        // Method dump skipped, instructions count: 898
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzwn.zzv(java.lang.Object, byte[], int, int, com.google.android.gms.internal.gtm.zzsl):int");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:57)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:15)
        */
    /* JADX WARNING: Removed duplicated region for block: B:255:0x044f A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01cf  */
    private final int zzw(T r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.android.gms.internal.gtm.zzsl r29) {
        /*
        // Method dump skipped, instructions count: 1172
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzwn.zzw(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.gtm.zzsl):int");
    }

    private final int zzx(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, 0);
    }

    private final int zzy(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, i2);
    }

    private final int zzz(int i) {
        return this.zzc[i + 2];
    }

    @Override // com.google.android.gms.internal.gtm.zzwx
    public final int zza(T t) {
        return this.zzj ? zzr(t) : zzq(t);
    }

    @Override // com.google.android.gms.internal.gtm.zzwx
    public final int zzb(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int length = this.zzc.length;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int zzC = zzC(i6);
            int i7 = this.zzc[i6];
            long j = (long) (1048575 & zzC);
            int i8 = 37;
            switch (zzB(zzC)) {
                case 0:
                    i2 = i5 * 53;
                    i = zzvi.zzc(Double.doubleToLongBits(zzxy.zza(t, j)));
                    i5 = i + i2;
                    break;
                case 1:
                    i2 = i5 * 53;
                    i = Float.floatToIntBits(zzxy.zzb(t, j));
                    i5 = i + i2;
                    break;
                case 2:
                    i2 = i5 * 53;
                    i = zzvi.zzc(zzxy.zzd(t, j));
                    i5 = i + i2;
                    break;
                case 3:
                    i2 = i5 * 53;
                    i = zzvi.zzc(zzxy.zzd(t, j));
                    i5 = i + i2;
                    break;
                case 4:
                    i4 = i5 * 53;
                    i3 = zzxy.zzc(t, j);
                    i5 = i4 + i3;
                    break;
                case 5:
                    i2 = i5 * 53;
                    i = zzvi.zzc(zzxy.zzd(t, j));
                    i5 = i + i2;
                    break;
                case 6:
                    i4 = i5 * 53;
                    i3 = zzxy.zzc(t, j);
                    i5 = i4 + i3;
                    break;
                case 7:
                    i2 = i5 * 53;
                    i = zzvi.zza(zzxy.zzw(t, j));
                    i5 = i + i2;
                    break;
                case 8:
                    i2 = i5 * 53;
                    i = ((String) zzxy.zzf(t, j)).hashCode();
                    i5 = i + i2;
                    break;
                case 9:
                    Object zzf2 = zzxy.zzf(t, j);
                    if (zzf2 != null) {
                        i8 = zzf2.hashCode();
                    }
                    i5 = (i5 * 53) + i8;
                    break;
                case 10:
                    i2 = i5 * 53;
                    i = zzxy.zzf(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case 11:
                    i4 = i5 * 53;
                    i3 = zzxy.zzc(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    i4 = i5 * 53;
                    i3 = zzxy.zzc(t, j);
                    i5 = i4 + i3;
                    break;
                case 13:
                    i4 = i5 * 53;
                    i3 = zzxy.zzc(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    i2 = i5 * 53;
                    i = zzvi.zzc(zzxy.zzd(t, j));
                    i5 = i + i2;
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    i4 = i5 * 53;
                    i3 = zzxy.zzc(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    i2 = i5 * 53;
                    i = zzvi.zzc(zzxy.zzd(t, j));
                    i5 = i + i2;
                    break;
                case 17:
                    Object zzf3 = zzxy.zzf(t, j);
                    if (zzf3 != null) {
                        i8 = zzf3.hashCode();
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
                    i = zzxy.zzf(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    i2 = i5 * 53;
                    i = zzxy.zzf(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case 51:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzvi.zzc(Double.doubleToLongBits(zzo(t, j)));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = Float.floatToIntBits(zzp(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzvi.zzc(zzD(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzvi.zzc(zzD(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzT(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzs(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzvi.zzc(zzD(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzT(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzs(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzvi.zza(zzU(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = ((String) zzxy.zzf(t, j)).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzxy.zzf(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzxy.zzf(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzT(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzs(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzT(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzs(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzT(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzs(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzvi.zzc(zzD(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzT(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzs(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzvi.zzc(zzD(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzT(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzxy.zzf(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = this.zzo.zzd(t).hashCode() + (i5 * 53);
        return this.zzh ? (hashCode * 53) + this.zzp.zzb(t).zza.hashCode() : hashCode;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x032b, code lost:
        if (r0 != r0) goto L_0x032d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x0347, code lost:
        r2 = r0;
        r6 = r23;
        r7 = r25;
        r0 = r36;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x037d, code lost:
        if (r0 != r15) goto L_0x032d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:125:0x03a2, code lost:
        if (r0 != r15) goto L_0x032d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzc(T r32, byte[] r33, int r34, int r35, int r36, com.google.android.gms.internal.gtm.zzsl r37) {
        /*
        // Method dump skipped, instructions count: 1564
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzwn.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.gtm.zzsl):int");
    }

    @Override // com.google.android.gms.internal.gtm.zzwx
    public final T zze() {
        return (T) ((zzuz) this.zzg).zzb(4, null, null);
    }

    @Override // com.google.android.gms.internal.gtm.zzwx
    public final void zzf(T t) {
        int i;
        int i2 = this.zzl;
        while (true) {
            i = this.zzm;
            if (i2 >= i) {
                break;
            }
            long zzC = (long) (zzC(this.zzk[i2]) & 1048575);
            Object zzf2 = zzxy.zzf(t, zzC);
            if (zzf2 != null) {
                ((zzwe) zzf2).zzc();
                zzxy.zzs(t, zzC, zzf2);
            }
            i2++;
        }
        int length = this.zzk.length;
        while (i < length) {
            this.zzn.zzb(t, (long) this.zzk[i]);
            i++;
        }
        this.zzo.zzm(t);
        if (this.zzh) {
            this.zzp.zzf(t);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzwx
    public final void zzg(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzC = zzC(i);
            long j = (long) (1048575 & zzC);
            int i2 = this.zzc[i];
            switch (zzB(zzC)) {
                case 0:
                    if (zzQ(t2, i)) {
                        zzxy.zzo(t, j, zzxy.zza(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzQ(t2, i)) {
                        zzxy.zzp(t, j, zzxy.zzb(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzQ(t2, i)) {
                        zzxy.zzr(t, j, zzxy.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzQ(t2, i)) {
                        zzxy.zzr(t, j, zzxy.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzQ(t2, i)) {
                        zzxy.zzq(t, j, zzxy.zzc(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzQ(t2, i)) {
                        zzxy.zzr(t, j, zzxy.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzQ(t2, i)) {
                        zzxy.zzq(t, j, zzxy.zzc(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzQ(t2, i)) {
                        zzxy.zzm(t, j, zzxy.zzw(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzQ(t2, i)) {
                        zzxy.zzs(t, j, zzxy.zzf(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzJ(t, t2, i);
                    break;
                case 10:
                    if (zzQ(t2, i)) {
                        zzxy.zzs(t, j, zzxy.zzf(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzQ(t2, i)) {
                        zzxy.zzq(t, j, zzxy.zzc(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if (zzQ(t2, i)) {
                        zzxy.zzq(t, j, zzxy.zzc(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzQ(t2, i)) {
                        zzxy.zzq(t, j, zzxy.zzc(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if (zzQ(t2, i)) {
                        zzxy.zzr(t, j, zzxy.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if (zzQ(t2, i)) {
                        zzxy.zzq(t, j, zzxy.zzc(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if (zzQ(t2, i)) {
                        zzxy.zzr(t, j, zzxy.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzJ(t, t2, i);
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
                    this.zzn.zzc(t, t2, j);
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    zzwz.zzI(this.zzr, t, t2, j);
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
                    if (zzT(t2, i2, i)) {
                        zzxy.zzs(t, j, zzxy.zzf(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzK(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzT(t2, i2, i)) {
                        zzxy.zzs(t, j, zzxy.zzf(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzK(t, t2, i);
                    break;
            }
        }
        zzwz.zzF(this.zzo, t, t2);
        if (this.zzh) {
            zzwz.zzE(this.zzp, t, t2);
        }
    }

    /*  JADX ERROR: StackOverflowError in pass: MarkFinallyVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.instructions.IndexInsnNode.isSame(IndexInsnNode.java:36)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.sameInsns(MarkFinallyVisitor.java:451)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.compareBlocks(MarkFinallyVisitor.java:436)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.checkBlocksTree(MarkFinallyVisitor.java:408)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.checkBlocksTree(MarkFinallyVisitor.java:411)
        */
    @Override // com.google.android.gms.internal.gtm.zzwx
    public final void zzh(T r13, com.google.android.gms.internal.gtm.zzww r14, com.google.android.gms.internal.gtm.zzuj r15) {
        /*
        // Method dump skipped, instructions count: 1630
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzwn.zzh(java.lang.Object, com.google.android.gms.internal.gtm.zzww, com.google.android.gms.internal.gtm.zzuj):void");
    }

    @Override // com.google.android.gms.internal.gtm.zzwx
    public final void zzi(T t, byte[] bArr, int i, int i2, zzsl zzsl) {
        if (this.zzj) {
            zzv(t, bArr, i, i2, zzsl);
        } else {
            zzc(t, bArr, i, i2, 0, zzsl);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzwx
    public final boolean zzj(T t, T t2) {
        boolean z;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzC = zzC(i);
            long j = (long) (zzC & 1048575);
            switch (zzB(zzC)) {
                case 0:
                    if (zzO(t, t2, i) && Double.doubleToLongBits(zzxy.zza(t, j)) == Double.doubleToLongBits(zzxy.zza(t2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzO(t, t2, i) && Float.floatToIntBits(zzxy.zzb(t, j)) == Float.floatToIntBits(zzxy.zzb(t2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzO(t, t2, i) && zzxy.zzd(t, j) == zzxy.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzO(t, t2, i) && zzxy.zzd(t, j) == zzxy.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzO(t, t2, i) && zzxy.zzc(t, j) == zzxy.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzO(t, t2, i) && zzxy.zzd(t, j) == zzxy.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzO(t, t2, i) && zzxy.zzc(t, j) == zzxy.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzO(t, t2, i) && zzxy.zzw(t, j) == zzxy.zzw(t2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzO(t, t2, i) && zzwz.zzH(zzxy.zzf(t, j), zzxy.zzf(t2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzO(t, t2, i) && zzwz.zzH(zzxy.zzf(t, j), zzxy.zzf(t2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzO(t, t2, i) && zzwz.zzH(zzxy.zzf(t, j), zzxy.zzf(t2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzO(t, t2, i) && zzxy.zzc(t, j) == zzxy.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if (zzO(t, t2, i) && zzxy.zzc(t, j) == zzxy.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzO(t, t2, i) && zzxy.zzc(t, j) == zzxy.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if (zzO(t, t2, i) && zzxy.zzd(t, j) == zzxy.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if (zzO(t, t2, i) && zzxy.zzc(t, j) == zzxy.zzc(t2, j)) {
                        continue;
                    }
                    return false;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if (zzO(t, t2, i) && zzxy.zzd(t, j) == zzxy.zzd(t2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzO(t, t2, i) && zzwz.zzH(zzxy.zzf(t, j), zzxy.zzf(t2, j))) {
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
                    z = zzwz.zzH(zzxy.zzf(t, j), zzxy.zzf(t2, j));
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    z = zzwz.zzH(zzxy.zzf(t, j), zzxy.zzf(t2, j));
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
                    long zzz = (long) (zzz(i) & 1048575);
                    if (zzxy.zzc(t, zzz) == zzxy.zzc(t2, zzz) && zzwz.zzH(zzxy.zzf(t, j), zzxy.zzf(t2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!z) {
                return false;
            }
        }
        if (!this.zzo.zzd(t).equals(this.zzo.zzd(t2))) {
            return false;
        }
        if (this.zzh) {
            return this.zzp.zzb(t).equals(this.zzp.zzb(t2));
        }
        return true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v8, resolved type: com.google.android.gms.internal.gtm.zzwx */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.gtm.zzwx
    public final boolean zzk(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzl) {
            int i6 = this.zzk[i5];
            int i7 = this.zzc[i6];
            int zzC = zzC(i6);
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
            if (!((268435456 & zzC) == 0 || zzR(t, i6, i2, i, i10))) {
                return false;
            }
            int zzB = zzB(zzC);
            if (zzB != 9 && zzB != 17) {
                if (zzB != 27) {
                    if (zzB == 60 || zzB == 68) {
                        if (zzT(t, i7, i6) && !zzS(t, zzC, zzF(i6))) {
                            return false;
                        }
                    } else if (zzB != 49) {
                        if (zzB == 50 && !((zzwe) zzxy.zzf(t, (long) (zzC & 1048575))).isEmpty()) {
                            zzwd zzwd = (zzwd) zzH(i6);
                            throw null;
                        }
                    }
                }
                List list = (List) zzxy.zzf(t, (long) (zzC & 1048575));
                if (!list.isEmpty()) {
                    zzwx zzF = zzF(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzF.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (zzR(t, i6, i2, i, i10) && !zzS(t, zzC, zzF(i6))) {
                return false;
            }
            i5++;
            i3 = i2;
            i4 = i;
        }
        return !this.zzh || this.zzp.zzb(t).zzk();
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0507  */
    @Override // com.google.android.gms.internal.gtm.zzwx
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzn(T r13, com.google.android.gms.internal.gtm.zztp r14) {
        /*
        // Method dump skipped, instructions count: 1464
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzwn.zzn(java.lang.Object, com.google.android.gms.internal.gtm.zztp):void");
    }
}
