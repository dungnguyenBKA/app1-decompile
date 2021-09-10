package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import java.util.Collections;
import java.util.List;

public final class zzepa {

    public static final class zza extends zzelb<zza, C0058zza> implements zzemq {
        private static volatile zzemx<zza> zzek;
        private static final zza zzixr;
        private int zzdv;
        private int zzixk;
        private zzb zzixl;
        private zzejr zzixm;
        private zzejr zzixn;
        private boolean zzixo;
        private boolean zzixp;
        private byte zzixq = 2;

        /* renamed from: com.google.android.gms.internal.ads.zzepa$zza$zza  reason: collision with other inner class name */
        public static final class C0058zza extends zzelb.zzb<zza, C0058zza> implements zzemq {
            private C0058zza() {
                super(zza.zzixr);
            }

            /* synthetic */ C0058zza(zzeoz zzeoz) {
                this();
            }
        }

        public static final class zzb extends zzelb<zzb, C0059zza> implements zzemq {
            private static volatile zzemx<zzb> zzek;
            private static final zzb zzixw;
            private int zzdv;
            private String zzixs = "";
            private String zzixt = "";
            private String zzixu = "";
            private int zzixv;

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zza$zzb$zza  reason: collision with other inner class name */
            public static final class C0059zza extends zzelb.zzb<zzb, C0059zza> implements zzemq {
                private C0059zza() {
                    super(zzb.zzixw);
                }

                /* synthetic */ C0059zza(zzeoz zzeoz) {
                    this();
                }
            }

            static {
                zzb zzb = new zzb();
                zzixw = zzb;
                zzelb.zza(zzb.class, zzb);
            }

            private zzb() {
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new C0059zza(null);
                    case 3:
                        return zzelb.zza(zzixw, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003", new Object[]{"zzdv", "zzixs", "zzixt", "zzixu", "zzixv"});
                    case 4:
                        return zzixw;
                    case 5:
                        zzemx<zzb> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zzb.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzixw);
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

        public enum zzc implements zzelg {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);
            
            private static final zzelf<zzc> zzes = new zzepb();
            private final int value;

            private zzc(int i) {
                this.value = i;
            }

            public static zzc zzhy(int i) {
                if (i == 0) {
                    return SAFE;
                }
                if (i == 1) {
                    return DANGEROUS;
                }
                if (i == 2) {
                    return UNKNOWN;
                }
                if (i == 3) {
                    return POTENTIALLY_UNWANTED;
                }
                if (i != 4) {
                    return null;
                }
                return DANGEROUS_HOST;
            }

            public static zzeli zzw() {
                return zzepc.zzeu;
            }

            public final String toString() {
                return "<" + zzc.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        static {
            zza zza = new zza();
            zzixr = zza;
            zzelb.zza(zza.class, zza);
        }

        private zza() {
            zzejr zzejr = zzejr.zzilz;
            this.zzixm = zzejr;
            this.zzixn = zzejr;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            int i2 = 1;
            switch (zzeoz.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0058zza(null);
                case 3:
                    return zzelb.zza(zzixr, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0001\u0001ᔌ\u0000\u0002ဉ\u0001\u0003ည\u0002\u0004ည\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzdv", "zzixk", zzc.zzw(), "zzixl", "zzixm", "zzixn", "zzixo", "zzixp"});
                case 4:
                    return zzixr;
                case 5:
                    zzemx<zza> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zza.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzixr);
                                zzek = zzemx;
                            }
                        }
                    }
                    return zzemx;
                case 6:
                    return Byte.valueOf(this.zzixq);
                case 7:
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zzixq = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class zzb extends zzelb<zzb, C0061zzb> implements zzemq {
        private static volatile zzemx<zzb> zzek;
        private static final zzb zziys;
        private int zzcan;
        private int zzdv;
        private zzejr zzixm = zzejr.zzilz;
        private byte zzixq = 2;
        private String zzixt = "";
        private int zziyd;
        private String zziye = "";
        private String zziyf = "";
        private zza zziyg;
        private zzell<zzh> zziyh = zzelb.zzbin();
        private String zziyi = "";
        private zzf zziyj;
        private boolean zziyk;
        private zzell<String> zziyl = zzelb.zzbin();
        private String zziym = "";
        private boolean zziyn;
        private boolean zziyo;
        private zzi zziyp;
        private zzell<String> zziyq = zzelb.zzbin();
        private zzell<String> zziyr = zzelb.zzbin();

        public static final class zza extends zzelb<zza, C0060zza> implements zzemq {
            private static volatile zzemx<zza> zzek;
            private static final zza zziyu;
            private int zzdv;
            private String zziyt = "";

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zza$zza  reason: collision with other inner class name */
            public static final class C0060zza extends zzelb.zzb<zza, C0060zza> implements zzemq {
                private C0060zza() {
                    super(zza.zziyu);
                }

                public final C0060zza zzih(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzid(str);
                    return this;
                }

                /* synthetic */ C0060zza(zzeoz zzeoz) {
                    this();
                }
            }

            static {
                zza zza = new zza();
                zziyu = zza;
                zzelb.zza(zza.class, zza);
            }

            private zza() {
            }

            public static C0060zza zzblr() {
                return (C0060zza) zziyu.zzbii();
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzid(String str) {
                str.getClass();
                this.zzdv |= 1;
                this.zziyt = str;
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C0060zza(null);
                    case 3:
                        return zzelb.zza(zziyu, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzdv", "zziyt"});
                    case 4:
                        return zziyu;
                    case 5:
                        zzemx<zza> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zza.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zziyu);
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

        /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzb  reason: collision with other inner class name */
        public static final class C0061zzb extends zzelb.zzb<zzb, C0061zzb> implements zzemq {
            private C0061zzb() {
                super(zzb.zziys);
            }

            public final String getUrl() {
                return ((zzb) this.zziqp).getUrl();
            }

            public final C0061zzb zzb(zzg zzg) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza((zzb) zzg);
                return this;
            }

            public final List<zzh> zzblm() {
                return Collections.unmodifiableList(((zzb) this.zziqp).zzblm());
            }

            public final String zzbln() {
                return ((zzb) this.zziqp).zzbln();
            }

            public final C0061zzb zzblt() {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzblo();
                return this;
            }

            public final C0061zzb zzie(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).setUrl(str);
                return this;
            }

            public final C0061zzb zzif(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzic(str);
                return this;
            }

            public final C0061zzb zzig(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzdv(str);
                return this;
            }

            public final C0061zzb zzo(Iterable<String> iterable) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzm(iterable);
                return this;
            }

            public final C0061zzb zzp(Iterable<String> iterable) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzn(iterable);
                return this;
            }

            /* synthetic */ C0061zzb(zzeoz zzeoz) {
                this();
            }

            public final C0061zzb zzb(zza zza) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza((zzb) zza);
                return this;
            }

            public final C0061zzb zzb(zzh zzh) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza((zzb) zzh);
                return this;
            }

            public final C0061zzb zzb(zzf zzf) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza((zzb) zzf);
                return this;
            }

            public final C0061zzb zzb(zzi zzi) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza((zzb) zzi);
                return this;
            }
        }

        public static final class zzc extends zzelb<zzc, zza> implements zzemq {
            private static volatile zzemx<zzc> zzek;
            private static final zzc zziyw;
            private int zzdv;
            private zzejr zzigt;
            private byte zzixq = 2;
            private zzejr zziyv;

            public static final class zza extends zzelb.zzb<zzc, zza> implements zzemq {
                private zza() {
                    super(zzc.zziyw);
                }

                public final zza zzap(zzejr zzejr) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzc) this.zziqp).zzao(zzejr);
                    return this;
                }

                public final zza zzaq(zzejr zzejr) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzc) this.zziqp).zzaf(zzejr);
                    return this;
                }

                /* synthetic */ zza(zzeoz zzeoz) {
                    this();
                }
            }

            static {
                zzc zzc = new zzc();
                zziyw = zzc;
                zzelb.zza(zzc.class, zzc);
            }

            private zzc() {
                zzejr zzejr = zzejr.zzilz;
                this.zziyv = zzejr;
                this.zzigt = zzejr;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzaf(zzejr zzejr) {
                zzejr.getClass();
                this.zzdv |= 2;
                this.zzigt = zzejr;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzao(zzejr zzejr) {
                zzejr.getClass();
                this.zzdv |= 1;
                this.zziyv = zzejr;
            }

            public static zza zzblu() {
                return (zza) zziyw.zzbii();
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                int i2 = 1;
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzc();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzelb.zza(zziyw, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zzdv", "zziyv", "zzigt"});
                    case 4:
                        return zziyw;
                    case 5:
                        zzemx<zzc> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zzc.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zziyw);
                                    zzek = zzemx;
                                }
                            }
                        }
                        return zzemx;
                    case 6:
                        return Byte.valueOf(this.zzixq);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzixq = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        public static final class zze extends zzelb<zze, C0065zzb> implements zzemq {
            private static volatile zzemx<zze> zzek;
            private static final zze zzizj;
            private int zzdv;
            private byte zzixq = 2;
            private zzell<zzc> zziyy = zzelb.zzbin();
            private zzejr zziyz;
            private zzejr zziza;
            private int zzizb;
            private zza zzizh;
            private zzejr zzizi;

            public static final class zza extends zzelb<zza, C0064zza> implements zzemq {
                private static volatile zzemx<zza> zzek;
                private static final zza zzizm;
                private int zzdv;
                private zzejr zzizf;
                private int zzizk;
                private zzejr zzizl;

                /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zze$zza$zza  reason: collision with other inner class name */
                public static final class C0064zza extends zzelb.zzb<zza, C0064zza> implements zzemq {
                    private C0064zza() {
                        super(zza.zzizm);
                    }

                    /* synthetic */ C0064zza(zzeoz zzeoz) {
                        this();
                    }
                }

                static {
                    zza zza = new zza();
                    zzizm = zza;
                    zzelb.zza(zza.class, zza);
                }

                private zza() {
                    zzejr zzejr = zzejr.zzilz;
                    this.zzizl = zzejr;
                    this.zzizf = zzejr;
                }

                /* access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.ads.zzelb
                public final Object zza(int i, Object obj, Object obj2) {
                    switch (zzeoz.zzel[i - 1]) {
                        case 1:
                            return new zza();
                        case 2:
                            return new C0064zza(null);
                        case 3:
                            return zzelb.zza(zzizm, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzizk", "zzizl", "zzizf"});
                        case 4:
                            return zzizm;
                        case 5:
                            zzemx<zza> zzemx = zzek;
                            if (zzemx == null) {
                                synchronized (zza.class) {
                                    zzemx = zzek;
                                    if (zzemx == null) {
                                        zzemx = new zzelb.zza<>(zzizm);
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

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zze$zzb  reason: collision with other inner class name */
            public static final class C0065zzb extends zzelb.zzb<zze, C0065zzb> implements zzemq {
                private C0065zzb() {
                    super(zze.zzizj);
                }

                /* synthetic */ C0065zzb(zzeoz zzeoz) {
                    this();
                }
            }

            static {
                zze zze = new zze();
                zzizj = zze;
                zzelb.zza(zze.class, zze);
            }

            private zze() {
                zzejr zzejr = zzejr.zzilz;
                this.zziyz = zzejr;
                this.zziza = zzejr;
                this.zzizi = zzejr;
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                int i2 = 1;
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C0065zzb(null);
                    case 3:
                        return zzelb.zza(zzizj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzdv", "zzizh", "zziyy", zzc.class, "zziyz", "zziza", "zzizb", "zzizi"});
                    case 4:
                        return zzizj;
                    case 5:
                        zzemx<zze> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zze.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzizj);
                                    zzek = zzemx;
                                }
                            }
                        }
                        return zzemx;
                    case 6:
                        return Byte.valueOf(this.zzixq);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzixq = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        public enum zzg implements zzelg {
            UNKNOWN(0),
            URL_PHISHING(1),
            URL_MALWARE(2),
            URL_UNWANTED(3),
            CLIENT_SIDE_PHISHING_URL(4),
            CLIENT_SIDE_MALWARE_URL(5),
            DANGEROUS_DOWNLOAD_RECOVERY(6),
            DANGEROUS_DOWNLOAD_WARNING(7),
            OCTAGON_AD(8),
            OCTAGON_AD_SB_MATCH(9);
            
            private static final zzelf<zzg> zzes = new zzepf();
            private final int value;

            private zzg(int i) {
                this.value = i;
            }

            public static zzg zzia(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN;
                    case 1:
                        return URL_PHISHING;
                    case 2:
                        return URL_MALWARE;
                    case 3:
                        return URL_UNWANTED;
                    case 4:
                        return CLIENT_SIDE_PHISHING_URL;
                    case 5:
                        return CLIENT_SIDE_MALWARE_URL;
                    case 6:
                        return DANGEROUS_DOWNLOAD_RECOVERY;
                    case 7:
                        return DANGEROUS_DOWNLOAD_WARNING;
                    case 8:
                        return OCTAGON_AD;
                    case 9:
                        return OCTAGON_AD_SB_MATCH;
                    default:
                        return null;
                }
            }

            public static zzeli zzw() {
                return zzepg.zzeu;
            }

            public final String toString() {
                return "<" + zzg.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        public static final class zzi extends zzelb<zzi, zza> implements zzemq {
            private static volatile zzemx<zzi> zzek;
            private static final zzi zzjav;
            private int zzdv;
            private String zzjas = "";
            private long zzjat;
            private boolean zzjau;

            public static final class zza extends zzelb.zzb<zzi, zza> implements zzemq {
                private zza() {
                    super(zzi.zzjav);
                }

                public final zza zzbv(boolean z) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzi) this.zziqp).zzbw(z);
                    return this;
                }

                public final zza zzfs(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzi) this.zziqp).zzft(j);
                    return this;
                }

                public final zza zzim(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzi) this.zziqp).zzin(str);
                    return this;
                }

                /* synthetic */ zza(zzeoz zzeoz) {
                    this();
                }
            }

            static {
                zzi zzi = new zzi();
                zzjav = zzi;
                zzelb.zza(zzi.class, zzi);
            }

            private zzi() {
            }

            public static zza zzbmg() {
                return (zza) zzjav.zzbii();
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzbw(boolean z) {
                this.zzdv |= 4;
                this.zzjau = z;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzft(long j) {
                this.zzdv |= 2;
                this.zzjat = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzin(String str) {
                str.getClass();
                this.zzdv |= 1;
                this.zzjas = str;
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzi();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzelb.zza(zzjav, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzdv", "zzjas", "zzjat", "zzjau"});
                    case 4:
                        return zzjav;
                    case 5:
                        zzemx<zzi> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zzi.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzjav);
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

        static {
            zzb zzb = new zzb();
            zziys = zzb;
            zzelb.zza(zzb.class, zzb);
        }

        private zzb() {
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void setUrl(String str) {
            str.getClass();
            this.zzdv |= 4;
            this.zzixt = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzg zzg2) {
            this.zzcan = zzg2.zzv();
            this.zzdv |= 1;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzblo() {
            this.zzdv &= -65;
            this.zziyi = zziys.zziyi;
        }

        public static C0061zzb zzblp() {
            return (C0061zzb) zziys.zzbii();
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzdv(String str) {
            str.getClass();
            this.zzdv |= 64;
            this.zziyi = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzic(String str) {
            str.getClass();
            this.zzdv |= 8;
            this.zziye = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzm(Iterable<String> iterable) {
            zzell<String> zzell = this.zziyq;
            if (!zzell.zzbge()) {
                this.zziyq = zzelb.zza(zzell);
            }
            zzejh.zza(iterable, this.zziyq);
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzn(Iterable<String> iterable) {
            zzell<String> zzell = this.zziyr;
            if (!zzell.zzbge()) {
                this.zziyr = zzelb.zza(zzell);
            }
            zzejh.zza(iterable, this.zziyr);
        }

        public final String getUrl() {
            return this.zzixt;
        }

        public final List<zzh> zzblm() {
            return this.zziyh;
        }

        public final String zzbln() {
            return this.zziyi;
        }

        public static final class zzf extends zzelb<zzf, C0066zzb> implements zzemq {
            private static volatile zzemx<zzf> zzek;
            private static final zzf zzizp;
            private int zzcan;
            private int zzdv;
            private String zzizn = "";
            private zzejr zzizo = zzejr.zzilz;

            public enum zza implements zzelg {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);
                
                private static final zzelf<zza> zzes = new zzepe();
                private final int value;

                private zza(int i) {
                    this.value = i;
                }

                public static zza zzhz(int i) {
                    if (i == 0) {
                        return TYPE_UNKNOWN;
                    }
                    if (i != 1) {
                        return null;
                    }
                    return TYPE_CREATIVE;
                }

                public static zzeli zzw() {
                    return zzepd.zzeu;
                }

                public final String toString() {
                    return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
                }

                @Override // com.google.android.gms.internal.ads.zzelg
                public final int zzv() {
                    return this.value;
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzf$zzb  reason: collision with other inner class name */
            public static final class C0066zzb extends zzelb.zzb<zzf, C0066zzb> implements zzemq {
                private C0066zzb() {
                    super(zzf.zzizp);
                }

                public final C0066zzb zzas(zzejr zzejr) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzar(zzejr);
                    return this;
                }

                public final C0066zzb zzb(zza zza) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zza((zzf) zza);
                    return this;
                }

                public final C0066zzb zzii(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).setMimeType(str);
                    return this;
                }

                /* synthetic */ C0066zzb(zzeoz zzeoz) {
                    this();
                }
            }

            static {
                zzf zzf = new zzf();
                zzizp = zzf;
                zzelb.zza(zzf.class, zzf);
            }

            private zzf() {
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void setMimeType(String str) {
                str.getClass();
                this.zzdv |= 2;
                this.zzizn = str;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zza(zza zza2) {
                this.zzcan = zza2.zzv();
                this.zzdv |= 1;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzar(zzejr zzejr) {
                zzejr.getClass();
                this.zzdv |= 4;
                this.zzizo = zzejr;
            }

            public static C0066zzb zzbmb() {
                return (C0066zzb) zzizp.zzbii();
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new C0066zzb(null);
                    case 3:
                        return zzelb.zza(zzizp, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzcan", zza.zzw(), "zzizn", "zzizo"});
                    case 4:
                        return zzizp;
                    case 5:
                        zzemx<zzf> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zzf.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzizp);
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

        public static final class zzh extends zzelb<zzh, C0067zzb> implements zzemq {
            private static volatile zzemx<zzh> zzek;
            private static final zzh zzjam;
            private int zzdv;
            private byte zzixq = 2;
            private String zzixt = "";
            private int zzjae;
            private zzd zzjaf;
            private zze zzjag;
            private int zzjah;
            private zzelh zzjai = zzelb.zzbil();
            private String zzjaj = "";
            private int zzjak;
            private zzell<String> zzjal = zzelb.zzbin();

            public enum zza implements zzelg {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);
                
                private static final zzelf<zza> zzes = new zzeph();
                private final int value;

                private zza(int i) {
                    this.value = i;
                }

                public static zza zzib(int i) {
                    if (i == 0) {
                        return AD_RESOURCE_UNKNOWN;
                    }
                    if (i == 1) {
                        return AD_RESOURCE_CREATIVE;
                    }
                    if (i == 2) {
                        return AD_RESOURCE_POST_CLICK;
                    }
                    if (i != 3) {
                        return null;
                    }
                    return AD_RESOURCE_AUTO_CLICK_DESTINATION;
                }

                public static zzeli zzw() {
                    return zzepi.zzeu;
                }

                public final String toString() {
                    return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
                }

                @Override // com.google.android.gms.internal.ads.zzelg
                public final int zzv() {
                    return this.value;
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzh$zzb  reason: collision with other inner class name */
            public static final class C0067zzb extends zzelb.zzb<zzh, C0067zzb> implements zzemq {
                private C0067zzb() {
                    super(zzh.zzjam);
                }

                public final C0067zzb zzb(zzd zzd) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).zza((zzh) zzd);
                    return this;
                }

                public final C0067zzb zzic(int i) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).setId(i);
                    return this;
                }

                public final C0067zzb zzik(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).setUrl(str);
                    return this;
                }

                public final C0067zzb zzil(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).zzij(str);
                    return this;
                }

                /* synthetic */ C0067zzb(zzeoz zzeoz) {
                    this();
                }

                public final C0067zzb zzb(zza zza) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).zza((zzh) zza);
                    return this;
                }
            }

            static {
                zzh zzh = new zzh();
                zzjam = zzh;
                zzelb.zza(zzh.class, zzh);
            }

            private zzh() {
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void setId(int i) {
                this.zzdv |= 1;
                this.zzjae = i;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void setUrl(String str) {
                str.getClass();
                this.zzdv |= 2;
                this.zzixt = str;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zza(zzd zzd) {
                zzd.getClass();
                this.zzjaf = zzd;
                this.zzdv |= 4;
            }

            public static C0067zzb zzbme() {
                return (C0067zzb) zzjam.zzbii();
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzij(String str) {
                str.getClass();
                zzell<String> zzell = this.zzjal;
                if (!zzell.zzbge()) {
                    this.zzjal = zzelb.zza(zzell);
                }
                this.zzjal.add(str);
            }

            public final String getUrl() {
                return this.zzixt;
            }

            public final int zzbmd() {
                return this.zzjal.size();
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zza(zza zza2) {
                this.zzjak = zza2.zzv();
                this.zzdv |= 64;
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                int i2 = 1;
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzh();
                    case 2:
                        return new C0067zzb(null);
                    case 3:
                        return zzelb.zza(zzjam, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzdv", "zzjae", "zzixt", "zzjaf", "zzjag", "zzjah", "zzjai", "zzjaj", "zzjak", zza.zzw(), "zzjal"});
                    case 4:
                        return zzjam;
                    case 5:
                        zzemx<zzh> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zzh.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzjam);
                                    zzek = zzemx;
                                }
                            }
                        }
                        return zzemx;
                    case 6:
                        return Byte.valueOf(this.zzixq);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzixq = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zza zza2) {
            zza2.getClass();
            this.zziyg = zza2;
            this.zzdv |= 32;
        }

        public static final class zzd extends zzelb<zzd, C0063zzb> implements zzemq {
            private static volatile zzemx<zzd> zzek;
            private static final zzd zzizc;
            private int zzdv;
            private byte zzixq = 2;
            private zza zziyx;
            private zzell<zzc> zziyy = zzelb.zzbin();
            private zzejr zziyz;
            private zzejr zziza;
            private int zzizb;

            public static final class zza extends zzelb<zza, C0062zza> implements zzemq {
                private static volatile zzemx<zza> zzek;
                private static final zza zzizg;
                private int zzdv;
                private zzejr zzizd;
                private zzejr zzize;
                private zzejr zzizf;

                /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzd$zza$zza  reason: collision with other inner class name */
                public static final class C0062zza extends zzelb.zzb<zza, C0062zza> implements zzemq {
                    private C0062zza() {
                        super(zza.zzizg);
                    }

                    /* synthetic */ C0062zza(zzeoz zzeoz) {
                        this();
                    }
                }

                static {
                    zza zza = new zza();
                    zzizg = zza;
                    zzelb.zza(zza.class, zza);
                }

                private zza() {
                    zzejr zzejr = zzejr.zzilz;
                    this.zzizd = zzejr;
                    this.zzize = zzejr;
                    this.zzizf = zzejr;
                }

                /* access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.ads.zzelb
                public final Object zza(int i, Object obj, Object obj2) {
                    switch (zzeoz.zzel[i - 1]) {
                        case 1:
                            return new zza();
                        case 2:
                            return new C0062zza(null);
                        case 3:
                            return zzelb.zza(zzizg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzizd", "zzize", "zzizf"});
                        case 4:
                            return zzizg;
                        case 5:
                            zzemx<zza> zzemx = zzek;
                            if (zzemx == null) {
                                synchronized (zza.class) {
                                    zzemx = zzek;
                                    if (zzemx == null) {
                                        zzemx = new zzelb.zza<>(zzizg);
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

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzd$zzb  reason: collision with other inner class name */
            public static final class C0063zzb extends zzelb.zzb<zzd, C0063zzb> implements zzemq {
                private C0063zzb() {
                    super(zzd.zzizc);
                }

                public final C0063zzb zzb(zzc zzc) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzd) this.zziqp).zza((zzd) zzc);
                    return this;
                }

                /* synthetic */ C0063zzb(zzeoz zzeoz) {
                    this();
                }
            }

            static {
                zzd zzd = new zzd();
                zzizc = zzd;
                zzelb.zza(zzd.class, zzd);
            }

            private zzd() {
                zzejr zzejr = zzejr.zzilz;
                this.zziyz = zzejr;
                this.zziza = zzejr;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zza(zzc zzc) {
                zzc.getClass();
                zzell<zzc> zzell = this.zziyy;
                if (!zzell.zzbge()) {
                    this.zziyy = zzelb.zza(zzell);
                }
                this.zziyy.add(zzc);
            }

            public static C0063zzb zzblw() {
                return (C0063zzb) zzizc.zzbii();
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                int i2 = 1;
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new C0063zzb(null);
                    case 3:
                        return zzelb.zza(zzizc, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzdv", "zziyx", "zziyy", zzc.class, "zziyz", "zziza", "zzizb"});
                    case 4:
                        return zzizc;
                    case 5:
                        zzemx<zzd> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zzd.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzizc);
                                    zzek = zzemx;
                                }
                            }
                        }
                        return zzemx;
                    case 6:
                        return Byte.valueOf(this.zzixq);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzixq = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzh zzh2) {
            zzh2.getClass();
            zzell<zzh> zzell = this.zziyh;
            if (!zzell.zzbge()) {
                this.zziyh = zzelb.zza(zzell);
            }
            this.zziyh.add(zzh2);
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzf zzf2) {
            zzf2.getClass();
            this.zziyj = zzf2;
            this.zzdv |= 128;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzi zzi2) {
            zzi2.getClass();
            this.zziyp = zzi2;
            this.zzdv |= 8192;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            int i2 = 1;
            switch (zzeoz.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C0061zzb(null);
                case 3:
                    return zzelb.zza(zziys, "\u0001\u0012\u0000\u0001\u0001\u0015\u0012\u0000\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ\u0000\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzdv", "zzixt", "zziye", "zziyf", "zziyh", zzh.class, "zziyk", "zziyl", "zziym", "zziyn", "zziyo", "zzcan", zzg.zzw(), "zziyd", zza.zzc.zzw(), "zziyg", "zziyi", "zziyj", "zzixm", "zziyp", "zziyq", "zziyr"});
                case 4:
                    return zziys;
                case 5:
                    zzemx<zzb> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zzb.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zziys);
                                zzek = zzemx;
                            }
                        }
                    }
                    return zzemx;
                case 6:
                    return Byte.valueOf(this.zzixq);
                case 7:
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zzixq = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
