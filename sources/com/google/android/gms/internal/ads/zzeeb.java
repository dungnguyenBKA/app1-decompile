package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeeb extends zzelb<zzeeb, zza> implements zzemq {
    private static volatile zzemx<zzeeb> zzek;
    private static final zzeeb zzieg;
    private int zzief;

    public static final class zza extends zzelb.zzb<zzeeb, zza> implements zzemq {
        private zza() {
            super(zzeeb.zzieg);
        }

        /* synthetic */ zza(zzeea zzeea) {
            this();
        }
    }

    static {
        zzeeb zzeeb = new zzeeb();
        zzieg = zzeeb;
        zzelb.zza(zzeeb.class, zzeeb);
    }

    private zzeeb() {
    }

    public static zzeeb zzbbk() {
        return zzieg;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeea.zzel[i - 1]) {
            case 1:
                return new zzeeb();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzieg, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzief"});
            case 4:
                return zzieg;
            case 5:
                zzemx<zzeeb> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeeb.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzieg);
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

    public final int zzbbj() {
        return this.zzief;
    }
}
