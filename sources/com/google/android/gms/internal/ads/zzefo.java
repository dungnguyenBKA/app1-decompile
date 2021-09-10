package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzefo extends zzelb<zzefo, zza> implements zzemq {
    private static volatile zzemx<zzefo> zzek;
    private static final zzefo zzifu;
    private int zzidz;
    private zzefk zzifk;
    private zzejr zzifs;
    private zzejr zzift;

    public static final class zza extends zzelb.zzb<zzefo, zza> implements zzemq {
        private zza() {
            super(zzefo.zzifu);
        }

        public final zza zzac(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefo) this.zziqp).zzz(zzejr);
            return this;
        }

        public final zza zzad(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefo) this.zziqp).zzaa(zzejr);
            return this;
        }

        public final zza zzc(zzefk zzefk) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefo) this.zziqp).zzb((zzefo) zzefk);
            return this;
        }

        public final zza zzff(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefo) this.zziqp).setVersion(0);
            return this;
        }

        /* synthetic */ zza(zzefp zzefp) {
            this();
        }
    }

    static {
        zzefo zzefo = new zzefo();
        zzifu = zzefo;
        zzelb.zza(zzefo.class, zzefo);
    }

    private zzefo() {
        zzejr zzejr = zzejr.zzilz;
        this.zzifs = zzejr;
        this.zzift = zzejr;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzaa(zzejr zzejr) {
        zzejr.getClass();
        this.zzift = zzejr;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzb(zzefk zzefk) {
        zzefk.getClass();
        this.zzifk = zzefk;
    }

    public static zza zzbdg() {
        return (zza) zzifu.zzbii();
    }

    public static zzefo zzbdh() {
        return zzifu;
    }

    public static zzefo zzs(zzejr zzejr, zzeko zzeko) {
        return (zzefo) zzelb.zza(zzifu, zzejr, zzeko);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzz(zzejr zzejr) {
        zzejr.getClass();
        this.zzifs = zzejr;
    }

    public final int getVersion() {
        return this.zzidz;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefp.zzel[i - 1]) {
            case 1:
                return new zzefo();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzifu, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzidz", "zzifk", "zzifs", "zzift"});
            case 4:
                return zzifu;
            case 5:
                zzemx<zzefo> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzefo.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzifu);
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

    public final zzejr zzbde() {
        return this.zzifs;
    }

    public final zzejr zzbdf() {
        return this.zzift;
    }
}
