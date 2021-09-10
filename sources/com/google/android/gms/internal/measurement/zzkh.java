package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* access modifiers changed from: package-private */
public final class zzkh {
    static final long zza = ((long) zzC(byte[].class));
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class<?> zzd = zzgd.zzb();
    private static final boolean zze;
    private static final boolean zzf;
    private static final zzkg zzg;
    private static final boolean zzh;
    private static final boolean zzi;

    static {
        boolean z;
        boolean z2;
        Unsafe zzr = zzr();
        zzc = zzr;
        boolean zzE = zzE(Long.TYPE);
        zze = zzE;
        boolean zzE2 = zzE(Integer.TYPE);
        zzf = zzE2;
        zzkg zzkg = null;
        if (zzr != null) {
            if (!zzgd.zza()) {
                zzkg = new zzkf(zzr);
            } else if (zzE) {
                zzkg = new zzke(zzr);
            } else if (zzE2) {
                zzkg = new zzkd(zzr);
            }
        }
        zzg = zzkg;
        boolean z3 = false;
        if (zzkg == null) {
            z = false;
        } else {
            z = zzkg.zzj();
        }
        zzh = z;
        if (zzkg == null) {
            z2 = false;
        } else {
            z2 = zzkg.zzi();
        }
        zzi = z2;
        zzC(boolean[].class);
        zzD(boolean[].class);
        zzC(int[].class);
        zzD(int[].class);
        zzC(long[].class);
        zzD(long[].class);
        zzC(float[].class);
        zzD(float[].class);
        zzC(double[].class);
        zzD(double[].class);
        zzC(Object[].class);
        zzD(Object[].class);
        Field zzF = zzF();
        if (!(zzF == null || zzkg == null)) {
            zzkg.zzk(zzF);
        }
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z3 = true;
        }
        zzb = z3;
    }

    private zzkh() {
    }

    private static int zzC(Class<?> cls) {
        if (zzi) {
            return zzg.zzl(cls);
        }
        return -1;
    }

    private static int zzD(Class<?> cls) {
        if (zzi) {
            return zzg.zzm(cls);
        }
        return -1;
    }

    private static boolean zzE(Class<?> cls) {
        if (!zzgd.zza()) {
            return false;
        }
        try {
            Class<?> cls2 = zzd;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* access modifiers changed from: private */
    public static Field zzF() {
        Field zzG;
        if (zzgd.zza() && (zzG = zzG(Buffer.class, "effectiveDirectAddress")) != null) {
            return zzG;
        }
        Field zzG2 = zzG(Buffer.class, "address");
        if (zzG2 == null || zzG2.getType() != Long.TYPE) {
            return null;
        }
        return zzG2;
    }

    private static Field zzG(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* access modifiers changed from: private */
    public static byte zzH(Object obj, long j) {
        return (byte) ((zzg.zzn(obj, -4 & j) >>> ((int) (((j ^ -1) & 3) << 3))) & 255);
    }

    /* access modifiers changed from: private */
    public static byte zzI(Object obj, long j) {
        return (byte) ((zzg.zzn(obj, -4 & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* access modifiers changed from: private */
    public static void zzJ(Object obj, long j, byte b) {
        long j2 = -4 & j;
        zzkg zzkg = zzg;
        int i = ((((int) j) ^ -1) & 3) << 3;
        zzkg.zzo(obj, j2, ((255 & b) << i) | (zzkg.zzn(obj, j2) & ((255 << i) ^ -1)));
    }

    /* access modifiers changed from: private */
    public static void zzK(Object obj, long j, byte b) {
        long j2 = -4 & j;
        zzkg zzkg = zzg;
        int i = (((int) j) & 3) << 3;
        zzkg.zzo(obj, j2, ((255 & b) << i) | (zzkg.zzn(obj, j2) & ((255 << i) ^ -1)));
    }

    static boolean zza() {
        return zzi;
    }

    static boolean zzb() {
        return zzh;
    }

    static <T> T zzc(Class<T> cls) {
        try {
            return (T) zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    static int zzd(Object obj, long j) {
        return zzg.zzn(obj, j);
    }

    static void zze(Object obj, long j, int i) {
        zzg.zzo(obj, j, i);
    }

    static long zzf(Object obj, long j) {
        return zzg.zzp(obj, j);
    }

    static void zzg(Object obj, long j, long j2) {
        zzg.zzq(obj, j, j2);
    }

    static boolean zzh(Object obj, long j) {
        return zzg.zzc(obj, j);
    }

    static void zzi(Object obj, long j, boolean z) {
        zzg.zzd(obj, j, z);
    }

    static float zzj(Object obj, long j) {
        return zzg.zze(obj, j);
    }

    static void zzk(Object obj, long j, float f) {
        zzg.zzf(obj, j, f);
    }

    static double zzl(Object obj, long j) {
        return zzg.zzg(obj, j);
    }

    static void zzm(Object obj, long j, double d) {
        zzg.zzh(obj, j, d);
    }

    static Object zzn(Object obj, long j) {
        return zzg.zzr(obj, j);
    }

    static void zzo(Object obj, long j, Object obj2) {
        zzg.zzs(obj, j, obj2);
    }

    static byte zzp(byte[] bArr, long j) {
        return zzg.zza(bArr, zza + j);
    }

    static void zzq(byte[] bArr, long j, byte b) {
        zzg.zzb(bArr, zza + j, b);
    }

    static Unsafe zzr() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzkc());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* synthetic */ void zzs(Throwable th) {
        Logger logger = Logger.getLogger(zzkh.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", ic.l(new StringBuilder(valueOf.length() + 71), "platform method missing - proto runtime falling back to safer methods: ", valueOf));
    }

    static /* synthetic */ boolean zzy(Object obj, long j) {
        return zzH(obj, j) != 0;
    }

    static /* synthetic */ boolean zzz(Object obj, long j) {
        return zzI(obj, j) != 0;
    }
}
