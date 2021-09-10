package com.google.android.gms.internal.measurement;

import java.util.List;

public final class zzdh extends zzhs<zzdh, zzdg> implements zziy {
    private static final zzdh zze;
    private zzhz<zzdj> zza = zzhs.zzbE();

    static {
        zzdh zzdh = new zzdh();
        zze = zzdh;
        zzhs.zzby(zzdh.class, zzdh);
    }

    private zzdh() {
    }

    public static zzdg zzc() {
        return (zzdg) zze.zzbt();
    }

    static /* synthetic */ void zze(zzdh zzdh, zzdj zzdj) {
        zzdj.getClass();
        zzhz<zzdj> zzhz = zzdh.zza;
        if (!zzhz.zza()) {
            zzdh.zza = zzhs.zzbF(zzhz);
        }
        zzdh.zza.add(zzdj);
    }

    public final List<zzdj> zza() {
        return this.zza;
    }

    public final zzdj zzb(int i) {
        return this.zza.get(0);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzhs.zzbz(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", zzdj.class});
        } else if (i2 == 3) {
            return new zzdh();
        } else {
            if (i2 == 4) {
                return new zzdg(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zze;
        }
    }
}
