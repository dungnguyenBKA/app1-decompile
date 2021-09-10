package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* access modifiers changed from: package-private */
public final class zzenl {
    private static final Class<?> zziui = zzbko();
    private static final zzeob<?, ?> zziuj = zzbu(false);
    private static final zzeob<?, ?> zziuk = zzbu(true);
    private static final zzeob<?, ?> zziul = new zzeod();

    public static void zza(int i, List<Double> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzg(i, list, z);
        }
    }

    static int zzac(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzemc) {
            zzemc zzemc = (zzemc) list;
            i = 0;
            while (i2 < size) {
                i += zzekl.zzfk(zzemc.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzekl.zzfk(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    static int zzad(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzemc) {
            zzemc zzemc = (zzemc) list;
            i = 0;
            while (i2 < size) {
                i += zzekl.zzfl(zzemc.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzekl.zzfl(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    static int zzae(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzemc) {
            zzemc zzemc = (zzemc) list;
            i = 0;
            while (i2 < size) {
                i += zzekl.zzfm(zzemc.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzekl.zzfm(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    static int zzaf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            i = 0;
            while (i2 < size) {
                i += zzekl.zzhb(zzele.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzekl.zzhb(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzag(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            i = 0;
            while (i2 < size) {
                i += zzekl.zzgw(zzele.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzekl.zzgw(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzah(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            i = 0;
            while (i2 < size) {
                i += zzekl.zzgx(zzele.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzekl.zzgx(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzai(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            i = 0;
            while (i2 < size) {
                i += zzekl.zzgy(zzele.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzekl.zzgy(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzaj(List<?> list) {
        return list.size() << 2;
    }

    static int zzak(List<?> list) {
        return list.size() << 3;
    }

    static int zzal(List<?> list) {
        return list.size();
    }

    public static void zzb(int i, List<Float> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzf(i, list, z);
        }
    }

    public static zzeob<?, ?> zzbkl() {
        return zziuj;
    }

    public static zzeob<?, ?> zzbkm() {
        return zziuk;
    }

    public static zzeob<?, ?> zzbkn() {
        return zziul;
    }

    private static Class<?> zzbko() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzbkp() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static zzeob<?, ?> zzbu(boolean z) {
        try {
            Class<?> zzbkp = zzbkp();
            if (zzbkp == null) {
                return null;
            }
            return (zzeob) zzbkp.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zzc(int i, List<Long> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzc(i, list, z);
        }
    }

    public static void zzd(int i, List<Long> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzd(i, list, z);
        }
    }

    public static void zze(int i, List<Long> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzn(i, list, z);
        }
    }

    public static void zzf(int i, List<Long> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zze(i, list, z);
        }
    }

    public static void zzg(int i, List<Long> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzl(i, list, z);
        }
    }

    public static void zzh(int i, List<Integer> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zza(i, list, z);
        }
    }

    public static void zzi(Class<?> cls) {
        Class<?> cls2;
        if (!zzelb.class.isAssignableFrom(cls) && (cls2 = zziui) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzj(int i, List<Integer> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzm(i, list, z);
        }
    }

    public static void zzk(int i, List<Integer> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzb(i, list, z);
        }
    }

    public static void zzl(int i, List<Integer> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzk(i, list, z);
        }
    }

    public static void zzm(int i, List<Integer> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzh(i, list, z);
        }
    }

    public static void zzn(int i, List<Boolean> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzi(i, list, z);
        }
    }

    static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzekl.zzgv(i) * list.size()) + zzac(list);
    }

    static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzekl.zzgv(i) * size) + zzad(list);
    }

    static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzekl.zzgv(i) * size) + zzae(list);
    }

    static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzekl.zzgv(i) * size) + zzaf(list);
    }

    static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzekl.zzgv(i) * size) + zzag(list);
    }

    static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzekl.zzgv(i) * size) + zzah(list);
    }

    static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzekl.zzgv(i) * size) + zzai(list);
    }

    static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzekl.zzaj(i, 0) * size;
    }

    static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzekl.zzo(i, 0) * size;
    }

    static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzekl.zzi(i, true) * size;
    }

    public static void zza(int i, List<String> list, zzeoy zzeoy) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zza(i, list);
        }
    }

    public static void zzb(int i, List<zzejr> list, zzeoy zzeoy) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzb(i, list);
        }
    }

    static int zzc(int i, List<?> list) {
        int i2;
        int i3;
        int size = list.size();
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int zzgv = zzekl.zzgv(i) * size;
        if (list instanceof zzelv) {
            zzelv zzelv = (zzelv) list;
            while (i4 < size) {
                Object zzhj = zzelv.zzhj(i4);
                if (zzhj instanceof zzejr) {
                    i3 = zzekl.zzaj((zzejr) zzhj);
                } else {
                    i3 = zzekl.zzia((String) zzhj);
                }
                zzgv = i3 + zzgv;
                i4++;
            }
        } else {
            while (i4 < size) {
                Object obj = list.get(i4);
                if (obj instanceof zzejr) {
                    i2 = zzekl.zzaj((zzejr) obj);
                } else {
                    i2 = zzekl.zzia((String) obj);
                }
                zzgv = i2 + zzgv;
                i4++;
            }
        }
        return zzgv;
    }

    static int zzd(int i, List<zzejr> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzgv = zzekl.zzgv(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgv += zzekl.zzaj(list.get(i2));
        }
        return zzgv;
    }

    static boolean zzh(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzi(int i, List<Integer> list, zzeoy zzeoy, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzj(i, list, z);
        }
    }

    public static void zza(int i, List<?> list, zzeoy zzeoy, zzenj zzenj) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zza(i, list, zzenj);
        }
    }

    public static void zzb(int i, List<?> list, zzeoy zzeoy, zzenj zzenj) {
        if (list != null && !list.isEmpty()) {
            zzeoy.zzb(i, list, zzenj);
        }
    }

    static <T> void zza(zzemh zzemh, T t, T t2, long j) {
        zzeoh.zza(t, j, zzemh.zzf(zzeoh.zzp(t, j), zzeoh.zzp(t2, j)));
    }

    static int zzd(int i, List<zzemo> list, zzenj zzenj) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzekl.zzc(i, list.get(i3), zzenj);
        }
        return i2;
    }

    static <T, FT extends zzekw<FT>> void zza(zzekq<FT> zzekq, T t, T t2) {
        zzeku<FT> zzai = zzekq.zzai(t2);
        if (!zzai.zzinp.isEmpty()) {
            zzekq.zzaj(t).zza(zzai);
        }
    }

    static <T, UT, UB> void zza(zzeob<UT, UB> zzeob, T t, T t2) {
        zzeob.zzi(t, zzeob.zzk(zzeob.zzay(t), zzeob.zzay(t2)));
    }

    static int zzc(int i, Object obj, zzenj zzenj) {
        if (obj instanceof zzelt) {
            return zzekl.zza(i, (zzelt) obj);
        }
        return zzekl.zzb(i, (zzemo) obj, zzenj);
    }

    static <UT, UB> UB zza(int i, List<Integer> list, zzeli zzeli, UB ub, zzeob<UT, UB> zzeob) {
        if (zzeli == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (zzeli.zzi(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) zza(i, intValue, ub, zzeob);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!zzeli.zzi(intValue2)) {
                    ub = (UB) zza(i, intValue2, ub, zzeob);
                    it.remove();
                }
            }
        }
        return ub;
    }

    static int zzc(int i, List<?> list, zzenj zzenj) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzgv = zzekl.zzgv(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzelt) {
                zzgv = zzekl.zza((zzelt) obj) + zzgv;
            } else {
                zzgv += zzekl.zza((zzemo) obj, zzenj);
            }
        }
        return zzgv;
    }

    static <UT, UB> UB zza(int i, int i2, UB ub, zzeob<UT, UB> zzeob) {
        if (ub == null) {
            ub = zzeob.zzbky();
        }
        zzeob.zza(ub, i, (long) i2);
        return ub;
    }
}
