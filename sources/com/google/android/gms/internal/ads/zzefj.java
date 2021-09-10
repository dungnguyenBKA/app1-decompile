package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzefj extends zzelb<zzefj, zza> implements zzemq {
    private static volatile zzemx<zzefj> zzek;
    private static final zzefj zzifl;
    private zzefk zzifk;

    public static final class zza extends zzelb.zzb<zzefj, zza> implements zzemq {
        private zza() {
            super(zzefj.zzifl);
        }

        /* synthetic */ zza(zzefi zzefi) {
            this();
        }
    }

    static {
        zzefj zzefj = new zzefj();
        zzifl = zzefj;
        zzelb.zza(zzefj.class, zzefj);
    }

    private zzefj() {
    }

    public static zzefj zzq(zzejr zzejr, zzeko zzeko) {
        return (zzefj) zzelb.zza(zzifl, zzejr, zzeko);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefi.zzel[i - 1]) {
            case 1:
                return new zzefj();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzifl, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zzifk"});
            case 4:
                return zzifl;
            case 5:
                zzemx<zzefj> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzefj.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzifl);
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

    public final zzefk zzbcu() {
        zzefk zzefk = this.zzifk;
        return zzefk == null ? zzefk.zzbcz() : zzefk;
    }
}
