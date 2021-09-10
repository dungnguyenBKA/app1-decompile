package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzefk extends zzelb<zzefk, zza> implements zzemq {
    private static volatile zzemx<zzefk> zzek;
    private static final zzefk zzifp;
    private zzefr zzifm;
    private zzeff zzifn;
    private int zzifo;

    public static final class zza extends zzelb.zzb<zzefk, zza> implements zzemq {
        private zza() {
            super(zzefk.zzifp);
        }

        /* synthetic */ zza(zzefl zzefl) {
            this();
        }
    }

    static {
        zzefk zzefk = new zzefk();
        zzifp = zzefk;
        zzelb.zza(zzefk.class, zzefk);
    }

    private zzefk() {
    }

    public static zzefk zzbcz() {
        return zzifp;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefl.zzel[i - 1]) {
            case 1:
                return new zzefk();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzifp, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzifm", "zzifn", "zzifo"});
            case 4:
                return zzifp;
            case 5:
                zzemx<zzefk> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzefk.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzifp);
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

    public final zzefr zzbcw() {
        zzefr zzefr = this.zzifm;
        return zzefr == null ? zzefr.zzbdm() : zzefr;
    }

    public final zzeff zzbcx() {
        zzeff zzeff = this.zzifn;
        return zzeff == null ? zzeff.zzbcs() : zzeff;
    }

    public final zzefe zzbcy() {
        zzefe zzfd = zzefe.zzfd(this.zzifo);
        return zzfd == null ? zzefe.UNRECOGNIZED : zzfd;
    }
}
