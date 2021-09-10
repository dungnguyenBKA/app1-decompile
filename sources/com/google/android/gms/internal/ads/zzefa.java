package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzefa extends zzelb<zzefa, zza> implements zzemq {
    private static volatile zzemx<zzefa> zzek;
    private static final zzefa zzifa;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;

    public static final class zza extends zzelb.zzb<zzefa, zza> implements zzemq {
        private zza() {
            super(zzefa.zzifa);
        }

        public final zza zzfc(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefa) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzy(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefa) this.zziqp).zzs(zzejr);
            return this;
        }

        /* synthetic */ zza(zzefb zzefb) {
            this();
        }
    }

    static {
        zzefa zzefa = new zzefa();
        zzifa = zzefa;
        zzelb.zza(zzefa.class, zzefa);
    }

    private zzefa() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbco() {
        return (zza) zzifa.zzbii();
    }

    public static zzefa zzo(zzejr zzejr, zzeko zzeko) {
        return (zzefa) zzelb.zza(zzifa, zzejr, zzeko);
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
        switch (zzefb.zzel[i - 1]) {
            case 1:
                return new zzefa();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzifa, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzidz", "zziea"});
            case 4:
                return zzifa;
            case 5:
                zzemx<zzefa> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzefa.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzifa);
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
