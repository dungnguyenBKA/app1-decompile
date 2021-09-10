package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeef extends zzelb<zzeef, zza> implements zzemq {
    private static volatile zzemx<zzeef> zzek;
    private static final zzeef zziem;
    private zzeej zziek;
    private zzefz zziel;

    public static final class zza extends zzelb.zzb<zzeef, zza> implements zzemq {
        private zza() {
            super(zzeef.zziem);
        }

        /* synthetic */ zza(zzeee zzeee) {
            this();
        }
    }

    static {
        zzeef zzeef = new zzeef();
        zziem = zzeef;
        zzelb.zza(zzeef.class, zzeef);
    }

    private zzeef() {
    }

    public static zzeef zzf(zzejr zzejr, zzeko zzeko) {
        return (zzeef) zzelb.zza(zziem, zzejr, zzeko);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeee.zzel[i - 1]) {
            case 1:
                return new zzeef();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziem, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zziek", "zziel"});
            case 4:
                return zziem;
            case 5:
                zzemx<zzeef> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeef.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziem);
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

    public final zzeej zzbbq() {
        zzeej zzeej = this.zziek;
        return zzeej == null ? zzeej.zzbbx() : zzeej;
    }

    public final zzefz zzbbr() {
        zzefz zzefz = this.zziel;
        return zzefz == null ? zzefz.zzbds() : zzefz;
    }
}
