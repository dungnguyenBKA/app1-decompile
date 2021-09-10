package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzgr extends zzelb<zzgr, zza> implements zzemq {
    private static final zzgr zzacc;
    private static volatile zzemx<zzgr> zzek;
    private zzgv zzabz;
    private zzejr zzaca;
    private zzejr zzacb;
    private int zzdv;

    public static final class zza extends zzelb.zzb<zzgr, zza> implements zzemq {
        private zza() {
            super(zzgr.zzacc);
        }

        /* synthetic */ zza(zzgt zzgt) {
            this();
        }
    }

    static {
        zzgr zzgr = new zzgr();
        zzacc = zzgr;
        zzelb.zza(zzgr.class, zzgr);
    }

    private zzgr() {
        zzejr zzejr = zzejr.zzilz;
        this.zzaca = zzejr;
        this.zzacb = zzejr;
    }

    public static zzgr zza(zzejr zzejr, zzeko zzeko) {
        return (zzgr) zzelb.zza(zzacc, zzejr, zzeko);
    }

    public final zzgv zzdc() {
        zzgv zzgv = this.zzabz;
        return zzgv == null ? zzgv.zzdm() : zzgv;
    }

    public final zzejr zzdd() {
        return this.zzaca;
    }

    public final zzejr zzde() {
        return this.zzacb;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzgt.zzel[i - 1]) {
            case 1:
                return new zzgr();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzacc, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzabz", "zzaca", "zzacb"});
            case 4:
                return zzacc;
            case 5:
                zzemx<zzgr> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzgr.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzacc);
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
