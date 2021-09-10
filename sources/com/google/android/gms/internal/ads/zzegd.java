package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzegd extends zzelb<zzegd, zzb> implements zzemq {
    private static volatile zzemx<zzegd> zzek;
    private static final zzegd zzigv;
    private String zzigs = "";
    private zzejr zzigt = zzejr.zzilz;
    private int zzigu;

    public enum zza implements zzelg {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);
        
        private static final zzelf<zza> zzes = new zzegf();
        private final int value;

        private zza(int i) {
            this.value = i;
        }

        public static zza zzfj(int i) {
            if (i == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i == 1) {
                return SYMMETRIC;
            }
            if (i == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i != 4) {
                return null;
            }
            return REMOTE;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(zza.class.getName());
            sb.append('@');
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=");
                sb.append(zzv());
            }
            sb.append(" name=");
            sb.append(name());
            sb.append('>');
            return sb.toString();
        }

        @Override // com.google.android.gms.internal.ads.zzelg
        public final int zzv() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    public static final class zzb extends zzelb.zzb<zzegd, zzb> implements zzemq {
        private zzb() {
            super(zzegd.zzigv);
        }

        public final zzb zzag(zzejr zzejr) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegd) this.zziqp).zzaf(zzejr);
            return this;
        }

        public final zzb zzb(zza zza) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegd) this.zziqp).zza((zzegd) zza);
            return this;
        }

        public final zzb zzhu(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegd) this.zziqp).zzht(str);
            return this;
        }

        /* synthetic */ zzb(zzegc zzegc) {
            this();
        }
    }

    static {
        zzegd zzegd = new zzegd();
        zzigv = zzegd;
        zzelb.zza(zzegd.class, zzegd);
    }

    private zzegd() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zza zza2) {
        this.zzigu = zza2.zzv();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzaf(zzejr zzejr) {
        zzejr.getClass();
        this.zzigt = zzejr;
    }

    public static zzb zzbea() {
        return (zzb) zzigv.zzbii();
    }

    public static zzegd zzbeb() {
        return zzigv;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzht(String str) {
        str.getClass();
        this.zzigs = str;
    }

    public final String zzbdx() {
        return this.zzigs;
    }

    public final zzejr zzbdy() {
        return this.zzigt;
    }

    public final zza zzbdz() {
        zza zzfj = zza.zzfj(this.zzigu);
        return zzfj == null ? zza.UNRECOGNIZED : zzfj;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegc.zzel[i - 1]) {
            case 1:
                return new zzegd();
            case 2:
                return new zzb(null);
            case 3:
                return zzelb.zza(zzigv, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzigs", "zzigt", "zzigu"});
            case 4:
                return zzigv;
            case 5:
                zzemx<zzegd> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegd.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzigv);
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
