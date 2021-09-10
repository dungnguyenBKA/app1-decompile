package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

final class zzkf extends zzkg {
    zzkf(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final byte zza(Object obj, long j) {
        return this.zza.getByte(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzb(Object obj, long j, byte b) {
        this.zza.putByte(obj, j, b);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final boolean zzc(Object obj, long j) {
        return this.zza.getBoolean(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzd(Object obj, long j, boolean z) {
        this.zza.putBoolean(obj, j, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final float zze(Object obj, long j) {
        return this.zza.getFloat(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzf(Object obj, long j, float f) {
        this.zza.putFloat(obj, j, f);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final double zzg(Object obj, long j) {
        return this.zza.getDouble(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzh(Object obj, long j, double d) {
        this.zza.putDouble(obj, j, d);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final boolean zzi() {
        if (!super.zzi()) {
            return false;
        }
        try {
            Class<?> cls = this.zza.getClass();
            Class<?> cls2 = Long.TYPE;
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
            zzkh.zzs(th);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final boolean zzj() {
        if (!super.zzj()) {
            return false;
        }
        try {
            Class<?> cls = this.zza.getClass();
            Class<?> cls2 = Long.TYPE;
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
            zzkh.zzs(th);
            return false;
        }
    }
}
