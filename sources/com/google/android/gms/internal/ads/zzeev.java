package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeev extends zzelb<zzeev, zza> implements zzemq {
    private static volatile zzemx<zzeev> zzek;
    private static final zzeev zziex;
    private int zzidz;
    private int zzied;

    public static final class zza extends zzelb.zzb<zzeev, zza> implements zzemq {
        private zza() {
            super(zzeev.zziex);
        }

        /* synthetic */ zza(zzeeu zzeeu) {
            this();
        }
    }

    static {
        zzeev zzeev = new zzeev();
        zziex = zzeev;
        zzelb.zza(zzeev.class, zzeev);
    }

    private zzeev() {
    }

    public static zzeev zzl(zzejr zzejr, zzeko zzeko) {
        return (zzeev) zzelb.zza(zziex, zzejr, zzeko);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeeu.zzel[i - 1]) {
            case 1:
                return new zzeev();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziex, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzied", "zzidz"});
            case 4:
                return zziex;
            case 5:
                zzemx<zzeev> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeev.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziex);
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
}
