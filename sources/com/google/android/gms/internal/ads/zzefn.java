package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzefn extends zzelb<zzefn, zza> implements zzemq {
    private static volatile zzemx<zzefn> zzek;
    private static final zzefn zzifr;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzefo zzifq;

    public static final class zza extends zzelb.zzb<zzefn, zza> implements zzemq {
        private zza() {
            super(zzefn.zzifr);
        }

        public final zza zzab(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefn) this.zziqp).zzs(zzejr);
            return this;
        }

        public final zza zzb(zzefo zzefo) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefn) this.zziqp).zza((zzefn) zzefo);
            return this;
        }

        public final zza zzfe(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefn) this.zziqp).setVersion(0);
            return this;
        }

        /* synthetic */ zza(zzefm zzefm) {
            this();
        }
    }

    static {
        zzefn zzefn = new zzefn();
        zzifr = zzefn;
        zzelb.zza(zzefn.class, zzefn);
    }

    private zzefn() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zzefo zzefo) {
        zzefo.getClass();
        this.zzifq = zzefo;
    }

    public static zza zzbdc() {
        return (zza) zzifr.zzbii();
    }

    public static zzefn zzr(zzejr zzejr, zzeko zzeko) {
        return (zzefn) zzelb.zza(zzifr, zzejr, zzeko);
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

    public final zzefo zzbdb() {
        zzefo zzefo = this.zzifq;
        return zzefo == null ? zzefo.zzbdh() : zzefo;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefm.zzel[i - 1]) {
            case 1:
                return new zzefn();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzifr, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzidz", "zzifq", "zziea"});
            case 4:
                return zzifr;
            case 5:
                zzemx<zzefn> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzefn.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzifr);
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
