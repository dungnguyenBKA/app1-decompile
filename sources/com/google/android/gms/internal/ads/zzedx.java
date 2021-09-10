package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzedx extends zzelb<zzedx, zza> implements zzemq {
    private static volatile zzemx<zzedx> zzek;
    private static final zzedx zziec;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzeeb zzieb;

    public static final class zza extends zzelb.zzb<zzedx, zza> implements zzemq {
        private zza() {
            super(zzedx.zziec);
        }

        public final zza zzd(zzeeb zzeeb) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzedx) this.zziqp).zzc(zzeeb);
            return this;
        }

        public final zza zzew(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzedx) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzt(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzedx) this.zziqp).zzs(zzejr);
            return this;
        }

        /* synthetic */ zza(zzedw zzedw) {
            this();
        }
    }

    static {
        zzedx zzedx = new zzedx();
        zziec = zzedx;
        zzelb.zza(zzedx.class, zzedx);
    }

    private zzedx() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = 0;
    }

    public static zza zzbbg() {
        return (zza) zziec.zzbii();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzc(zzeeb zzeeb) {
        zzeeb.getClass();
        this.zzieb = zzeeb;
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
        switch (zzedw.zzel[i - 1]) {
            case 1:
                return new zzedx();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziec, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzidz", "zziea", "zzieb"});
            case 4:
                return zziec;
            case 5:
                zzemx<zzedx> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzedx.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziec);
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

    public final zzeeb zzbbf() {
        zzeeb zzeeb = this.zzieb;
        return zzeeb == null ? zzeeb.zzbbk() : zzeeb;
    }

    public static zzedx zzc(zzejr zzejr, zzeko zzeko) {
        return (zzedx) zzelb.zza(zziec, zzejr, zzeko);
    }
}
