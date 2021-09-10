package com.google.android.gms.internal.gtm;

public final class zzu extends zzuz<zzu, zzt> implements zzwl {
    private static final zzu zza;
    private int zze;
    private String zzf = "";
    private long zzg;
    private long zzh = 2147483647L;
    private boolean zzi;
    private long zzj;

    static {
        zzu zzu = new zzu();
        zza = zzu;
        zzuz.zzak(zzu.class, zzu);
    }

    private zzu() {
    }

    public final long zza() {
        return this.zzj;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzuz
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzuz.zzaj(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005ဂ\u0004", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        } else if (i2 == 3) {
            return new zzu();
        } else {
            if (i2 == 4) {
                return new zzt(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zza;
        }
    }

    public final long zzc() {
        return this.zzh;
    }

    public final long zzd() {
        return this.zzg;
    }

    public final String zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        return this.zzi;
    }

    public final boolean zzh() {
        return (this.zze & 1) != 0;
    }
}
