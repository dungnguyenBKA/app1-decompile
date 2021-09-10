package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeez extends zzelb<zzeez, zza> implements zzemq {
    private static volatile zzemx<zzeez> zzek;
    private static final zzeez zziez;
    private int zzidz;
    private int zzied;

    public static final class zza extends zzelb.zzb<zzeez, zza> implements zzemq {
        private zza() {
            super(zzeez.zziez);
        }

        /* synthetic */ zza(zzeey zzeey) {
            this();
        }
    }

    static {
        zzeez zzeez = new zzeez();
        zziez = zzeez;
        zzelb.zza(zzeez.class, zzeez);
    }

    private zzeez() {
    }

    public static zzeez zzn(zzejr zzejr, zzeko zzeko) {
        return (zzeez) zzelb.zza(zziez, zzejr, zzeko);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeey.zzel[i - 1]) {
            case 1:
                return new zzeez();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziez, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzidz", "zzied"});
            case 4:
                return zziez;
            case 5:
                zzemx<zzeez> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeez.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziez);
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
