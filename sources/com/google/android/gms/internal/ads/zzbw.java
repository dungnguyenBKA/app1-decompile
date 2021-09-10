package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzbw {

    public static final class zza extends zzelb<zza, zzb> implements zzemq {
        private static final zza zzej;
        private static volatile zzemx<zza> zzek;
        private int zzdv;
        private String zzdw = "";
        private long zzdx;
        private String zzdy = "";
        private String zzdz = "";
        private String zzea = "";
        private long zzeb;
        private long zzec;
        private String zzed = "";
        private long zzee;
        private String zzef = "";
        private String zzeg = "";
        private zzell<C0051zza> zzeh = zzelb.zzbin();
        private int zzei;

        /* renamed from: com.google.android.gms.internal.ads.zzbw$zza$zza  reason: collision with other inner class name */
        public static final class C0051zza extends zzelb<C0051zza, C0052zza> implements zzemq {
            private static volatile zzemx<C0051zza> zzek;
            private static final C0051zza zzeo;
            private int zzdv;
            private String zzem = "";
            private String zzen = "";

            /* renamed from: com.google.android.gms.internal.ads.zzbw$zza$zza$zza  reason: collision with other inner class name */
            public static final class C0052zza extends zzelb.zzb<C0051zza, C0052zza> implements zzemq {
                private C0052zza() {
                    super(C0051zza.zzeo);
                }

                /* synthetic */ C0052zza(zzbx zzbx) {
                    this();
                }
            }

            static {
                C0051zza zza = new C0051zza();
                zzeo = zza;
                zzelb.zza(C0051zza.class, zza);
            }

            private C0051zza() {
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzbx.zzel[i - 1]) {
                    case 1:
                        return new C0051zza();
                    case 2:
                        return new C0052zza(null);
                    case 3:
                        return zzelb.zza(zzeo, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzdv", "zzem", "zzen"});
                    case 4:
                        return zzeo;
                    case 5:
                        zzemx<C0051zza> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (C0051zza.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzeo);
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

        public static final class zzb extends zzelb.zzb<zza, zzb> implements zzemq {
            private zzb() {
                super(zza.zzej);
            }

            public final zzb zzb(zzc zzc) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zza) zzc);
                return this;
            }

            public final zzb zzd(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzc(j);
                return this;
            }

            public final zzb zzo(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzj(str);
                return this;
            }

            public final zzb zzp(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzk(str);
                return this;
            }

            public final zzb zzq(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzl(str);
                return this;
            }

            public final zzb zzr(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzm(str);
                return this;
            }

            public final zzb zzs(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzn(str);
                return this;
            }

            /* synthetic */ zzb(zzbx zzbx) {
                this();
            }
        }

        public enum zzc implements zzelg {
            UNKNOWN(0),
            ENABLED(1),
            DISABLED(2);
            
            private static final zzelf<zzc> zzes = new zzbz();
            private final int value;

            private zzc(int i) {
                this.value = i;
            }

            public static zzc zzh(int i) {
                if (i == 0) {
                    return UNKNOWN;
                }
                if (i == 1) {
                    return ENABLED;
                }
                if (i != 2) {
                    return null;
                }
                return DISABLED;
            }

            public static zzeli zzw() {
                return zzby.zzeu;
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
            zzej = zza;
            zzelb.zza(zza.class, zza);
        }

        private zza() {
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzc zzc2) {
            this.zzei = zzc2.zzv();
            this.zzdv |= 2048;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzc(long j) {
            this.zzdv |= 2;
            this.zzdx = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzj(String str) {
            str.getClass();
            this.zzdv |= 1;
            this.zzdw = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzk(String str) {
            str.getClass();
            this.zzdv |= 4;
            this.zzdy = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzl(String str) {
            str.getClass();
            this.zzdv |= 8;
            this.zzdz = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzm(String str) {
            str.getClass();
            this.zzdv |= 16;
            this.zzea = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzn(String str) {
            str.getClass();
            this.zzdv |= 1024;
            this.zzeg = str;
        }

        public static zzb zzs() {
            return (zzb) zzej.zzbii();
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzbx.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzelb.zza(zzej, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzdv", "zzdw", "zzdx", "zzdy", "zzdz", "zzea", "zzeb", "zzec", "zzed", "zzee", "zzef", "zzeg", "zzeh", C0051zza.class, "zzei", zzc.zzw()});
                case 4:
                    return zzej;
                case 5:
                    zzemx<zza> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zza.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzej);
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
}
