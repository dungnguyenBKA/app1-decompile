package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzegg extends zzelb<zzegg, zza> implements zzemq {
    private static volatile zzemx<zzegg> zzek;
    private static final zzegg zzihk;
    private String zzigs = "";
    private zzejr zzigt = zzejr.zzilz;
    private int zzihj;

    public static final class zza extends zzelb.zzb<zzegg, zza> implements zzemq {
        private zza() {
            super(zzegg.zzihk);
        }

        /* synthetic */ zza(zzegi zzegi) {
            this();
        }
    }

    static {
        zzegg zzegg = new zzegg();
        zzihk = zzegg;
        zzelb.zza(zzegg.class, zzegg);
    }

    private zzegg() {
    }

    public static zzegg zzbed() {
        return zzihk;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegi.zzel[i - 1]) {
            case 1:
                return new zzegg();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzihk, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzigs", "zzigt", "zzihj"});
            case 4:
                return zzihk;
            case 5:
                zzemx<zzegg> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegg.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzihk);
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

    public final String zzbdx() {
        return this.zzigs;
    }

    public final zzejr zzbdy() {
        return this.zzigt;
    }
}
