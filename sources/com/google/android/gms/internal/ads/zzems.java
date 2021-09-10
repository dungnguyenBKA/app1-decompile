package com.google.android.gms.internal.ads;

import android.support.v4.media.RatingCompat;
import com.google.ads.AdSize;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vungle.warren.error.VungleException;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.http.util.LangUtils;
import sun.misc.Unsafe;

/* access modifiers changed from: package-private */
public final class zzems<T> implements zzenj<T> {
    private static final Unsafe zzhzj = zzeoh.zzble();
    private static final int[] zzisq = new int[0];
    private final int[] zzisr;
    private final Object[] zziss;
    private final int zzist;
    private final int zzisu;
    private final zzemo zzisv;
    private final boolean zzisw;
    private final boolean zzisx;
    private final boolean zzisy;
    private final boolean zzisz;
    private final int[] zzita;
    private final int zzitb;
    private final int zzitc;
    private final zzemw zzitd;
    private final zzely zzite;
    private final zzeob<?, ?> zzitf;
    private final zzekq<?> zzitg;
    private final zzemh zzith;

    private zzems(int[] iArr, Object[] objArr, int i, int i2, zzemo zzemo, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzemw zzemw, zzely zzely, zzeob<?, ?> zzeob, zzekq<?> zzekq, zzemh zzemh) {
        this.zzisr = iArr;
        this.zziss = objArr;
        this.zzist = i;
        this.zzisu = i2;
        this.zzisx = zzemo instanceof zzelb;
        this.zzisy = z;
        this.zzisw = zzekq != null && zzekq.zzj(zzemo);
        this.zzisz = false;
        this.zzita = iArr2;
        this.zzitb = i3;
        this.zzitc = i4;
        this.zzitd = zzemw;
        this.zzite = zzely;
        this.zzitf = zzeob;
        this.zzitg = zzekq;
        this.zzisv = zzemo;
        this.zzith = zzemh;
    }

    static <T> zzems<T> zza(Class<T> cls, zzemm zzemm, zzemw zzemw, zzely zzely, zzeob<?, ?> zzeob, zzekq<?> zzekq, zzemh zzemh) {
        int i;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        String str;
        Object[] objArr;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z;
        int i16;
        Field field;
        int i17;
        char charAt;
        int i18;
        int i19;
        Field field2;
        Field field3;
        int i20;
        char charAt2;
        int i21;
        char charAt3;
        int i22;
        char charAt4;
        int i23;
        char charAt5;
        int i24;
        char charAt6;
        int i25;
        char charAt7;
        int i26;
        char charAt8;
        int i27;
        char charAt9;
        int i28;
        char charAt10;
        int i29;
        char charAt11;
        int i30;
        char charAt12;
        int i31;
        char charAt13;
        if (zzemm instanceof zzene) {
            zzene zzene = (zzene) zzemm;
            int i32 = 0;
            boolean z2 = zzene.zzbjy() == zzemz.zzitl;
            String zzbkg = zzene.zzbkg();
            int length = zzbkg.length();
            if (zzbkg.charAt(0) >= 55296) {
                int i33 = 1;
                while (true) {
                    i = i33 + 1;
                    if (zzbkg.charAt(i33) < 55296) {
                        break;
                    }
                    i33 = i;
                }
            } else {
                i = 1;
            }
            int i34 = i + 1;
            int charAt14 = zzbkg.charAt(i);
            if (charAt14 >= 55296) {
                int i35 = charAt14 & 8191;
                int i36 = 13;
                while (true) {
                    i31 = i34 + 1;
                    charAt13 = zzbkg.charAt(i34);
                    if (charAt13 < 55296) {
                        break;
                    }
                    i35 |= (charAt13 & 8191) << i36;
                    i36 += 13;
                    i34 = i31;
                }
                charAt14 = i35 | (charAt13 << i36);
                i34 = i31;
            }
            if (charAt14 == 0) {
                iArr = zzisq;
                i7 = 0;
                i6 = 0;
                i5 = 0;
                i4 = 0;
                i3 = 0;
                i2 = 0;
            } else {
                int i37 = i34 + 1;
                int charAt15 = zzbkg.charAt(i34);
                if (charAt15 >= 55296) {
                    int i38 = charAt15 & 8191;
                    int i39 = 13;
                    while (true) {
                        i30 = i37 + 1;
                        charAt12 = zzbkg.charAt(i37);
                        if (charAt12 < 55296) {
                            break;
                        }
                        i38 |= (charAt12 & 8191) << i39;
                        i39 += 13;
                        i37 = i30;
                    }
                    charAt15 = i38 | (charAt12 << i39);
                    i37 = i30;
                }
                int i40 = i37 + 1;
                int charAt16 = zzbkg.charAt(i37);
                if (charAt16 >= 55296) {
                    int i41 = charAt16 & 8191;
                    int i42 = 13;
                    while (true) {
                        i29 = i40 + 1;
                        charAt11 = zzbkg.charAt(i40);
                        if (charAt11 < 55296) {
                            break;
                        }
                        i41 |= (charAt11 & 8191) << i42;
                        i42 += 13;
                        i40 = i29;
                    }
                    charAt16 = i41 | (charAt11 << i42);
                    i40 = i29;
                }
                int i43 = i40 + 1;
                i6 = zzbkg.charAt(i40);
                if (i6 >= 55296) {
                    int i44 = i6 & 8191;
                    int i45 = 13;
                    while (true) {
                        i28 = i43 + 1;
                        charAt10 = zzbkg.charAt(i43);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i44 |= (charAt10 & 8191) << i45;
                        i45 += 13;
                        i43 = i28;
                    }
                    i6 = i44 | (charAt10 << i45);
                    i43 = i28;
                }
                int i46 = i43 + 1;
                i5 = zzbkg.charAt(i43);
                if (i5 >= 55296) {
                    int i47 = i5 & 8191;
                    int i48 = 13;
                    while (true) {
                        i27 = i46 + 1;
                        charAt9 = zzbkg.charAt(i46);
                        if (charAt9 < 55296) {
                            break;
                        }
                        i47 |= (charAt9 & 8191) << i48;
                        i48 += 13;
                        i46 = i27;
                    }
                    i5 = i47 | (charAt9 << i48);
                    i46 = i27;
                }
                int i49 = i46 + 1;
                i4 = zzbkg.charAt(i46);
                if (i4 >= 55296) {
                    int i50 = i4 & 8191;
                    int i51 = 13;
                    while (true) {
                        i26 = i49 + 1;
                        charAt8 = zzbkg.charAt(i49);
                        if (charAt8 < 55296) {
                            break;
                        }
                        i50 |= (charAt8 & 8191) << i51;
                        i51 += 13;
                        i49 = i26;
                    }
                    i4 = i50 | (charAt8 << i51);
                    i49 = i26;
                }
                int i52 = i49 + 1;
                i3 = zzbkg.charAt(i49);
                if (i3 >= 55296) {
                    int i53 = i3 & 8191;
                    int i54 = 13;
                    while (true) {
                        i25 = i52 + 1;
                        charAt7 = zzbkg.charAt(i52);
                        if (charAt7 < 55296) {
                            break;
                        }
                        i53 |= (charAt7 & 8191) << i54;
                        i54 += 13;
                        i52 = i25;
                    }
                    i3 = i53 | (charAt7 << i54);
                    i52 = i25;
                }
                int i55 = i52 + 1;
                int charAt17 = zzbkg.charAt(i52);
                if (charAt17 >= 55296) {
                    int i56 = charAt17 & 8191;
                    int i57 = 13;
                    while (true) {
                        i24 = i55 + 1;
                        charAt6 = zzbkg.charAt(i55);
                        if (charAt6 < 55296) {
                            break;
                        }
                        i56 |= (charAt6 & 8191) << i57;
                        i57 += 13;
                        i55 = i24;
                    }
                    charAt17 = i56 | (charAt6 << i57);
                    i55 = i24;
                }
                int i58 = i55 + 1;
                i2 = zzbkg.charAt(i55);
                if (i2 >= 55296) {
                    int i59 = i2 & 8191;
                    int i60 = i58;
                    int i61 = 13;
                    while (true) {
                        i23 = i60 + 1;
                        charAt5 = zzbkg.charAt(i60);
                        if (charAt5 < 55296) {
                            break;
                        }
                        i59 |= (charAt5 & 8191) << i61;
                        i61 += 13;
                        i60 = i23;
                    }
                    i2 = i59 | (charAt5 << i61);
                    i58 = i23;
                }
                i7 = (charAt15 << 1) + charAt16;
                iArr = new int[(i2 + i3 + charAt17)];
                i32 = charAt15;
                i34 = i58;
            }
            Unsafe unsafe = zzhzj;
            Object[] zzbkh = zzene.zzbkh();
            Class<?> cls2 = zzene.zzbka().getClass();
            int[] iArr2 = new int[(i4 * 3)];
            Object[] objArr2 = new Object[(i4 << 1)];
            int i62 = i2 + i3;
            int i63 = i7;
            int i64 = i2;
            int i65 = i34;
            int i66 = i62;
            int i67 = 0;
            int i68 = 0;
            while (i65 < length) {
                int i69 = i65 + 1;
                int charAt18 = zzbkg.charAt(i65);
                if (charAt18 >= 55296) {
                    int i70 = charAt18 & 8191;
                    int i71 = i69;
                    int i72 = 13;
                    while (true) {
                        i22 = i71 + 1;
                        charAt4 = zzbkg.charAt(i71);
                        i8 = length;
                        if (charAt4 < 55296) {
                            break;
                        }
                        i70 |= (charAt4 & 8191) << i72;
                        i72 += 13;
                        i71 = i22;
                        length = i8;
                    }
                    charAt18 = i70 | (charAt4 << i72);
                    i9 = i22;
                } else {
                    i8 = length;
                    i9 = i69;
                }
                int i73 = i9 + 1;
                int charAt19 = zzbkg.charAt(i9);
                if (charAt19 >= 55296) {
                    int i74 = charAt19 & 8191;
                    int i75 = i73;
                    int i76 = 13;
                    while (true) {
                        i21 = i75 + 1;
                        charAt3 = zzbkg.charAt(i75);
                        i10 = i2;
                        if (charAt3 < 55296) {
                            break;
                        }
                        i74 |= (charAt3 & 8191) << i76;
                        i76 += 13;
                        i75 = i21;
                        i2 = i10;
                    }
                    charAt19 = i74 | (charAt3 << i76);
                    i11 = i21;
                } else {
                    i10 = i2;
                    i11 = i73;
                }
                int i77 = charAt19 & 255;
                if ((charAt19 & 1024) != 0) {
                    iArr[i67] = i68;
                    i67++;
                }
                if (i77 >= 51) {
                    int i78 = i11 + 1;
                    int charAt20 = zzbkg.charAt(i11);
                    char c = 55296;
                    if (charAt20 >= 55296) {
                        int i79 = charAt20 & 8191;
                        int i80 = 13;
                        while (true) {
                            i20 = i78 + 1;
                            charAt2 = zzbkg.charAt(i78);
                            if (charAt2 < c) {
                                break;
                            }
                            i79 |= (charAt2 & 8191) << i80;
                            i80 += 13;
                            i78 = i20;
                            c = 55296;
                        }
                        charAt20 = i79 | (charAt2 << i80);
                        i78 = i20;
                    }
                    int i81 = i77 - 51;
                    if (i81 == 9 || i81 == 17) {
                        i19 = 1;
                        objArr2[((i68 / 3) << 1) + 1] = zzbkh[i63];
                        i63++;
                    } else {
                        if (i81 == 12 && !z2) {
                            objArr2[((i68 / 3) << 1) + 1] = zzbkh[i63];
                            i63++;
                        }
                        i19 = 1;
                    }
                    int i82 = charAt20 << i19;
                    Object obj = zzbkh[i82];
                    if (obj instanceof Field) {
                        field2 = (Field) obj;
                    } else {
                        field2 = zza(cls2, (String) obj);
                        zzbkh[i82] = field2;
                    }
                    int objectFieldOffset = (int) unsafe.objectFieldOffset(field2);
                    int i83 = i82 + 1;
                    Object obj2 = zzbkh[i83];
                    if (obj2 instanceof Field) {
                        field3 = (Field) obj2;
                    } else {
                        field3 = zza(cls2, (String) obj2);
                        zzbkh[i83] = field3;
                    }
                    str = zzbkg;
                    i14 = (int) unsafe.objectFieldOffset(field3);
                    z = z2;
                    objArr = objArr2;
                    i13 = objectFieldOffset;
                    i12 = i78;
                    i15 = 0;
                } else {
                    int i84 = i63 + 1;
                    Field zza = zza(cls2, (String) zzbkh[i63]);
                    if (i77 == 9 || i77 == 17) {
                        objArr2[((i68 / 3) << 1) + 1] = zza.getType();
                    } else {
                        if (i77 == 27 || i77 == 49) {
                            i18 = i84 + 1;
                            objArr2[((i68 / 3) << 1) + 1] = zzbkh[i84];
                        } else if (i77 == 12 || i77 == 30 || i77 == 44) {
                            if (!z2) {
                                i18 = i84 + 1;
                                objArr2[((i68 / 3) << 1) + 1] = zzbkh[i84];
                            }
                        } else if (i77 == 50) {
                            int i85 = i64 + 1;
                            iArr[i64] = i68;
                            int i86 = (i68 / 3) << 1;
                            i18 = i84 + 1;
                            objArr2[i86] = zzbkh[i84];
                            if ((charAt19 & 2048) != 0) {
                                i84 = i18 + 1;
                                objArr2[i86 + 1] = zzbkh[i18];
                                i64 = i85;
                            } else {
                                i64 = i85;
                            }
                        }
                        i16 = i18;
                        i13 = (int) unsafe.objectFieldOffset(zza);
                        if ((charAt19 & 4096) == 4096 || i77 > 17) {
                            str = zzbkg;
                            z = z2;
                            objArr = objArr2;
                            i14 = 1048575;
                            i12 = i11;
                            i15 = 0;
                        } else {
                            int i87 = i11 + 1;
                            int charAt21 = zzbkg.charAt(i11);
                            if (charAt21 >= 55296) {
                                int i88 = charAt21 & 8191;
                                int i89 = 13;
                                while (true) {
                                    i17 = i87 + 1;
                                    charAt = zzbkg.charAt(i87);
                                    if (charAt < 55296) {
                                        break;
                                    }
                                    i88 |= (charAt & 8191) << i89;
                                    i89 += 13;
                                    i87 = i17;
                                }
                                charAt21 = i88 | (charAt << i89);
                                i87 = i17;
                            }
                            int i90 = (charAt21 / 32) + (i32 << 1);
                            Object obj3 = zzbkh[i90];
                            str = zzbkg;
                            if (obj3 instanceof Field) {
                                field = (Field) obj3;
                            } else {
                                field = zza(cls2, (String) obj3);
                                zzbkh[i90] = field;
                            }
                            z = z2;
                            objArr = objArr2;
                            i15 = charAt21 % 32;
                            i12 = i87;
                            i14 = (int) unsafe.objectFieldOffset(field);
                        }
                        if (i77 >= 18 && i77 <= 49) {
                            iArr[i66] = i13;
                            i66++;
                        }
                        i63 = i16;
                    }
                    i16 = i84;
                    i13 = (int) unsafe.objectFieldOffset(zza);
                    if ((charAt19 & 4096) == 4096) {
                    }
                    str = zzbkg;
                    z = z2;
                    objArr = objArr2;
                    i14 = 1048575;
                    i12 = i11;
                    i15 = 0;
                    iArr[i66] = i13;
                    i66++;
                    i63 = i16;
                }
                int i91 = i68 + 1;
                iArr2[i68] = charAt18;
                int i92 = i91 + 1;
                iArr2[i91] = ((charAt19 & 256) != 0 ? 268435456 : 0) | ((charAt19 & AdRequest.MAX_CONTENT_URL_LENGTH) != 0 ? 536870912 : 0) | (i77 << 20) | i13;
                int i93 = i92 + 1;
                iArr2[i92] = (i15 << 20) | i14;
                i65 = i12;
                i32 = i32;
                i5 = i5;
                i2 = i10;
                objArr2 = objArr;
                i6 = i6;
                z2 = z;
                i68 = i93;
                length = i8;
                zzbkg = str;
            }
            return new zzems<>(iArr2, objArr2, i6, i5, zzene.zzbka(), z2, false, iArr, i2, i62, zzemw, zzely, zzeob, zzekq, zzemh);
        }
        ((zzeny) zzemm).zzbjy();
        int i94 = zzemz.zzitl;
        throw new NoSuchMethodError();
    }

    private final int zzao(int i, int i2) {
        if (i < this.zzist || i > this.zzisu) {
            return -1;
        }
        return zzap(i, i2);
    }

    private final int zzap(int i, int i2) {
        int length = (this.zzisr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzisr[i4];
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

    private static zzeoe zzav(Object obj) {
        zzelb zzelb = (zzelb) obj;
        zzeoe zzeoe = zzelb.zziqk;
        if (zzeoe != zzeoe.zzbkz()) {
            return zzeoe;
        }
        zzeoe zzbla = zzeoe.zzbla();
        zzelb.zziqk = zzbla;
        return zzbla;
    }

    private final void zzb(T t, T t2, int i) {
        int zzhn = zzhn(i);
        int i2 = this.zzisr[i];
        long j = (long) (zzhn & 1048575);
        if (zza(t2, i2, i)) {
            Object obj = null;
            if (zza(t, i2, i)) {
                obj = zzeoh.zzp(t, j);
            }
            Object zzp = zzeoh.zzp(t2, j);
            if (obj != null && zzp != null) {
                zzeoh.zza(t, j, zzeld.zze(obj, zzp));
                zzb(t, i2, i);
            } else if (zzp != null) {
                zzeoh.zza(t, j, zzp);
                zzb(t, i2, i);
            }
        }
    }

    private final boolean zzc(T t, T t2, int i) {
        return zze(t, i) == zze(t2, i);
    }

    private static List<?> zze(Object obj, long j) {
        return (List) zzeoh.zzp(obj, j);
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzeoh.zzp(t, j)).doubleValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzeoh.zzp(t, j)).intValue();
    }

    private final zzenj zzhk(int i) {
        int i2 = (i / 3) << 1;
        zzenj zzenj = (zzenj) this.zziss[i2];
        if (zzenj != null) {
            return zzenj;
        }
        zzenj<T> zzh = zzenc.zzbkf().zzh((Class) this.zziss[i2 + 1]);
        this.zziss[i2] = zzh;
        return zzh;
    }

    private final Object zzhl(int i) {
        return this.zziss[(i / 3) << 1];
    }

    private final zzeli zzhm(int i) {
        return (zzeli) this.zziss[((i / 3) << 1) + 1];
    }

    private final int zzhn(int i) {
        return this.zzisr[i + 1];
    }

    private final int zzho(int i) {
        return this.zzisr[i + 2];
    }

    private static boolean zzhp(int i) {
        return (i & 536870912) != 0;
    }

    private final int zzhq(int i) {
        if (i < this.zzist || i > this.zzisu) {
            return -1;
        }
        return zzap(i, 0);
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzeoh.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzeoh.zzp(t, j)).booleanValue();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x006a, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r10, r6), com.google.android.gms.internal.ads.zzeoh.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x007e, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0090, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a4, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00b6, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00c8, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00da, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00f0, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r10, r6), com.google.android.gms.internal.ads.zzeoh.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0106, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r10, r6), com.google.android.gms.internal.ads.zzeoh.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x011c, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r10, r6), com.google.android.gms.internal.ads.zzeoh.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x012e, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzm(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzm(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0140, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0154, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0165, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0178, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x018b, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r10, r6) == com.google.android.gms.internal.ads.zzeoh.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.zzeoh.zzn(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.zzeoh.zzn(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x01bf, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.zzeoh.zzo(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.zzeoh.zzo(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r10, r6), com.google.android.gms.internal.ads.zzeoh.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    @Override // com.google.android.gms.internal.ads.zzenj
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(T r10, T r11) {
        /*
        // Method dump skipped, instructions count: 640
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final int hashCode(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int length = this.zzisr.length;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int zzhn = zzhn(i6);
            int i7 = this.zzisr[i6];
            long j = (long) (1048575 & zzhn);
            int i8 = 37;
            switch ((zzhn & 267386880) >>> 20) {
                case 0:
                    i2 = i5 * 53;
                    i = zzeld.zzfq(Double.doubleToLongBits(zzeoh.zzo(t, j)));
                    i5 = i + i2;
                    break;
                case 1:
                    i2 = i5 * 53;
                    i = Float.floatToIntBits(zzeoh.zzn(t, j));
                    i5 = i + i2;
                    break;
                case 2:
                    i2 = i5 * 53;
                    i = zzeld.zzfq(zzeoh.zzl(t, j));
                    i5 = i + i2;
                    break;
                case 3:
                    i2 = i5 * 53;
                    i = zzeld.zzfq(zzeoh.zzl(t, j));
                    i5 = i + i2;
                    break;
                case 4:
                    i4 = i5 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i5 = i4 + i3;
                    break;
                case 5:
                    i2 = i5 * 53;
                    i = zzeld.zzfq(zzeoh.zzl(t, j));
                    i5 = i + i2;
                    break;
                case 6:
                    i4 = i5 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i5 = i4 + i3;
                    break;
                case 7:
                    i2 = i5 * 53;
                    i = zzeld.zzbt(zzeoh.zzm(t, j));
                    i5 = i + i2;
                    break;
                case 8:
                    i2 = i5 * 53;
                    i = ((String) zzeoh.zzp(t, j)).hashCode();
                    i5 = i + i2;
                    break;
                case 9:
                    Object zzp = zzeoh.zzp(t, j);
                    if (zzp != null) {
                        i8 = zzp.hashCode();
                    }
                    i5 = (i5 * 53) + i8;
                    break;
                case 10:
                    i2 = i5 * 53;
                    i = zzeoh.zzp(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case 11:
                    i4 = i5 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    i4 = i5 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i5 = i4 + i3;
                    break;
                case 13:
                    i4 = i5 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    i2 = i5 * 53;
                    i = zzeld.zzfq(zzeoh.zzl(t, j));
                    i5 = i + i2;
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    i4 = i5 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i5 = i4 + i3;
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    i2 = i5 * 53;
                    i = zzeld.zzfq(zzeoh.zzl(t, j));
                    i5 = i + i2;
                    break;
                case 17:
                    Object zzp2 = zzeoh.zzp(t, j);
                    if (zzp2 != null) {
                        i8 = zzp2.hashCode();
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
                    i = zzeoh.zzp(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    i2 = i5 * 53;
                    i = zzeoh.zzp(t, j).hashCode();
                    i5 = i + i2;
                    break;
                case 51:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeld.zzfq(Double.doubleToLongBits(zzf(t, j)));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = Float.floatToIntBits(zzg(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeld.zzfq(zzi(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeld.zzfq(zzi(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zza(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzh(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeld.zzfq(zzi(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zza(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzh(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeld.zzbt(zzj(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = ((String) zzeoh.zzp(t, j)).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeoh.zzp(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeoh.zzp(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zza(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzh(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zza(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzh(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzh(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeld.zzfq(zzi(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zza(t, i7, i6)) {
                        i4 = i5 * 53;
                        i3 = zzh(t, j);
                        i5 = i4 + i3;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeld.zzfq(zzi(t, j));
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zza(t, i7, i6)) {
                        i2 = i5 * 53;
                        i = zzeoh.zzp(t, j).hashCode();
                        i5 = i + i2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = this.zzitf.zzay(t).hashCode() + (i5 * 53);
        return this.zzisw ? (hashCode * 53) + this.zzitg.zzai(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final T newInstance() {
        return (T) this.zzitd.newInstance(this.zzisv);
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zzak(T t) {
        int i;
        int i2 = this.zzitb;
        while (true) {
            i = this.zzitc;
            if (i2 >= i) {
                break;
            }
            long zzhn = (long) (zzhn(this.zzita[i2]) & 1048575);
            Object zzp = zzeoh.zzp(t, zzhn);
            if (zzp != null) {
                zzeoh.zza(t, zzhn, this.zzith.zzaq(zzp));
            }
            i2++;
        }
        int length = this.zzita.length;
        while (i < length) {
            this.zzite.zzb(t, (long) this.zzita[i]);
            i++;
        }
        this.zzitf.zzak(t);
        if (this.zzisw) {
            this.zzitg.zzak(t);
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzenj
    public final int zzau(T t) {
        int i;
        int i2;
        int i3;
        int zzb;
        int zzl;
        int zzj;
        int i4;
        int i5;
        int i6;
        int zzc;
        int i7;
        int i8;
        int i9;
        int i10 = 267386880;
        int i11 = 1048575;
        int i12 = 1;
        if (this.zzisy) {
            Unsafe unsafe = zzhzj;
            int i13 = 0;
            int i14 = 0;
            while (i13 < this.zzisr.length) {
                int zzhn = zzhn(i13);
                int i15 = (i10 & zzhn) >>> 20;
                int i16 = this.zzisr[i13];
                long j = (long) (zzhn & 1048575);
                if (i15 >= zzekv.DOUBLE_LIST_PACKED.id() && i15 <= zzekv.SINT64_LIST_PACKED.id()) {
                    int i17 = this.zzisr[i13 + 2];
                }
                switch (i15) {
                    case 0:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzc(i16, 0.0d);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzb(i16, 0.0f);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzl(i16, zzeoh.zzl(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzm(i16, zzeoh.zzl(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzag(i16, zzeoh.zzk(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzo(i16, 0);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzaj(i16, 0);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzi(i16, true);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zze((Object) t, i13)) {
                            Object zzp = zzeoh.zzp(t, j);
                            if (zzp instanceof zzejr) {
                                zzc = zzekl.zzc(i16, (zzejr) zzp);
                            } else {
                                zzc = zzekl.zzj(i16, (String) zzp);
                            }
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zze((Object) t, i13)) {
                            zzc = zzenl.zzc(i16, zzeoh.zzp(t, j), zzhk(i13));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzc(i16, (zzejr) zzeoh.zzp(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzah(i16, zzeoh.zzk(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzal(i16, zzeoh.zzk(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzak(i16, 0);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzp(i16, 0);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzai(i16, zzeoh.zzk(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzn(i16, zzeoh.zzl(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zze((Object) t, i13)) {
                            zzc = zzekl.zzc(i16, (zzemo) zzeoh.zzp(t, j), zzhk(i13));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                        zzc = zzenl.zzw(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                        zzc = zzenl.zzv(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case 20:
                        zzc = zzenl.zzo(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        zzc = zzenl.zzp(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                        zzc = zzenl.zzs(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        zzc = zzenl.zzw(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                        zzc = zzenl.zzv(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                        zzc = zzenl.zzx(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                        zzc = zzenl.zzc(i16, zze(t, j));
                        i14 += zzc;
                        break;
                    case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                        zzc = zzenl.zzc(i16, zze(t, j), zzhk(i13));
                        i14 += zzc;
                        break;
                    case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                        zzc = zzenl.zzd(i16, zze(t, j));
                        i14 += zzc;
                        break;
                    case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                        zzc = zzenl.zzt(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                        zzc = zzenl.zzr(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                        zzc = zzenl.zzv(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case 32:
                        zzc = zzenl.zzw(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                        zzc = zzenl.zzu(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                        zzc = zzenl.zzq(i16, zze(t, j), false);
                        i14 += zzc;
                        break;
                    case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                        i9 = zzenl.zzak((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        i9 = zzenl.zzaj((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                        i9 = zzenl.zzac((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        i9 = zzenl.zzad((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        i9 = zzenl.zzag((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        i9 = zzenl.zzak((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        i9 = zzenl.zzaj((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        i9 = zzenl.zzal((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        i9 = zzenl.zzah((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        i9 = zzenl.zzaf((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        i9 = zzenl.zzaj((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case ModuleDescriptor.MODULE_VERSION:
                        i9 = zzenl.zzak((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        i9 = zzenl.zzai((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        i9 = zzenl.zzae((List) unsafe.getObject(t, j));
                        if (i9 > 0) {
                            i8 = zzekl.zzgv(i16);
                            i7 = zzekl.zzgx(i9);
                            i14 = i7 + i8 + i9 + i14;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        zzc = zzenl.zzd(i16, zze(t, j), zzhk(i13));
                        i14 += zzc;
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT:
                        zzc = this.zzith.zzb(i16, zzeoh.zzp(t, j), zzhl(i13));
                        i14 += zzc;
                        break;
                    case 51:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzc(i16, 0.0d);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzb(i16, 0.0f);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzl(i16, zzi(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzm(i16, zzi(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzag(i16, zzh(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzo(i16, 0);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzaj(i16, 0);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzi(i16, true);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zza(t, i16, i13)) {
                            Object zzp2 = zzeoh.zzp(t, j);
                            if (zzp2 instanceof zzejr) {
                                zzc = zzekl.zzc(i16, (zzejr) zzp2);
                            } else {
                                zzc = zzekl.zzj(i16, (String) zzp2);
                            }
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zza(t, i16, i13)) {
                            zzc = zzenl.zzc(i16, zzeoh.zzp(t, j), zzhk(i13));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzc(i16, (zzejr) zzeoh.zzp(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzah(i16, zzh(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzal(i16, zzh(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzak(i16, 0);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzp(i16, 0);
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzai(i16, zzh(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzn(i16, zzi(t, j));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zza(t, i16, i13)) {
                            zzc = zzekl.zzc(i16, (zzemo) zzeoh.zzp(t, j), zzhk(i13));
                            i14 += zzc;
                            break;
                        } else {
                            break;
                        }
                }
                i13 += 3;
                i10 = 267386880;
            }
            return i14 + zza((zzeob) this.zzitf, (Object) t);
        }
        Unsafe unsafe2 = zzhzj;
        int i18 = 0;
        int i19 = 0;
        int i20 = 1048575;
        int i21 = 0;
        while (i18 < this.zzisr.length) {
            int zzhn2 = zzhn(i18);
            int[] iArr = this.zzisr;
            int i22 = iArr[i18];
            int i23 = (267386880 & zzhn2) >>> 20;
            if (i23 <= 17) {
                int i24 = iArr[i18 + 2];
                int i25 = i24 & i11;
                i = i12 << (i24 >>> 20);
                if (i25 != i20) {
                    i21 = unsafe2.getInt(t, (long) i25);
                    i20 = i25;
                }
            } else {
                i = 0;
            }
            long j2 = (long) (i11 & zzhn2);
            switch (i23) {
                case 0:
                    if ((i21 & i) != 0) {
                        i3 = zzekl.zzc(i22, 0.0d);
                        i2 = i3 + i19;
                        i19 = i2;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i21 & i) != 0) {
                        zzb = zzekl.zzb(i22, 0.0f);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i & i21) != 0) {
                        zzl = zzekl.zzl(i22, unsafe2.getLong(t, j2));
                        i19 += zzl;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i & i21) != 0) {
                        zzl = zzekl.zzm(i22, unsafe2.getLong(t, j2));
                        i19 += zzl;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i & i21) != 0) {
                        zzl = zzekl.zzag(i22, unsafe2.getInt(t, j2));
                        i19 += zzl;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i21 & i) != 0) {
                        zzl = zzekl.zzo(i22, 0);
                        i19 += zzl;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i21 & i) != 0) {
                        zzb = zzekl.zzaj(i22, 0);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i21 & i) != 0) {
                        i3 = zzekl.zzi(i22, true);
                        i2 = i3 + i19;
                        i19 = i2;
                        break;
                    }
                    i2 = i19;
                    i19 = i2;
                case 8:
                    if ((i21 & i) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        if (object instanceof zzejr) {
                            zzj = zzekl.zzc(i22, (zzejr) object);
                        } else {
                            zzj = zzekl.zzj(i22, (String) object);
                        }
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 9:
                    if ((i21 & i) != 0) {
                        zzj = zzenl.zzc(i22, unsafe2.getObject(t, j2), zzhk(i18));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 10:
                    if ((i21 & i) != 0) {
                        zzj = zzekl.zzc(i22, (zzejr) unsafe2.getObject(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 11:
                    if ((i21 & i) != 0) {
                        zzj = zzekl.zzah(i22, unsafe2.getInt(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if ((i21 & i) != 0) {
                        zzj = zzekl.zzal(i22, unsafe2.getInt(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 13:
                    if ((i21 & i) != 0) {
                        zzj = zzekl.zzak(i22, 0);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if ((i21 & i) != 0) {
                        zzj = zzekl.zzp(i22, 0);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if ((i21 & i) != 0) {
                        zzj = zzekl.zzai(i22, unsafe2.getInt(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if ((i21 & i) != 0) {
                        zzj = zzekl.zzn(i22, unsafe2.getLong(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 17:
                    if ((i21 & i) != 0) {
                        zzj = zzekl.zzc(i22, (zzemo) unsafe2.getObject(t, j2), zzhk(i18));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    zzj = zzenl.zzw(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzj;
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    zzl = zzenl.zzv(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case 20:
                    zzl = zzenl.zzo(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    zzl = zzenl.zzp(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    zzl = zzenl.zzs(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    zzl = zzenl.zzw(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    zzl = zzenl.zzv(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    zzl = zzenl.zzx(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    zzj = zzenl.zzc(i22, (List) unsafe2.getObject(t, j2));
                    i19 += zzj;
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                    zzj = zzenl.zzc(i22, (List<?>) ((List) unsafe2.getObject(t, j2)), zzhk(i18));
                    i19 += zzj;
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    zzj = zzenl.zzd(i22, (List) unsafe2.getObject(t, j2));
                    i19 += zzj;
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    zzj = zzenl.zzt(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzj;
                    i2 = i19;
                    i19 = i2;
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    zzl = zzenl.zzr(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    zzl = zzenl.zzv(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case 32:
                    zzl = zzenl.zzw(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    zzl = zzenl.zzu(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    zzl = zzenl.zzq(i22, (List) unsafe2.getObject(t, j2), false);
                    i19 += zzl;
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    i6 = zzenl.zzak((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 36:
                    i6 = zzenl.zzaj((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    i6 = zzenl.zzac((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 38:
                    i6 = zzenl.zzad((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 39:
                    i6 = zzenl.zzag((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 40:
                    i6 = zzenl.zzak((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 41:
                    i6 = zzenl.zzaj((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 42:
                    i6 = zzenl.zzal((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 43:
                    i6 = zzenl.zzah((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 44:
                    i6 = zzenl.zzaf((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 45:
                    i6 = zzenl.zzaj((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case ModuleDescriptor.MODULE_VERSION:
                    i6 = zzenl.zzak((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 47:
                    i6 = zzenl.zzai((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 48:
                    i6 = zzenl.zzae((List) unsafe2.getObject(t, j2));
                    if (i6 > 0) {
                        i5 = zzekl.zzgv(i22);
                        i4 = zzekl.zzgx(i6);
                        i19 += i4 + i5 + i6;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 49:
                    zzj = zzenl.zzd(i22, (List) unsafe2.getObject(t, j2), zzhk(i18));
                    i19 += zzj;
                    i2 = i19;
                    i19 = i2;
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    zzj = this.zzith.zzb(i22, unsafe2.getObject(t, j2), zzhl(i18));
                    i19 += zzj;
                    i2 = i19;
                    i19 = i2;
                    break;
                case 51:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzc(i22, 0.0d);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 52:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzb(i22, 0.0f);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 53:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzl(i22, zzi(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 54:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzm(i22, zzi(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 55:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzag(i22, zzh(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 56:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzo(i22, 0);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 57:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzaj(i22, 0);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 58:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzi(i22, true);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 59:
                    if (zza(t, i22, i18)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        if (object2 instanceof zzejr) {
                            zzj = zzekl.zzc(i22, (zzejr) object2);
                        } else {
                            zzj = zzekl.zzj(i22, (String) object2);
                        }
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 60:
                    if (zza(t, i22, i18)) {
                        zzj = zzenl.zzc(i22, unsafe2.getObject(t, j2), zzhk(i18));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 61:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzc(i22, (zzejr) unsafe2.getObject(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 62:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzah(i22, zzh(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 63:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzal(i22, zzh(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 64:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzak(i22, 0);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 65:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzp(i22, 0);
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 66:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzai(i22, zzh(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 67:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzn(i22, zzi(t, j2));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                case 68:
                    if (zza(t, i22, i18)) {
                        zzj = zzekl.zzc(i22, (zzemo) unsafe2.getObject(t, j2), zzhk(i18));
                        i19 += zzj;
                    }
                    i2 = i19;
                    i19 = i2;
                    break;
                default:
                    i2 = i19;
                    i19 = i2;
                    break;
            }
            i18 += 3;
            i11 = 1048575;
            i12 = 1;
        }
        int i26 = 0;
        int zza = i19 + zza((zzeob) this.zzitf, (Object) t);
        if (!this.zzisw) {
            return zza;
        }
        zzeku<?> zzai = this.zzitg.zzai(t);
        for (int i27 = 0; i27 < zzai.zzinp.zzbkq(); i27++) {
            Map.Entry<T, Object> zzhu = zzai.zzinp.zzhu(i27);
            i26 += zzeku.zzb((zzekw<?>) zzhu.getKey(), zzhu.getValue());
        }
        for (Map.Entry<T, Object> entry : zzai.zzinp.zzbkr()) {
            i26 += zzeku.zzb((zzekw<?>) entry.getKey(), entry.getValue());
        }
        return zza + i26;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.ads.zzenj] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.ads.zzenj] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.zzenj
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzaw(T r19) {
        /*
        // Method dump skipped, instructions count: 320
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zzaw(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zzg(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzisr.length; i += 3) {
            int zzhn = zzhn(i);
            long j = (long) (1048575 & zzhn);
            int i2 = this.zzisr[i];
            switch ((zzhn & 267386880) >>> 20) {
                case 0:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzo(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzn(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zze((Object) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zze((Object) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzm(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzp(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzp(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zze((Object) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    if (zze((Object) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zze((Object) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    if (zze((Object) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    if (zze((Object) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((Object) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zza(t, t2, i);
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
                    this.zzite.zza(t, t2, j);
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    zzenl.zza(this.zzith, t, t2, j);
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
                    if (zza(t2, i2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzp(t2, j));
                        zzb(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zza(t2, i2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzp(t2, j));
                        zzb(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        zzenl.zza(this.zzitf, t, t2);
        if (this.zzisw) {
            zzenl.zza(this.zzitg, t, t2);
        }
    }

    private final boolean zze(T t, int i) {
        int zzho = zzho(i);
        long j = (long) (zzho & 1048575);
        if (j == 1048575) {
            int zzhn = zzhn(i);
            long j2 = (long) (zzhn & 1048575);
            switch ((zzhn & 267386880) >>> 20) {
                case 0:
                    return zzeoh.zzo(t, j2) != 0.0d;
                case 1:
                    return zzeoh.zzn(t, j2) != 0.0f;
                case 2:
                    return zzeoh.zzl(t, j2) != 0;
                case 3:
                    return zzeoh.zzl(t, j2) != 0;
                case 4:
                    return zzeoh.zzk(t, j2) != 0;
                case 5:
                    return zzeoh.zzl(t, j2) != 0;
                case 6:
                    return zzeoh.zzk(t, j2) != 0;
                case 7:
                    return zzeoh.zzm(t, j2);
                case 8:
                    Object zzp = zzeoh.zzp(t, j2);
                    if (zzp instanceof String) {
                        return !((String) zzp).isEmpty();
                    }
                    if (zzp instanceof zzejr) {
                        return !zzejr.zzilz.equals(zzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzeoh.zzp(t, j2) != null;
                case 10:
                    return !zzejr.zzilz.equals(zzeoh.zzp(t, j2));
                case 11:
                    return zzeoh.zzk(t, j2) != 0;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    return zzeoh.zzk(t, j2) != 0;
                case 13:
                    return zzeoh.zzk(t, j2) != 0;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    return zzeoh.zzl(t, j2) != 0;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    return zzeoh.zzk(t, j2) != 0;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    return zzeoh.zzl(t, j2) != 0;
                case 17:
                    return zzeoh.zzp(t, j2) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            return (zzeoh.zzk(t, j) & (1 << (zzho >>> 20))) != 0;
        }
    }

    private final void zzf(T t, int i) {
        int zzho = zzho(i);
        long j = (long) (1048575 & zzho);
        if (j != 1048575) {
            zzeoh.zzb(t, j, (1 << (zzho >>> 20)) | zzeoh.zzk(t, j));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:168:0x0491  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0031  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzb(T r18, com.google.android.gms.internal.ads.zzeoy r19) {
        /*
        // Method dump skipped, instructions count: 1338
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zzb(java.lang.Object, com.google.android.gms.internal.ads.zzeoy):void");
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzeoh.zzp(t, j)).floatValue();
    }

    private static Field zza(Class<?> cls, String str) {
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
            throw new RuntimeException(ic.l(ic.p(ic.m(arrays, name.length() + ic.m(str, 40)), "Field ", str, " for ", name), " not found. Known fields are ", arrays));
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzhn = (long) (zzhn(i) & 1048575);
        if (zze((Object) t2, i)) {
            Object zzp = zzeoh.zzp(t, zzhn);
            Object zzp2 = zzeoh.zzp(t2, zzhn);
            if (zzp != null && zzp2 != null) {
                zzeoh.zza(t, zzhn, zzeld.zze(zzp, zzp2));
                zzf((Object) t, i);
            } else if (zzp2 != null) {
                zzeoh.zza(t, zzhn, zzp2);
                zzf((Object) t, i);
            }
        }
    }

    private static <UT, UB> int zza(zzeob<UT, UB> zzeob, T t) {
        return zzeob.zzau(zzeob.zzay(t));
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x003b  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0513  */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x0552  */
    /* JADX WARNING: Removed duplicated region for block: B:331:0x0a2a  */
    @Override // com.google.android.gms.internal.ads.zzenj
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r14, com.google.android.gms.internal.ads.zzeoy r15) {
        /*
        // Method dump skipped, instructions count: 2916
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, com.google.android.gms.internal.ads.zzeoy):void");
    }

    private final void zzb(T t, int i, int i2) {
        zzeoh.zzb(t, (long) (zzho(i2) & 1048575), i);
    }

    private final <K, V> void zza(zzeoy zzeoy, int i, Object obj, int i2) {
        if (obj != null) {
            zzeoy.zza(i, this.zzith.zzas(zzhl(i2)), this.zzith.zzao(obj));
        }
    }

    private static <UT, UB> void zza(zzeob<UT, UB> zzeob, T t, zzeoy zzeoy) {
        zzeob.zza(zzeob.zzay(t), zzeoy);
    }

    /*  JADX ERROR: StackOverflowError in pass: MarkFinallyVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.nodes.InsnNode.isSame(InsnNode.java:303)
        	at jadx.core.dex.instructions.IndexInsnNode.isSame(IndexInsnNode.java:36)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.sameInsns(MarkFinallyVisitor.java:451)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.compareBlocks(MarkFinallyVisitor.java:436)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.checkBlocksTree(MarkFinallyVisitor.java:408)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.checkBlocksTree(MarkFinallyVisitor.java:411)
        */
    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zza(T r13, com.google.android.gms.internal.ads.zzend r14, com.google.android.gms.internal.ads.zzeko r15) {
        /*
        // Method dump skipped, instructions count: 1648
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, com.google.android.gms.internal.ads.zzend, com.google.android.gms.internal.ads.zzeko):void");
    }

    private static int zza(byte[] bArr, int i, int i2, zzeos zzeos, Class<?> cls, zzejm zzejm) {
        switch (zzemr.zzimy[zzeos.ordinal()]) {
            case 1:
                int zzb = zzejn.zzb(bArr, i, zzejm);
                zzejm.zzilu = Boolean.valueOf(zzejm.zzilt != 0);
                return zzb;
            case 2:
                return zzejn.zze(bArr, i, zzejm);
            case 3:
                zzejm.zzilu = Double.valueOf(zzejn.zzj(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zzejm.zzilu = Integer.valueOf(zzejn.zzh(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zzejm.zzilu = Long.valueOf(zzejn.zzi(bArr, i));
                return i + 8;
            case 8:
                zzejm.zzilu = Float.valueOf(zzejn.zzk(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int zza = zzejn.zza(bArr, i, zzejm);
                zzejm.zzilu = Integer.valueOf(zzejm.zzils);
                return zza;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
            case 13:
                int zzb2 = zzejn.zzb(bArr, i, zzejm);
                zzejm.zzilu = Long.valueOf(zzejm.zzilt);
                return zzb2;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return zzejn.zza(zzenc.zzbkf().zzh(cls), bArr, i, i2, zzejm);
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                int zza2 = zzejn.zza(bArr, i, zzejm);
                zzejm.zzilu = Integer.valueOf(zzekc.zzgh(zzejm.zzils));
                return zza2;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                int zzb3 = zzejn.zzb(bArr, i, zzejm);
                zzejm.zzilu = Long.valueOf(zzekc.zzfg(zzejm.zzilt));
                return zzb3;
            case 17:
                return zzejn.zzd(bArr, i, zzejm);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:57)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:15)
        */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x0236  */
    /* JADX WARNING: Removed duplicated region for block: B:240:0x0420 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:243:0x041f A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:248:0x041f A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01e8  */
    private final int zza(T r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.android.gms.internal.ads.zzejm r29) {
        /*
        // Method dump skipped, instructions count: 1126
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.zzejm):int");
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:30:0x003e */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:34:0x003e */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzejm zzejm) {
        Unsafe unsafe = zzhzj;
        Object zzhl = zzhl(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzith.zzap(object)) {
            Object zzar = this.zzith.zzar(zzhl);
            this.zzith.zzf(zzar, object);
            unsafe.putObject(t, j, zzar);
            object = zzar;
        }
        zzemf<?, ?> zzas = this.zzith.zzas(zzhl);
        Map<?, ?> zzan = this.zzith.zzan(object);
        int zza = zzejn.zza(bArr, i, zzejm);
        int i4 = zzejm.zzils;
        if (i4 < 0 || i4 > i2 - zza) {
            throw zzelo.zzbja();
        }
        int i5 = i4 + zza;
        RatingCompat.AnonymousClass1 r14 = (K) zzas.zzisl;
        RatingCompat.AnonymousClass1 r0 = (V) zzas.zzclv;
        while (zza < i5) {
            int i6 = zza + 1;
            byte b = bArr[zza];
            int i7 = b;
            if (b < 0) {
                i6 = zzejn.zza(b, bArr, i6, zzejm);
                i7 = zzejm.zzils;
            }
            int i8 = (i7 == 1 ? 1 : 0) >>> 3;
            int i9 = (i7 == 1 ? 1 : 0) & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == zzas.zzism.zzblj()) {
                    zza = zza(bArr, i6, i2, zzas.zzism, zzas.zzclv.getClass(), zzejm);
                    r0 = (V) zzejm.zzilu;
                }
            } else if (i9 == zzas.zzisk.zzblj()) {
                zza = zza(bArr, i6, i2, zzas.zzisk, (Class<?>) null, zzejm);
                r14 = (K) zzejm.zzilu;
            }
            zza = zzejn.zza(i7, bArr, i6, i2, zzejm);
        }
        if (zza == i5) {
            zzan.put(r14, r0);
            return i5;
        }
        throw zzelo.zzbjh();
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzejm zzejm) {
        int i9;
        Unsafe unsafe = zzhzj;
        long j2 = (long) (this.zzisr[i8 + 2] & 1048575);
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzejn.zzj(bArr, i)));
                    i9 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzejn.zzk(bArr, i)));
                    i9 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    i9 = zzejn.zzb(bArr, i, zzejm);
                    unsafe.putObject(t, j, Long.valueOf(zzejm.zzilt));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    i9 = zzejn.zza(bArr, i, zzejm);
                    unsafe.putObject(t, j, Integer.valueOf(zzejm.zzils));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzejn.zzi(bArr, i)));
                    i9 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzejn.zzh(bArr, i)));
                    i9 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    i9 = zzejn.zzb(bArr, i, zzejm);
                    unsafe.putObject(t, j, Boolean.valueOf(zzejm.zzilt != 0));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    int zza = zzejn.zza(bArr, i, zzejm);
                    int i10 = zzejm.zzils;
                    if (i10 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || zzeok.zzm(bArr, zza, zza + i10)) {
                        unsafe.putObject(t, j, new String(bArr, zza, i10, zzeld.UTF_8));
                        zza += i10;
                    } else {
                        throw zzelo.zzbji();
                    }
                    unsafe.putInt(t, j2, i4);
                    return zza;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    int zza2 = zzejn.zza(zzhk(i8), bArr, i, i2, zzejm);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzejm.zzilu);
                    } else {
                        unsafe.putObject(t, j, zzeld.zze(object, zzejm.zzilu));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    i9 = zzejn.zze(bArr, i, zzejm);
                    unsafe.putObject(t, j, zzejm.zzilu);
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int zza3 = zzejn.zza(bArr, i, zzejm);
                    int i11 = zzejm.zzils;
                    zzeli zzhm = zzhm(i8);
                    if (zzhm == null || zzhm.zzi(i11)) {
                        unsafe.putObject(t, j, Integer.valueOf(i11));
                        i9 = zza3;
                        unsafe.putInt(t, j2, i4);
                        return i9;
                    }
                    zzav(t).zzd(i3, Long.valueOf((long) i11));
                    return zza3;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    i9 = zzejn.zza(bArr, i, zzejm);
                    unsafe.putObject(t, j, Integer.valueOf(zzekc.zzgh(zzejm.zzils)));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    i9 = zzejn.zzb(bArr, i, zzejm);
                    unsafe.putObject(t, j, Long.valueOf(zzekc.zzfg(zzejm.zzilt)));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    i9 = zzejn.zza(zzhk(i8), bArr, i, i2, (i3 & -8) | 4, zzejm);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzejm.zzilu);
                    } else {
                        unsafe.putObject(t, j, zzeld.zze(object2, zzejm.zzilu));
                    }
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            default:
                return i;
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x03bb, code lost:
        if (r0 == r3) goto L_0x0424;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x03fe, code lost:
        if (r0 == r15) goto L_0x0424;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zza(T r28, byte[] r29, int r30, int r31, int r32, com.google.android.gms.internal.ads.zzejm r33) {
        /*
        // Method dump skipped, instructions count: 1342
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzejm):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [int] */
    /* JADX WARNING: Code restructure failed: missing block: B:100:0x02dc, code lost:
        if (r0 == r4) goto L_0x0348;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x0323, code lost:
        if (r0 == r15) goto L_0x0348;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0346, code lost:
        if (r0 == r15) goto L_0x0348;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x0348, code lost:
        r2 = r0;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.zzenj
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.ads.zzejm r35) {
        /*
        // Method dump skipped, instructions count: 966
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzejm):void");
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzeob<UT, UB> zzeob) {
        zzeli zzhm;
        int i2 = this.zzisr[i];
        Object zzp = zzeoh.zzp(obj, (long) (zzhn(i) & 1048575));
        return (zzp == null || (zzhm = zzhm(i)) == null) ? ub : (UB) zza(i, i2, (Map<K, V>) this.zzith.zzan(zzp), zzhm, ub, zzeob);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzeli zzeli, UB ub, zzeob<UT, UB> zzeob) {
        zzemf<?, ?> zzas = this.zzith.zzas(zzhl(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzeli.zzi(next.getValue().intValue())) {
                if (ub == null) {
                    ub = zzeob.zzbky();
                }
                zzejz zzgb = zzejr.zzgb(zzemg.zza(zzas, next.getKey(), next.getValue()));
                try {
                    zzemg.zza(zzgb.zzbgr(), zzas, next.getKey(), next.getValue());
                    zzeob.zza(ub, i2, zzgb.zzbgq());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: com.google.android.gms.internal.ads.zzenj */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzenj zzenj) {
        return zzenj.zzaw(zzeoh.zzp(obj, (long) (i & 1048575)));
    }

    private static void zza(int i, Object obj, zzeoy zzeoy) {
        if (obj instanceof String) {
            zzeoy.zzi(i, (String) obj);
        } else {
            zzeoy.zza(i, (zzejr) obj);
        }
    }

    private final void zza(Object obj, int i, zzend zzend) {
        if (zzhp(i)) {
            zzeoh.zza(obj, (long) (i & 1048575), zzend.zzbgz());
        } else if (this.zzisx) {
            zzeoh.zza(obj, (long) (i & 1048575), zzend.readString());
        } else {
            zzeoh.zza(obj, (long) (i & 1048575), zzend.zzbha());
        }
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zze((Object) t, i);
        }
        return (i3 & i4) != 0;
    }

    private final boolean zza(T t, int i, int i2) {
        return zzeoh.zzk(t, (long) (zzho(i2) & 1048575)) == i;
    }
}
