package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeek extends zzelb<zzeek, zza> implements zzemq {
    private static volatile zzemx<zzeek> zzek;
    private static final zzeek zzier;
    private int zzieq;

    public static final class zza extends zzelb.zzb<zzeek, zza> implements zzemq {
        private zza() {
            super(zzeek.zzier);
        }

        /* synthetic */ zza(zzeel zzeel) {
            this();
        }
    }

    static {
        zzeek zzeek = new zzeek();
        zzier = zzeek;
        zzelb.zza(zzeek.class, zzeek);
    }

    private zzeek() {
    }

    public static zzeek zzbca() {
        return zzier;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeel.zzel[i - 1]) {
            case 1:
                return new zzeek();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzier, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzieq"});
            case 4:
                return zzier;
            case 5:
                zzemx<zzeek> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeek.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzier);
                            zzek = zzemx;
                        }
                    }
                }
                return zzemx;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final int zzbbz() {
        return this.zzieq;
    }
}
