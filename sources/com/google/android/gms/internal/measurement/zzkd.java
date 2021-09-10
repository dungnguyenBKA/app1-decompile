package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

final class zzkd extends zzkg {
    zzkd(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final byte zza(Object obj, long j) {
        if (zzkh.zzb) {
            return zzkh.zzH(obj, j);
        }
        return zzkh.zzI(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzb(Object obj, long j, byte b) {
        if (zzkh.zzb) {
            zzkh.zzJ(obj, j, b);
        } else {
            zzkh.zzK(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final boolean zzc(Object obj, long j) {
        if (zzkh.zzb) {
            return zzkh.zzy(obj, j);
        }
        return zzkh.zzz(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzd(Object obj, long j, boolean z) {
        if (zzkh.zzb) {
            zzkh.zzJ(obj, j, r3 ? (byte) 1 : 0);
        } else {
            zzkh.zzK(obj, j, r3 ? (byte) 1 : 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final float zze(Object obj, long j) {
        return Float.intBitsToFloat(zzn(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzf(Object obj, long j, float f) {
        zzo(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final double zzg(Object obj, long j) {
        return Double.longBitsToDouble(zzp(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzh(Object obj, long j, double d) {
        zzq(obj, j, Double.doubleToLongBits(d));
    }
}
