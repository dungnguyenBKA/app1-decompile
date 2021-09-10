package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzego extends zzelb<zzego, zzb> implements zzemq {
    private static volatile zzemx<zzego> zzek;
    private static final zzego zzihy;
    private int zzihq;
    private zzell<zza> zzihx = zzelb.zzbin();

    public static final class zza extends zzelb<zza, C0057zza> implements zzemq {
        private static volatile zzemx<zza> zzek;
        private static final zza zzihz;
        private String zzigs = "";
        private int zzihj;
        private int zzihu;
        private int zzihv;

        /* renamed from: com.google.android.gms.internal.ads.zzego$zza$zza  reason: collision with other inner class name */
        public static final class C0057zza extends zzelb.zzb<zza, C0057zza> implements zzemq {
            private C0057zza() {
                super(zza.zzihz);
            }

            public final C0057zza zzb(zzege zzege) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zza) zzege);
                return this;
            }

            public final C0057zza zzfo(int i) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzfm(i);
                return this;
            }

            public final C0057zza zzhv(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzht(str);
                return this;
            }

            /* synthetic */ C0057zza(zzegn zzegn) {
                this();
            }

            public final C0057zza zzb(zzegx zzegx) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zza) zzegx);
                return this;
            }
        }

        static {
            zza zza = new zza();
            zzihz = zza;
            zzelb.zza(zza.class, zza);
        }

        private zza() {
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzege zzege) {
            this.zzihu = zzege.zzv();
        }

        public static C0057zza zzbeu() {
            return (C0057zza) zzihz.zzbii();
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzfm(int i) {
            this.zzihv = i;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzht(String str) {
            str.getClass();
            this.zzigs = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzegx zzegx) {
            this.zzihj = zzegx.zzv();
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzegn.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0057zza(null);
                case 3:
                    return zzelb.zza(zzihz, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzigs", "zzihu", "zzihv", "zzihj"});
                case 4:
                    return zzihz;
                case 5:
                    zzemx<zza> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zza.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzihz);
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

    public static final class zzb extends zzelb.zzb<zzego, zzb> implements zzemq {
        private zzb() {
            super(zzego.zzihy);
        }

        public final zzb zzb(zza zza) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzego) this.zziqp).zza((zzego) zza);
            return this;
        }

        public final zzb zzfn(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzego) this.zziqp).zzfl(i);
            return this;
        }

        /* synthetic */ zzb(zzegn zzegn) {
            this();
        }
    }

    static {
        zzego zzego = new zzego();
        zzihy = zzego;
        zzelb.zza(zzego.class, zzego);
    }

    private zzego() {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zza zza2) {
        zza2.getClass();
        zzell<zza> zzell = this.zzihx;
        if (!zzell.zzbge()) {
            this.zzihx = zzelb.zza(zzell);
        }
        this.zzihx.add(zza2);
    }

    public static zzb zzbes() {
        return (zzb) zzihy.zzbii();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzfl(int i) {
        this.zzihq = i;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegn.zzel[i - 1]) {
            case 1:
                return new zzego();
            case 2:
                return new zzb(null);
            case 3:
                return zzelb.zza(zzihy, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzihq", "zzihx", zza.class});
            case 4:
                return zzihy;
            case 5:
                zzemx<zzego> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzego.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzihy);
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
