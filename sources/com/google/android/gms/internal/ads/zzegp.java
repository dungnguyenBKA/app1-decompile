package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzegp extends zzelb<zzegp, zza> implements zzemq {
    private static volatile zzemx<zzegp> zzek;
    private static final zzegp zziib;
    private int zzidz;
    private zzegs zziia;

    public static final class zza extends zzelb.zzb<zzegp, zza> implements zzemq {
        private zza() {
            super(zzegp.zziib);
        }

        public final zza zzb(zzegs zzegs) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegp) this.zziqp).zza((zzegp) zzegs);
            return this;
        }

        public final zza zzfp(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegp) this.zziqp).setVersion(0);
            return this;
        }

        /* synthetic */ zza(zzegq zzegq) {
            this();
        }
    }

    static {
        zzegp zzegp = new zzegp();
        zziib = zzegp;
        zzelb.zza(zzegp.class, zzegp);
    }

    private zzegp() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zzegs zzegs) {
        zzegs.getClass();
        this.zziia = zzegs;
    }

    public static zza zzbex() {
        return (zza) zziib.zzbii();
    }

    public static zzegp zzv(zzejr zzejr, zzeko zzeko) {
        return (zzegp) zzelb.zza(zziib, zzejr, zzeko);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    public final zzegs zzbew() {
        zzegs zzegs = this.zziia;
        return zzegs == null ? zzegs.zzbfa() : zzegs;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegq.zzel[i - 1]) {
            case 1:
                return new zzegp();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziib, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzidz", "zziia"});
            case 4:
                return zziib;
            case 5:
                zzemx<zzegp> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegp.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziib);
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
