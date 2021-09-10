package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeff extends zzelb<zzeff, zza> implements zzemq {
    private static volatile zzemx<zzeff> zzek;
    private static final zzeff zzifj;
    private zzegg zzifi;

    public static final class zza extends zzelb.zzb<zzeff, zza> implements zzemq {
        private zza() {
            super(zzeff.zzifj);
        }

        /* synthetic */ zza(zzefh zzefh) {
            this();
        }
    }

    static {
        zzeff zzeff = new zzeff();
        zzifj = zzeff;
        zzelb.zza(zzeff.class, zzeff);
    }

    private zzeff() {
    }

    public static zzeff zzbcs() {
        return zzifj;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefh.zzel[i - 1]) {
            case 1:
                return new zzeff();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzifj, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zzifi"});
            case 4:
                return zzifj;
            case 5:
                zzemx<zzeff> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeff.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzifj);
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

    public final zzegg zzbcr() {
        zzegg zzegg = this.zzifi;
        return zzegg == null ? zzegg.zzbed() : zzegg;
    }
}
