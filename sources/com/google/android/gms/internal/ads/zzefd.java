package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzefd extends zzelb<zzefd, zza> implements zzemq {
    private static volatile zzemx<zzefd> zzek;
    private static final zzefd zzifb;

    public static final class zza extends zzelb.zzb<zzefd, zza> implements zzemq {
        private zza() {
            super(zzefd.zzifb);
        }

        /* synthetic */ zza(zzefc zzefc) {
            this();
        }
    }

    static {
        zzefd zzefd = new zzefd();
        zzifb = zzefd;
        zzelb.zza(zzefd.class, zzefd);
    }

    private zzefd() {
    }

    public static zzefd zzp(zzejr zzejr, zzeko zzeko) {
        return (zzefd) zzelb.zza(zzifb, zzejr, zzeko);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefc.zzel[i - 1]) {
            case 1:
                return new zzefd();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzifb, "\u0000\u0000", (Object[]) null);
            case 4:
                return zzifb;
            case 5:
                zzemx<zzefd> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzefd.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzifb);
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
