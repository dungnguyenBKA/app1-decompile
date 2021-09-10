package com.google.android.gms.internal.measurement;

public final class zzdx extends zzhs<zzdx, zzdw> implements zziy {
    private static final zzdx zze;
    private zzhz<zzdz> zza = zzhs.zzbE();

    static {
        zzdx zzdx = new zzdx();
        zze = zzdx;
        zzhs.zzby(zzdx.class, zzdx);
    }

    private zzdx() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzhs.zzbz(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", zzdz.class});
        } else if (i2 == 3) {
            return new zzdx();
        } else {
            if (i2 == 4) {
                return new zzdw(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zze;
        }
    }
}
