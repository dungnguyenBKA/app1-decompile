package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzehd extends zzelb<zzehd, zza> implements zzemq {
    private static volatile zzemx<zzehd> zzek;
    private static final zzehd zziiu;

    public static final class zza extends zzelb.zzb<zzehd, zza> implements zzemq {
        private zza() {
            super(zzehd.zziiu);
        }

        /* synthetic */ zza(zzehe zzehe) {
            this();
        }
    }

    static {
        zzehd zzehd = new zzehd();
        zziiu = zzehd;
        zzelb.zza(zzehd.class, zzehd);
    }

    private zzehd() {
    }

    public static zzehd zzaa(zzejr zzejr, zzeko zzeko) {
        return (zzehd) zzelb.zza(zziiu, zzejr, zzeko);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzehe.zzel[i - 1]) {
            case 1:
                return new zzehd();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziiu, "\u0000\u0000", (Object[]) null);
            case 4:
                return zziiu;
            case 5:
                zzemx<zzehd> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzehd.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziiu);
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
