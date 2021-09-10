package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzgv extends zzelb<zzgv, zza> implements zzemq {
    private static final zzgv zzaci;
    private static volatile zzemx<zzgv> zzek;
    private String zzacd = "";
    private String zzace = "";
    private long zzacf;
    private long zzacg;
    private long zzach;
    private int zzdv;

    public static final class zza extends zzelb.zzb<zzgv, zza> implements zzemq {
        private zza() {
            super(zzgv.zzaci);
        }

        public final zza zzav(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzat(str);
            return this;
        }

        public final zza zzaw(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzau(str);
            return this;
        }

        public final zza zzdj(long j) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzdg(j);
            return this;
        }

        public final zza zzdk(long j) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzdh(j);
            return this;
        }

        public final zza zzdl(long j) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzdi(j);
            return this;
        }

        /* synthetic */ zza(zzgu zzgu) {
            this();
        }
    }

    static {
        zzgv zzgv = new zzgv();
        zzaci = zzgv;
        zzelb.zza(zzgv.class, zzgv);
    }

    private zzgv() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzat(String str) {
        str.getClass();
        this.zzdv |= 1;
        this.zzacd = str;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzau(String str) {
        str.getClass();
        this.zzdv |= 2;
        this.zzace = str;
    }

    public static zzgv zzb(zzejr zzejr, zzeko zzeko) {
        return (zzgv) zzelb.zza(zzaci, zzejr, zzeko);
    }

    public static zza zzdl() {
        return (zza) zzaci.zzbii();
    }

    public static zzgv zzdm() {
        return zzaci;
    }

    public static zzgv zzl(zzejr zzejr) {
        return (zzgv) zzelb.zza(zzaci, zzejr);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzgu.zzel[i - 1]) {
            case 1:
                return new zzgv();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzaci, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzdv", "zzacd", "zzace", "zzacf", "zzacg", "zzach"});
            case 4:
                return zzaci;
            case 5:
                zzemx<zzgv> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzgv.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzaci);
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

    public final String zzdg() {
        return this.zzacd;
    }

    public final String zzdh() {
        return this.zzace;
    }

    public final long zzdi() {
        return this.zzacf;
    }

    public final long zzdj() {
        return this.zzacg;
    }

    public final long zzdk() {
        return this.zzach;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzdg(long j) {
        this.zzdv |= 4;
        this.zzacf = j;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzdh(long j) {
        this.zzdv |= 8;
        this.zzacg = j;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzdi(long j) {
        this.zzdv |= 16;
        this.zzach = j;
    }
}
