package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeeg extends zzelb<zzeeg, zza> implements zzemq {
    private static volatile zzemx<zzeeg> zzek;
    private static final zzeeg zzieo;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzeek zzien;

    public static final class zza extends zzelb.zzb<zzeeg, zza> implements zzemq {
        private zza() {
            super(zzeeg.zzieo);
        }

        public final zza zzc(zzeek zzeek) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeeg) this.zziqp).zzb((zzeeg) zzeek);
            return this;
        }

        public final zza zzey(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeeg) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzu(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeeg) this.zziqp).zzs(zzejr);
            return this;
        }

        /* synthetic */ zza(zzeeh zzeeh) {
            this();
        }
    }

    static {
        zzeeg zzeeg = new zzeeg();
        zzieo = zzeeg;
        zzelb.zza(zzeeg.class, zzeeg);
    }

    private zzeeg() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzb(zzeek zzeek) {
        zzeek.getClass();
        this.zzien = zzeek;
    }

    public static zza zzbbu() {
        return (zza) zzieo.zzbii();
    }

    public static zzeeg zzbbv() {
        return zzieo;
    }

    public static zzeeg zzg(zzejr zzejr, zzeko zzeko) {
        return (zzeeg) zzelb.zza(zzieo, zzejr, zzeko);
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
        switch (zzeeh.zzel[i - 1]) {
            case 1:
                return new zzeeg();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzieo, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzidz", "zzien", "zziea"});
            case 4:
                return zzieo;
            case 5:
                zzemx<zzeeg> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeeg.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzieo);
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

    public final zzeek zzbbt() {
        zzeek zzeek = this.zzien;
        return zzeek == null ? zzeek.zzbca() : zzeek;
    }
}
