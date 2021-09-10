package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzabm implements zzadx {
    private final /* synthetic */ zzabl zzcmh;

    zzabm(zzabl zzabl) {
        this.zzcmh = zzabl;
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final String get(String str, String str2) {
        return this.zzcmh.zzcme.getString(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final Long getLong(String str, long j) {
        try {
            return Long.valueOf(this.zzcmh.zzcme.getLong(str, j));
        } catch (ClassCastException unused) {
            return Long.valueOf((long) this.zzcmh.zzcme.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final Double zza(String str, double d) {
        return Double.valueOf((double) this.zzcmh.zzcme.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final Boolean zzf(String str, boolean z) {
        return Boolean.valueOf(this.zzcmh.zzcme.getBoolean(str, z));
    }
}
