package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdtt;
import com.google.android.gms.internal.ads.zzelb;

public final class zzdua extends zzelb<zzdua, zzb> implements zzemq {
    private static volatile zzemx<zzdua> zzek;
    private static final zzdua zzhts;
    private int zzdv;
    private String zzdw = "";
    private int zzhtp;
    private String zzhtq = "";
    private zzdtt zzhtr;

    public enum zza implements zzelg {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);
        
        private static final zzelf<zza> zzes = new zzduc();
        private final int value;

        private zza(int i) {
            this.value = i;
        }

        public static zza zzei(int i) {
            if (i == 0) {
                return EVENT_TYPE_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return BLOCKED_IMPRESSION;
        }

        public static zzeli zzw() {
            return zzdub.zzeu;
        }

        public final String toString() {
            return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzelg
        public final int zzv() {
            return this.value;
        }
    }

    public static final class zzb extends zzelb.zzb<zzdua, zzb> implements zzemq {
        private zzb() {
            super(zzdua.zzhts);
        }

        public final zzb zza(zzdtt.zzb zzb) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdua) this.zziqp).zza((zzdua) ((zzdtt) ((zzelb) zzb.zzbiw())));
            return this;
        }

        public final zzb zzb(zza zza) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdua) this.zziqp).zza((zzdua) zza);
            return this;
        }

        public final zzb zzhi(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdua) this.zziqp).zzj(str);
            return this;
        }

        /* synthetic */ zzb(zzdtz zzdtz) {
            this();
        }
    }

    static {
        zzdua zzdua = new zzdua();
        zzhts = zzdua;
        zzelb.zza(zzdua.class, zzdua);
    }

    private zzdua() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zza zza2) {
        this.zzhtp = zza2.zzv();
        this.zzdv |= 1;
    }

    public static zzb zzayc() {
        return (zzb) zzhts.zzbii();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzj(String str) {
        str.getClass();
        this.zzdv |= 2;
        this.zzdw = str;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zzdtt zzdtt) {
        zzdtt.getClass();
        this.zzhtr = zzdtt;
        this.zzdv |= 8;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzdtz.zzel[i - 1]) {
            case 1:
                return new zzdua();
            case 2:
                return new zzb(null);
            case 3:
                return zzelb.zza(zzhts, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzdv", "zzhtp", zza.zzw(), "zzdw", "zzhtq", "zzhtr"});
            case 4:
                return zzhts;
            case 5:
                zzemx<zzdua> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzdua.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzhts);
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
