package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeen extends zzelb<zzeen, zza> implements zzemq {
    private static volatile zzemx<zzeen> zzek;
    private static final zzeen zziet;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzeer zzies;

    public static final class zza extends zzelb.zzb<zzeen, zza> implements zzemq {
        private zza() {
            super(zzeen.zziet);
        }

        public final zza zzb(zzeer zzeer) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeen) this.zziqp).zza((zzeen) zzeer);
            return this;
        }

        public final zza zzez(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeen) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzv(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeen) this.zziqp).zzs(zzejr);
            return this;
        }

        /* synthetic */ zza(zzeem zzeem) {
            this();
        }
    }

    static {
        zzeen zzeen = new zzeen();
        zziet = zzeen;
        zzelb.zza(zzeen.class, zzeen);
    }

    private zzeen() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zzeer zzeer) {
        zzeer.getClass();
        this.zzies = zzeer;
    }

    public static zza zzbcd() {
        return (zza) zziet.zzbii();
    }

    public static zzeen zzi(zzejr zzejr, zzeko zzeko) {
        return (zzeen) zzelb.zza(zziet, zzejr, zzeko);
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

    public final zzejr zzbbe() {
        return this.zziea;
    }

    public final zzeer zzbcc() {
        zzeer zzeer = this.zzies;
        return zzeer == null ? zzeer.zzbcg() : zzeer;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeem.zzel[i - 1]) {
            case 1:
                return new zzeen();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziet, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzidz", "zzies", "zziea"});
            case 4:
                return zziet;
            case 5:
                zzemx<zzeen> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeen.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziet);
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
