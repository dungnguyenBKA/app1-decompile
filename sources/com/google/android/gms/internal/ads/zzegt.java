package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzegt extends zzelb<zzegt, zza> implements zzemq {
    private static volatile zzemx<zzegt> zzek;
    private static final zzegt zziif;
    private int zzidz;
    private zzegw zziie;

    public static final class zza extends zzelb.zzb<zzegt, zza> implements zzemq {
        private zza() {
            super(zzegt.zziif);
        }

        public final zza zzb(zzegw zzegw) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegt) this.zziqp).zza((zzegt) zzegw);
            return this;
        }

        public final zza zzfq(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegt) this.zziqp).setVersion(0);
            return this;
        }

        /* synthetic */ zza(zzegu zzegu) {
            this();
        }
    }

    static {
        zzegt zzegt = new zzegt();
        zziif = zzegt;
        zzelb.zza(zzegt.class, zzegt);
    }

    private zzegt() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zzegw zzegw) {
        zzegw.getClass();
        this.zziie = zzegw;
    }

    public static zza zzbfd() {
        return (zza) zziif.zzbii();
    }

    public static zzegt zzx(zzejr zzejr, zzeko zzeko) {
        return (zzegt) zzelb.zza(zziif, zzejr, zzeko);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    public final zzegw zzbfc() {
        zzegw zzegw = this.zziie;
        return zzegw == null ? zzegw.zzbfh() : zzegw;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegu.zzel[i - 1]) {
            case 1:
                return new zzegt();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziif, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzidz", "zziie"});
            case 4:
                return zziif;
            case 5:
                zzemx<zzegt> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegt.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziif);
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
