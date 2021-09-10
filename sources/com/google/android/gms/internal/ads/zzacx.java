package com.google.android.gms.internal.ads;

public class zzacx<T> {
    private final T zzclv;
    private final String zzcm;
    private final int zzdch;

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;TT;Ljava/lang/Integer;)V */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    protected zzacx(String str, Object obj, int i) {
        this.zzcm = str;
        this.zzclv = obj;
        this.zzdch = i;
    }

    public static zzacx<Long> zzb(String str, long j) {
        return new zzacx<>(str, Long.valueOf(j), zzacz.zzdcj);
    }

    public static zzacx<Boolean> zzg(String str, boolean z) {
        return new zzacx<>(str, Boolean.valueOf(z), zzacz.zzdci);
    }

    public static zzacx<String> zzh(String str, String str2) {
        return new zzacx<>(str, str2, zzacz.zzdcl);
    }

    public T get() {
        zzadx zztc = zzadw.zztc();
        if (zztc != null) {
            int i = zzacw.zzdcg[this.zzdch - 1];
            if (i == 1) {
                return (T) zztc.zzf(this.zzcm, this.zzclv.booleanValue());
            }
            if (i == 2) {
                return (T) zztc.getLong(this.zzcm, this.zzclv.longValue());
            }
            if (i == 3) {
                return (T) zztc.zza(this.zzcm, this.zzclv.doubleValue());
            }
            if (i == 4) {
                return (T) zztc.get(this.zzcm, this.zzclv);
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException("Flag is not initialized.");
    }

    public static zzacx<Double> zzb(String str, double d) {
        return new zzacx<>(str, Double.valueOf(d), zzacz.zzdck);
    }
}
