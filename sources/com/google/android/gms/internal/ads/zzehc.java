package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzehc extends zzelb<zzehc, zza> implements zzemq {
    private static volatile zzemx<zzehc> zzek;
    private static final zzehc zziit;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;

    public static final class zza extends zzelb.zzb<zzehc, zza> implements zzemq {
        private zza() {
            super(zzehc.zziit);
        }

        public final zza zzah(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzehc) this.zziqp).zzs(zzejr);
            return this;
        }

        public final zza zzfs(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzehc) this.zziqp).setVersion(0);
            return this;
        }

        /* synthetic */ zza(zzehb zzehb) {
            this();
        }
    }

    static {
        zzehc zzehc = new zzehc();
        zziit = zzehc;
        zzelb.zza(zzehc.class, zzehc);
    }

    private zzehc() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbfm() {
        return (zza) zziit.zzbii();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzs(zzejr zzejr) {
        zzejr.getClass();
        this.zziea = zzejr;
    }

    public static zzehc zzz(zzejr zzejr, zzeko zzeko) {
        return (zzehc) zzelb.zza(zziit, zzejr, zzeko);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzehb.zzel[i - 1]) {
            case 1:
                return new zzehc();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziit, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzidz", "zziea"});
            case 4:
                return zziit;
            case 5:
                zzemx<zzehc> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzehc.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziit);
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
