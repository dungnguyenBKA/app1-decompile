package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzefz extends zzelb<zzefz, zza> implements zzemq {
    private static volatile zzemx<zzefz> zzek;
    private static final zzefz zzigp;
    private int zzidz;
    private int zzied;
    private zzega zzign;

    public static final class zza extends zzelb.zzb<zzefz, zza> implements zzemq {
        private zza() {
            super(zzefz.zzigp);
        }

        /* synthetic */ zza(zzefy zzefy) {
            this();
        }
    }

    static {
        zzefz zzefz = new zzefz();
        zzigp = zzefz;
        zzelb.zza(zzefz.class, zzefz);
    }

    private zzefz() {
    }

    public static zzefz zzbds() {
        return zzigp;
    }

    public static zzefz zzu(zzejr zzejr, zzeko zzeko) {
        return (zzefz) zzelb.zza(zzigp, zzejr, zzeko);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefy.zzel[i - 1]) {
            case 1:
                return new zzefz();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzigp, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzign", "zzied", "zzidz"});
            case 4:
                return zzigp;
            case 5:
                zzemx<zzefz> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzefz.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzigp);
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

    public final zzega zzbdo() {
        zzega zzega = this.zzign;
        return zzega == null ? zzega.zzbdv() : zzega;
    }
}
