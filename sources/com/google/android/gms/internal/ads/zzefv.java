package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzefv extends zzelb<zzefv, zza> implements zzemq {
    private static volatile zzemx<zzefv> zzek;
    private static final zzefv zzigo;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzega zzign;

    public static final class zza extends zzelb.zzb<zzefv, zza> implements zzemq {
        private zza() {
            super(zzefv.zzigo);
        }

        public final zza zzae(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefv) this.zziqp).zzs(zzejr);
            return this;
        }

        public final zza zzd(zzega zzega) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefv) this.zziqp).zzc(zzega);
            return this;
        }

        public final zza zzfi(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefv) this.zziqp).setVersion(0);
            return this;
        }

        /* synthetic */ zza(zzefx zzefx) {
            this();
        }
    }

    static {
        zzefv zzefv = new zzefv();
        zzigo = zzefv;
        zzelb.zza(zzefv.class, zzefv);
    }

    private zzefv() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbdp() {
        return (zza) zzigo.zzbii();
    }

    public static zzefv zzbdq() {
        return zzigo;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzc(zzega zzega) {
        zzega.getClass();
        this.zzign = zzega;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzs(zzejr zzejr) {
        zzejr.getClass();
        this.zziea = zzejr;
    }

    public static zzefv zzt(zzejr zzejr, zzeko zzeko) {
        return (zzefv) zzelb.zza(zzigo, zzejr, zzeko);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefx.zzel[i - 1]) {
            case 1:
                return new zzefv();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzigo, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzidz", "zzign", "zziea"});
            case 4:
                return zzigo;
            case 5:
                zzemx<zzefv> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzefv.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzigo);
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

    public final zzega zzbdo() {
        zzega zzega = this.zzign;
        return zzega == null ? zzega.zzbdv() : zzega;
    }
}
