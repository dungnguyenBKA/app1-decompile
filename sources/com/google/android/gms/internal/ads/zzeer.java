package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeer extends zzelb<zzeer, zza> implements zzemq {
    private static volatile zzemx<zzeer> zzek;
    private static final zzeer zziev;
    private int zzieq;

    public static final class zza extends zzelb.zzb<zzeer, zza> implements zzemq {
        private zza() {
            super(zzeer.zziev);
        }

        /* synthetic */ zza(zzeeq zzeeq) {
            this();
        }
    }

    static {
        zzeer zzeer = new zzeer();
        zziev = zzeer;
        zzelb.zza(zzeer.class, zzeer);
    }

    private zzeer() {
    }

    public static zzeer zzbcg() {
        return zziev;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeeq.zzel[i - 1]) {
            case 1:
                return new zzeer();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziev, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzieq"});
            case 4:
                return zziev;
            case 5:
                zzemx<zzeer> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeer.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziev);
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

    public final int zzbbz() {
        return this.zzieq;
    }
}
