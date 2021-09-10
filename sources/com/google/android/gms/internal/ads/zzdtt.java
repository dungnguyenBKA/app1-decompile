package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzdtt extends zzelb<zzdtt, zzb> implements zzemq {
    private static volatile zzemx<zzdtt> zzek;
    private static final zzelj<Integer, zza> zzhth = new zzdtw();
    private static final zzdtt zzhtl;
    private int zzdv;
    private zzelh zzhtg = zzelb.zzbil();
    private String zzhti = "";
    private String zzhtj = "";
    private String zzhtk = "";

    public enum zza implements zzelg {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);
        
        private static final zzelf<zza> zzes = new zzdtx();
        private final int value;

        private zza(int i) {
            this.value = i;
        }

        public static zza zzeh(int i) {
            if (i == 1) {
                return BLOCKED_REASON_UNKNOWN;
            }
            if (i != 2) {
                return null;
            }
            return BLOCKED_REASON_BACKGROUND;
        }

        public static zzeli zzw() {
            return zzdty.zzeu;
        }

        public final String toString() {
            return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzelg
        public final int zzv() {
            return this.value;
        }
    }

    public static final class zzb extends zzelb.zzb<zzdtt, zzb> implements zzemq {
        private zzb() {
            super(zzdtt.zzhtl);
        }

        public final zzb zzb(zza zza) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdtt) this.zziqp).zza((zzdtt) zza);
            return this;
        }

        public final zzb zzhh(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdtt) this.zziqp).zzhg(str);
            return this;
        }

        /* synthetic */ zzb(zzdtw zzdtw) {
            this();
        }
    }

    static {
        zzdtt zzdtt = new zzdtt();
        zzhtl = zzdtt;
        zzelb.zza(zzdtt.class, zzdtt);
    }

    private zzdtt() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zza zza2) {
        zza2.getClass();
        zzelh zzelh = this.zzhtg;
        if (!zzelh.zzbge()) {
            this.zzhtg = zzelb.zza(zzelh);
        }
        this.zzhtg.zzhh(zza2.zzv());
    }

    public static zzb zzaya() {
        return (zzb) zzhtl.zzbii();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzhg(String str) {
        str.getClass();
        this.zzdv |= 1;
        this.zzhti = str;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzdtv.zzel[i - 1]) {
            case 1:
                return new zzdtt();
            case 2:
                return new zzb(null);
            case 3:
                return zzelb.zza(zzhtl, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzdv", "zzhtg", zza.zzw(), "zzhti", "zzhtj", "zzhtk"});
            case 4:
                return zzhtl;
            case 5:
                zzemx<zzdtt> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzdtt.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzhtl);
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
