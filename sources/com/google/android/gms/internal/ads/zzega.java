package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzega extends zzelb<zzega, zza> implements zzemq {
    private static volatile zzemx<zzega> zzek;
    private static final zzega zzigr;
    private int zzief;
    private int zzigq;

    public static final class zza extends zzelb.zzb<zzega, zza> implements zzemq {
        private zza() {
            super(zzega.zzigr);
        }

        /* synthetic */ zza(zzegb zzegb) {
            this();
        }
    }

    static {
        zzega zzega = new zzega();
        zzigr = zzega;
        zzelb.zza(zzega.class, zzega);
    }

    private zzega() {
    }

    public static zzega zzbdv() {
        return zzigr;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegb.zzel[i - 1]) {
            case 1:
                return new zzega();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzigr, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzigq", "zzief"});
            case 4:
                return zzigr;
            case 5:
                zzemx<zzega> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzega.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzigr);
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

    public final int zzbbj() {
        return this.zzief;
    }

    public final zzeft zzbdu() {
        zzeft zzfh = zzeft.zzfh(this.zzigq);
        return zzfh == null ? zzeft.UNRECOGNIZED : zzfh;
    }
}
