package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* access modifiers changed from: package-private */
public final class zzeoh {
    private static final Logger logger = Logger.getLogger(zzeoh.class.getName());
    private static final Unsafe zzhzj;
    private static final Class<?> zzilq = zzejk.zzbgd();
    private static final boolean zzinc = zzblf();
    private static final boolean zzivf;
    private static final boolean zzivg;
    private static final zzd zzivh;
    private static final boolean zzivi = zzblg();
    private static final long zzivj;
    private static final long zzivk = ((long) zzk(boolean[].class));
    private static final long zzivl = ((long) zzl(boolean[].class));
    private static final long zzivm = ((long) zzk(int[].class));
    private static final long zzivn = ((long) zzl(int[].class));
    private static final long zzivo = ((long) zzk(long[].class));
    private static final long zzivp = ((long) zzl(long[].class));
    private static final long zzivq = ((long) zzk(float[].class));
    private static final long zzivr = ((long) zzl(float[].class));
    private static final long zzivs = ((long) zzk(double[].class));
    private static final long zzivt = ((long) zzl(double[].class));
    private static final long zzivu = ((long) zzk(Object[].class));
    private static final long zzivv = ((long) zzl(Object[].class));
    private static final long zzivw;
    private static final int zzivx;
    static final boolean zzivy = (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN);

    private static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zziwb.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zziwb.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final boolean zzm(Object obj, long j) {
            return this.zziwb.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final float zzn(Object obj, long j) {
            return this.zziwb.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final double zzo(Object obj, long j) {
            return this.zziwb.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final byte zzy(Object obj, long j) {
            return this.zziwb.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, float f) {
            this.zziwb.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, double d) {
            this.zziwb.putDouble(obj, j, d);
        }
    }

    /* access modifiers changed from: private */
    public static abstract class zzd {
        Unsafe zziwb;

        zzd(Unsafe unsafe) {
            this.zziwb = unsafe;
        }

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public final void zza(Object obj, long j, long j2) {
            this.zziwb.putLong(obj, j, j2);
        }

        public abstract void zza(Object obj, long j, boolean z);

        public final void zzb(Object obj, long j, int i) {
            this.zziwb.putInt(obj, j, i);
        }

        public abstract void zze(Object obj, long j, byte b);

        public final int zzk(Object obj, long j) {
            return this.zziwb.getInt(obj, j);
        }

        public final long zzl(Object obj, long j) {
            return this.zziwb.getLong(obj, j);
        }

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);
    }

    static {
        Unsafe zzble = zzble();
        zzhzj = zzble;
        boolean zzm = zzm(Long.TYPE);
        zzivf = zzm;
        boolean zzm2 = zzm(Integer.TYPE);
        zzivg = zzm2;
        zzd zzd2 = null;
        if (zzble != null) {
            if (!zzejk.zzbgc()) {
                zzd2 = new zzb(zzble);
            } else if (zzm) {
                zzd2 = new zzc(zzble);
            } else if (zzm2) {
                zzd2 = new zza(zzble);
            }
        }
        zzivh = zzd2;
        long zzk = (long) zzk(byte[].class);
        zzivj = zzk;
        Field zzblh = zzblh();
        zzivw = (zzblh == null || zzd2 == null) ? -1 : zzd2.zziwb.objectFieldOffset(zzblh);
        zzivx = (int) (7 & zzk);
    }

    private zzeoh() {
    }

    static void zza(Object obj, long j, long j2) {
        zzivh.zza(obj, j, j2);
    }

    static void zzb(Object obj, long j, int i) {
        zzivh.zzb(obj, j, i);
    }

    static boolean zzblc() {
        return zzinc;
    }

    static boolean zzbld() {
        return zzivi;
    }

    static Unsafe zzble() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzeoj());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean zzblf() {
        Unsafe unsafe = zzhzj;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            if (zzejk.zzbgc()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", ic.d(valueOf.length() + 71, "platform method missing - proto runtime falling back to safer methods: ", valueOf));
            return false;
        }
    }

    private static boolean zzblg() {
        Unsafe unsafe = zzhzj;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (zzblh() == null) {
                return false;
            }
            if (zzejk.zzbgc()) {
                return true;
            }
            cls.getMethod("getByte", cls2);
            cls.getMethod("putByte", cls2, Byte.TYPE);
            cls.getMethod("getInt", cls2);
            cls.getMethod("putInt", cls2, Integer.TYPE);
            cls.getMethod("getLong", cls2);
            cls.getMethod("putLong", cls2, cls2);
            cls.getMethod("copyMemory", cls2, cls2, cls2);
            cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", ic.d(valueOf.length() + 71, "platform method missing - proto runtime falling back to safer methods: ", valueOf));
            return false;
        }
    }

    private static Field zzblh() {
        Field zzb2;
        if (zzejk.zzbgc() && (zzb2 = zzb(Buffer.class, "effectiveDirectAddress")) != null) {
            return zzb2;
        }
        Field zzb3 = zzb(Buffer.class, "address");
        if (zzb3 == null || zzb3.getType() != Long.TYPE) {
            return null;
        }
        return zzb3;
    }

    /* access modifiers changed from: private */
    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : 0);
    }

    static <T> T zzj(Class<T> cls) {
        try {
            return (T) zzhzj.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int zzk(Class<?> cls) {
        if (zzinc) {
            return zzivh.zziwb.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzl(Class<?> cls) {
        if (zzinc) {
            return zzivh.zziwb.arrayIndexScale(cls);
        }
        return -1;
    }

    static boolean zzm(Object obj, long j) {
        return zzivh.zzm(obj, j);
    }

    static float zzn(Object obj, long j) {
        return zzivh.zzn(obj, j);
    }

    static double zzo(Object obj, long j) {
        return zzivh.zzo(obj, j);
    }

    static Object zzp(Object obj, long j) {
        return zzivh.zziwb.getObject(obj, j);
    }

    /* access modifiers changed from: private */
    public static byte zzq(Object obj, long j) {
        return (byte) (zzk(obj, -4 & j) >>> ((int) (((j ^ -1) & 3) << 3)));
    }

    /* access modifiers changed from: private */
    public static byte zzr(Object obj, long j) {
        return (byte) (zzk(obj, -4 & j) >>> ((int) ((j & 3) << 3)));
    }

    /* access modifiers changed from: private */
    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }

    /* access modifiers changed from: private */
    public static boolean zzt(Object obj, long j) {
        return zzr(obj, j) != 0;
    }

    static void zza(Object obj, long j, boolean z) {
        zzivh.zza(obj, j, z);
    }

    private static Field zzb(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean zzm(Class<?> cls) {
        if (!zzejk.zzbgc()) {
            return false;
        }
        try {
            Class<?> cls2 = zzilq;
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

    private static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzeoh.zzivy) {
                zzeoh.zzb(obj, j, z);
            } else {
                zzeoh.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzeoh.zzivy) {
                zzeoh.zza(obj, j, b);
            } else {
                zzeoh.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final boolean zzm(Object obj, long j) {
            if (zzeoh.zzivy) {
                return zzeoh.zzs(obj, j);
            }
            return zzeoh.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final byte zzy(Object obj, long j) {
            if (zzeoh.zzivy) {
                return zzeoh.zzq(obj, j);
            }
            return zzeoh.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }
    }

    private static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzeoh.zzivy) {
                zzeoh.zzb(obj, j, z);
            } else {
                zzeoh.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzeoh.zzivy) {
                zzeoh.zza(obj, j, b);
            } else {
                zzeoh.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final boolean zzm(Object obj, long j) {
            if (zzeoh.zzivy) {
                return zzeoh.zzs(obj, j);
            }
            return zzeoh.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final byte zzy(Object obj, long j) {
            if (zzeoh.zzivy) {
                return zzeoh.zzq(obj, j);
            }
            return zzeoh.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }
    }

    static void zza(Object obj, long j, float f) {
        zzivh.zza(obj, j, f);
    }

    /* access modifiers changed from: private */
    public static void zzb(Object obj, long j, byte b) {
        long j2 = -4 & j;
        int i = (((int) j) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & ((255 << i) ^ -1)));
    }

    static int zzk(Object obj, long j) {
        return zzivh.zzk(obj, j);
    }

    static long zzl(Object obj, long j) {
        return zzivh.zzl(obj, j);
    }

    static void zza(Object obj, long j, double d) {
        zzivh.zza(obj, j, d);
    }

    static void zza(Object obj, long j, Object obj2) {
        zzivh.zziwb.putObject(obj, j, obj2);
    }

    /* access modifiers changed from: private */
    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : 0);
    }

    static byte zza(byte[] bArr, long j) {
        return zzivh.zzy(bArr, zzivj + j);
    }

    static void zza(byte[] bArr, long j, byte b) {
        zzivh.zze(bArr, zzivj + j, b);
    }

    /* access modifiers changed from: private */
    public static void zza(Object obj, long j, byte b) {
        long j2 = -4 & j;
        int i = ((((int) j) ^ -1) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & ((255 << i) ^ -1)));
    }
}
