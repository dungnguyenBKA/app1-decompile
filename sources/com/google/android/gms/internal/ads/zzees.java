package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzees extends zzelb<zzees, zza> implements zzemq {
    private static volatile zzemx<zzees> zzek;
    private static final zzees zziew;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;

    public static final class zza extends zzelb.zzb<zzees, zza> implements zzemq {
        private zza() {
            super(zzees.zziew);
        }

        public final zza zzfa(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzees) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzw(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzees) this.zziqp).zzs(zzejr);
            return this;
        }

        /* synthetic */ zza(zzeet zzeet) {
            this();
        }
    }

    static {
        zzees zzees = new zzees();
        zziew = zzees;
        zzelb.zza(zzees.class, zzees);
    }

    private zzees() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbci() {
        return (zza) zziew.zzbii();
    }

    public static zzees zzk(zzejr zzejr, zzeko zzeko) {
        return (zzees) zzelb.zza(zziew, zzejr, zzeko);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzs(zzejr zzejr) {
        zzejr.getClass();
        this.zziea = zzejr;
    }

    public final int getVersion() {
        return this.zzidz;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeet.zzel[i - 1]) {
            case 1:
                return new zzees();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziew, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzidz", "zziea"});
            case 4:
                return zziew;
            case 5:
                zzemx<zzees> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzees.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziew);
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

    public final zzejr zzbbe() {
        return this.zziea;
    }
}
