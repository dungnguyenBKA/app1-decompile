package com.google.android.gms.internal.gtm;

import java.util.List;

public final class zzs extends zzuz<zzs, zzr> implements zzwl {
    private static final zzs zza;
    private int zze;
    private zzve zzf = zzuz.zzaf();
    private int zzg;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private byte zzk = 2;

    static {
        zzs zzs = new zzs();
        zza = zzs;
        zzuz.zzak(zzs.class, zzs);
    }

    private zzs() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzuz
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzk);
        }
        byte b = 1;
        if (i2 == 2) {
            return zzuz.zzaj(zza, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0001\u0001\u0001ဇ\u0003\u0002ᔄ\u0000\u0003\u0016\u0004င\u0001\u0006ဇ\u0002", new Object[]{"zze", "zzj", "zzg", "zzf", "zzh", "zzi"});
        } else if (i2 == 3) {
            return new zzs();
        } else {
            if (i2 == 4) {
                return new zzr(null);
            }
            if (i2 == 5) {
                return zza;
            }
            if (obj == null) {
                b = 0;
            }
            this.zzk = b;
            return null;
        }
    }

    public final List<Integer> zzc() {
        return this.zzf;
    }
}
