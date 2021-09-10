package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeew extends zzelb<zzeew, zza> implements zzemq {
    private static volatile zzemx<zzeew> zzek;
    private static final zzeew zziey;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;

    public static final class zza extends zzelb.zzb<zzeew, zza> implements zzemq {
        private zza() {
            super(zzeew.zziey);
        }

        public final zza zzfb(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeew) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzx(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeew) this.zziqp).zzs(zzejr);
            return this;
        }

        /* synthetic */ zza(zzeex zzeex) {
            this();
        }
    }

    static {
        zzeew zzeew = new zzeew();
        zziey = zzeew;
        zzelb.zza(zzeew.class, zzeew);
    }

    private zzeew() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbcl() {
        return (zza) zziey.zzbii();
    }

    public static zzeew zzm(zzejr zzejr, zzeko zzeko) {
        return (zzeew) zzelb.zza(zziey, zzejr, zzeko);
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
        switch (zzeex.zzel[i - 1]) {
            case 1:
                return new zzeew();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziey, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzidz", "zziea"});
            case 4:
                return zziey;
            case 5:
                zzemx<zzeew> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeew.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziey);
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
