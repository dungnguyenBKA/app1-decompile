package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzcb {

    public static final class zza extends zzelb<zza, C0053zza> implements zzemq {
        private static volatile zzemx<zza> zzek;
        private static final zza zzex;
        private int zzdv;
        private zzb zzev;
        private zzc zzew;

        /* renamed from: com.google.android.gms.internal.ads.zzcb$zza$zza  reason: collision with other inner class name */
        public static final class C0053zza extends zzelb.zzb<zza, C0053zza> implements zzemq {
            private C0053zza() {
                super(zza.zzex);
            }

            /* synthetic */ C0053zza(zzca zzca) {
                this();
            }
        }

        static {
            zza zza = new zza();
            zzex = zza;
            zzelb.zza(zza.class, zza);
        }

        private zza() {
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzca.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0053zza(null);
                case 3:
                    return zzelb.zza(zzex, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzdv", "zzev", "zzew"});
                case 4:
                    return zzex;
                case 5:
                    zzemx<zza> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zza.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzex);
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

        public final zzc zzaa() {
            zzc zzc = this.zzew;
            return zzc == null ? zzc.zzag() : zzc;
        }

        public final boolean zzx() {
            return (this.zzdv & 1) != 0;
        }

        public final zzb zzy() {
            zzb zzb = this.zzev;
            return zzb == null ? zzb.zzad() : zzb;
        }

        public final boolean zzz() {
            return (this.zzdv & 2) != 0;
        }
    }

    public static final class zzb extends zzelb<zzb, zza> implements zzemq {
        private static volatile zzemx<zzb> zzek;
        private static final zzb zzez;
        private int zzdv;
        private int zzey = 2;

        public static final class zza extends zzelb.zzb<zzb, zza> implements zzemq {
            private zza() {
                super(zzb.zzez);
            }

            /* synthetic */ zza(zzca zzca) {
                this();
            }
        }

        static {
            zzb zzb = new zzb();
            zzez = zzb;
            zzelb.zza(zzb.class, zzb);
        }

        private zzb() {
        }

        public static zzb zzad() {
            return zzez;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzca.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzelb.zza(zzez, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001bဌ\u0000", new Object[]{"zzdv", "zzey", zzcd.zzw()});
                case 4:
                    return zzez;
                case 5:
                    zzemx<zzb> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zzb.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzez);
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

        public final zzcd zzac() {
            zzcd zzj = zzcd.zzj(this.zzey);
            return zzj == null ? zzcd.ENUM_SIGNAL_SOURCE_ADSHIELD : zzj;
        }
    }

    public static final class zzc extends zzelb<zzc, zza> implements zzemq {
        private static volatile zzemx<zzc> zzek;
        private static final zzc zzfm;
        private int zzdv;
        private String zzfg = "";
        private String zzfh = "";
        private String zzfi = "";
        private String zzfj = "";
        private String zzfk = "";
        private String zzfl = "";

        public static final class zza extends zzelb.zzb<zzc, zza> implements zzemq {
            private zza() {
                super(zzc.zzfm);
            }

            /* synthetic */ zza(zzca zzca) {
                this();
            }
        }

        static {
            zzc zzc = new zzc();
            zzfm = zzc;
            zzelb.zza(zzc.class, zzc);
        }

        private zzc() {
        }

        public static zzc zzag() {
            return zzfm;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzca.zzel[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzelb.zza(zzfm, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzdv", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzfl"});
                case 4:
                    return zzfm;
                case 5:
                    zzemx<zzc> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zzc.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzfm);
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

        public final String zzaf() {
            return this.zzfg;
        }
    }
}
