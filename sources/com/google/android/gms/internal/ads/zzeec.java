package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeec extends zzelb<zzeec, zza> implements zzemq {
    private static volatile zzemx<zzeec> zzek;
    private static final zzeec zziej;
    private int zzidz;
    private zzeeg zzieh;
    private zzefv zziei;

    public static final class zza extends zzelb.zzb<zzeec, zza> implements zzemq {
        private zza() {
            super(zzeec.zziej);
        }

        public final zza zzc(zzeeg zzeeg) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeec) this.zziqp).zzb((zzeec) zzeeg);
            return this;
        }

        public final zza zzex(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeec) this.zziqp).setVersion(i);
            return this;
        }

        /* synthetic */ zza(zzeed zzeed) {
            this();
        }

        public final zza zzc(zzefv zzefv) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeec) this.zziqp).zzb((zzeec) zzefv);
            return this;
        }
    }

    static {
        zzeec zzeec = new zzeec();
        zziej = zzeec;
        zzelb.zza(zzeec.class, zzeec);
    }

    private zzeec() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzb(zzeeg zzeeg) {
        zzeeg.getClass();
        this.zzieh = zzeeg;
    }

    public static zza zzbbo() {
        return (zza) zziej.zzbii();
    }

    public static zzeec zze(zzejr zzejr, zzeko zzeko) {
        return (zzeec) zzelb.zza(zziej, zzejr, zzeko);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeed.zzel[i - 1]) {
            case 1:
                return new zzeec();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziej, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzidz", "zzieh", "zziei"});
            case 4:
                return zziej;
            case 5:
                zzemx<zzeec> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeec.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziej);
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

    public final zzeeg zzbbm() {
        zzeeg zzeeg = this.zzieh;
        return zzeeg == null ? zzeeg.zzbbv() : zzeeg;
    }

    public final zzefv zzbbn() {
        zzefv zzefv = this.zziei;
        return zzefv == null ? zzefv.zzbdq() : zzefv;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzb(zzefv zzefv) {
        zzefv.getClass();
        this.zziei = zzefv;
    }
}
