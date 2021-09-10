package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.internal.ads.zzelb;

public final class zzcf {

    public static final class zza extends zzelb<zza, zzb> implements zzemq {
        private static volatile zzemx<zza> zzek;
        private static final zza zzik;
        private int zzdv;
        private String zzef = "";
        private String zzfg = "";
        private String zzfi = "";
        private String zzfj = "D";
        private String zzfk = "D";
        private int zzfn;
        private int zzfo;
        private String zzfp = "";
        private long zzfq;
        private long zzfr;
        private long zzfs;
        private long zzft;
        private long zzfu;
        private long zzfv;
        private long zzfw;
        private long zzfx;
        private long zzfy;
        private long zzfz;
        private String zzga = "";
        private long zzgb;
        private long zzgc;
        private long zzgd;
        private long zzge;
        private long zzgf;
        private long zzgg;
        private long zzgh;
        private long zzgi;
        private long zzgj;
        private String zzgk = "D";
        private String zzgl = "";
        private long zzgm;
        private long zzgn;
        private long zzgo;
        private long zzgp;
        private long zzgq = -1;
        private long zzgr = -1;
        private zzb zzgs;
        private long zzgt = -1;
        private long zzgu = -1;
        private long zzgv = -1;
        private long zzgw = -1;
        private long zzgx = -1;
        private long zzgy = -1;
        private long zzgz = -1;
        private int zzha = AdError.NETWORK_ERROR_CODE;
        private int zzhb = AdError.NETWORK_ERROR_CODE;
        private long zzhc = -1;
        private long zzhd = -1;
        private long zzhe = -1;
        private long zzhf = -1;
        private long zzhg = -1;
        private int zzhh = AdError.NETWORK_ERROR_CODE;
        private zze zzhi;
        private zzell<zze> zzhj = zzelb.zzbin();
        private zzf zzhk;
        private long zzhl = -1;
        private long zzhm = -1;
        private long zzhn = -1;
        private long zzho = -1;
        private long zzhp = -1;
        private long zzhq = -1;
        private long zzhr = -1;
        private long zzhs = -1;
        private String zzht = "D";
        private long zzhu = -1;
        private int zzhv;
        private int zzhw;
        private int zzhx;
        private zze zzhy;
        private long zzhz = -1;
        private int zzia = AdError.NETWORK_ERROR_CODE;
        private int zzib = AdError.NETWORK_ERROR_CODE;
        private String zzic = "D";
        private long zzid;
        private String zzie = "";
        private int zzif = 2;
        private boolean zzig;
        private String zzih = "";
        private long zzii;
        private zzd zzij;

        /* renamed from: com.google.android.gms.internal.ads.zzcf$zza$zza  reason: collision with other inner class name */
        public enum EnumC0054zza implements zzelg {
            DEBUGGER_STATE_UNSPECIFIED(0),
            DEBUGGER_STATE_NOT_INSTALLED(1),
            DEBUGGER_STATE_INSTALLED(2),
            DEBUGGER_STATE_ACTIVE(3),
            DEBUGGER_STATE_ENVVAR(4),
            DEBUGGER_STATE_MACHPORT(5),
            DEBUGGER_STATE_ENVVAR_MACHPORT(6);
            
            private static final zzelf<EnumC0054zza> zzes = new zzci();
            private final int value;

            private EnumC0054zza(int i) {
                this.value = i;
            }

            public static EnumC0054zza zzk(int i) {
                switch (i) {
                    case 0:
                        return DEBUGGER_STATE_UNSPECIFIED;
                    case 1:
                        return DEBUGGER_STATE_NOT_INSTALLED;
                    case 2:
                        return DEBUGGER_STATE_INSTALLED;
                    case 3:
                        return DEBUGGER_STATE_ACTIVE;
                    case 4:
                        return DEBUGGER_STATE_ENVVAR;
                    case 5:
                        return DEBUGGER_STATE_MACHPORT;
                    case 6:
                        return DEBUGGER_STATE_ENVVAR_MACHPORT;
                    default:
                        return null;
                }
            }

            public static zzeli zzw() {
                return zzch.zzeu;
            }

            public final String toString() {
                return "<" + EnumC0054zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        public static final class zzb extends zzelb.zzb<zza, zzb> implements zzemq {
            private zzb() {
                super(zza.zzik);
            }

            public final zzb zzac(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzt((zza) str);
                return this;
            }

            public final zzb zzad(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzu((zza) str);
                return this;
            }

            public final zzb zzae(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzv((zza) str);
                return this;
            }

            public final zzb zzaf(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzw((zza) str);
                return this;
            }

            public final zzb zzag(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzx((zza) str);
                return this;
            }

            public final zzb zzah(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzy((zza) str);
                return this;
            }

            public final zzb zzai(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzz((zza) str);
                return this;
            }

            public final zzb zzaj(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaa((zza) str);
                return this;
            }

            public final zzb zzak(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzab((zza) str);
                return this;
            }

            public final zzb zzal(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zze((zza) j);
                return this;
            }

            public final zzb zzam(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzf(j);
                return this;
            }

            public final zzb zzan(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzg(j);
                return this;
            }

            public final zzb zzao(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzh(j);
                return this;
            }

            public final zzb zzap(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzi(j);
                return this;
            }

            public final zzb zzaq(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzj(j);
                return this;
            }

            public final zzb zzar(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzk(j);
                return this;
            }

            public final zzb zzas(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzl(j);
                return this;
            }

            public final zzb zzat(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzm(j);
                return this;
            }

            public final zzb zzau(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzn(j);
                return this;
            }

            public final zzb zzav(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzo(j);
                return this;
            }

            public final zzb zzaw(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzp(j);
                return this;
            }

            public final zzb zzax(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzq(j);
                return this;
            }

            public final zzb zzay(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzr(j);
                return this;
            }

            public final zzb zzaz(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzs(j);
                return this;
            }

            public final zzb zzb(zzf zzf) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zza) zzf);
                return this;
            }

            public final zzb zzba(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzt((zza) j);
                return this;
            }

            @Deprecated
            public final zzb zzbb(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzu((zza) j);
                return this;
            }

            public final zzb zzbc(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzv((zza) j);
                return this;
            }

            public final zzb zzbd(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzw((zza) j);
                return this;
            }

            public final zzb zzbe(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzx((zza) j);
                return this;
            }

            public final zzb zzbf(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzy((zza) j);
                return this;
            }

            public final zzb zzbg(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzz((zza) j);
                return this;
            }

            public final zzb zzbh(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaa((zza) j);
                return this;
            }

            public final zzb zzbi(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzab((zza) j);
                return this;
            }

            public final zzb zzbj(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzac(j);
                return this;
            }

            public final zzb zzbk(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzad(j);
                return this;
            }

            public final zzb zzbl(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzae(j);
                return this;
            }

            public final zzb zzbm(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaf(j);
                return this;
            }

            public final zzb zzbn(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzag(j);
                return this;
            }

            public final zzb zzbo(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzah(j);
                return this;
            }

            public final zzb zzbp(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzai(j);
                return this;
            }

            public final zzb zzbq(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaj(j);
                return this;
            }

            public final zzb zzbr(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzak(j);
                return this;
            }

            public final zzb zzc(zze zze) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zza) zze);
                return this;
            }

            public final zzb zzd(zze zze) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzb((zza) zze);
                return this;
            }

            public final zzb zzf(zzcq zzcq) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zza) zzcq);
                return this;
            }

            public final zzb zzg(zzcq zzcq) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzb((zza) zzcq);
                return this;
            }

            public final zzb zzh(zzcq zzcq) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzc(zzcq);
                return this;
            }

            public final zzb zzi(zzcq zzcq) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzd((zza) zzcq);
                return this;
            }

            public final zzb zzj(zzcq zzcq) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zze((zza) zzcq);
                return this;
            }

            /* synthetic */ zzb(zzcg zzcg) {
                this();
            }

            public final zzb zzas() {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaj();
                return this;
            }

            public final zzb zzb(zzc zzc) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zza) zzc);
                return this;
            }

            public final zzb zzb(boolean z) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zza) z);
                return this;
            }
        }

        public enum zzc implements zzelg {
            DEVICE_IDENTIFIER_NO_ID(0),
            DEVICE_IDENTIFIER_APP_SPECIFIC_ID(1),
            DEVICE_IDENTIFIER_GLOBAL_ID(2),
            DEVICE_IDENTIFIER_ADVERTISER_ID(3),
            DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED(4),
            DEVICE_IDENTIFIER_ANDROID_AD_ID(5),
            DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID(6);
            
            private static final zzelf<zzc> zzes = new zzcj();
            private final int value;

            private zzc(int i) {
                this.value = i;
            }

            public static zzc zzl(int i) {
                switch (i) {
                    case 0:
                        return DEVICE_IDENTIFIER_NO_ID;
                    case 1:
                        return DEVICE_IDENTIFIER_APP_SPECIFIC_ID;
                    case 2:
                        return DEVICE_IDENTIFIER_GLOBAL_ID;
                    case 3:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID;
                    case 4:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED;
                    case 5:
                        return DEVICE_IDENTIFIER_ANDROID_AD_ID;
                    case 6:
                        return DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID;
                    default:
                        return null;
                }
            }

            public static zzeli zzw() {
                return zzck.zzeu;
            }

            public final String toString() {
                return "<" + zzc.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        public enum zzd implements zzelg {
            ERROR_ENCODE_SIZE_FAIL(1),
            ERROR_UNKNOWN(3),
            ERROR_NO_SIGNALS(5),
            ERROR_ENCRYPTION(7),
            ERROR_MEMORY(9),
            ERROR_SIMULATOR(11),
            ERROR_SERVICE(13),
            ERROR_THREAD(15),
            PSN_WEB64_FAIL(2),
            PSN_DECRYPT_SIZE_FAIL(4),
            PSN_MD5_CHECK_FAIL(8),
            PSN_MD5_SIZE_FAIL(16),
            PSN_MD5_FAIL(32),
            PSN_DECODE_FAIL(64),
            PSN_SALT_FAIL(128),
            PSN_BITSLICER_FAIL(256),
            PSN_REQUEST_TYPE_FAIL(AdRequest.MAX_CONTENT_URL_LENGTH),
            PSN_INVALID_ERROR_CODE(1024),
            PSN_TIMESTAMP_EXPIRED(2048),
            PSN_ENCODE_SIZE_FAIL(4096),
            PSN_BLANK_VALUE(8192),
            PSN_INITIALIZATION_FAIL(16384),
            PSN_GASS_CLIENT_FAIL(32768),
            PSN_SIGNALS_TIMEOUT(65536),
            PSN_TINK_FAIL(131072);
            
            private static final zzelf<zzd> zzes = new zzcl();
            private final int value;

            private zzd(int i) {
                this.value = i;
            }

            public final String toString() {
                return "<" + zzd.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        public static final class zzf extends zzelb<zzf, C0056zza> implements zzemq {
            private static volatile zzemx<zzf> zzek;
            private static final zzf zzkz;
            private int zzdv;
            private long zzhf = -1;
            private long zzhg = -1;
            private long zzkv = -1;
            private long zzkw = -1;
            private long zzkx = -1;
            private long zzky = -1;

            /* renamed from: com.google.android.gms.internal.ads.zzcf$zza$zzf$zza  reason: collision with other inner class name */
            public static final class C0056zza extends zzelb.zzb<zzf, C0056zza> implements zzemq {
                private C0056zza() {
                    super(zzf.zzkz);
                }

                public final C0056zza zzdc(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzch(j);
                    return this;
                }

                public final C0056zza zzdd(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzci(j);
                    return this;
                }

                public final C0056zza zzde(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzcj(j);
                    return this;
                }

                public final C0056zza zzdf(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzck(j);
                    return this;
                }

                /* synthetic */ C0056zza(zzcg zzcg) {
                    this();
                }
            }

            static {
                zzf zzf = new zzf();
                zzkz = zzf;
                zzelb.zza(zzf.class, zzf);
            }

            private zzf() {
            }

            public static C0056zza zzaw() {
                return (C0056zza) zzkz.zzbii();
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzch(long j) {
                this.zzdv |= 4;
                this.zzkv = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzci(long j) {
                this.zzdv |= 8;
                this.zzkw = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzcj(long j) {
                this.zzdv |= 16;
                this.zzkx = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzck(long j) {
                this.zzdv |= 32;
                this.zzky = j;
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzcg.zzel[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new C0056zza(null);
                    case 3:
                        return zzelb.zza(zzkz, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005", new Object[]{"zzdv", "zzhf", "zzhg", "zzkv", "zzkw", "zzkx", "zzky"});
                    case 4:
                        return zzkz;
                    case 5:
                        zzemx<zzf> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zzf.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzkz);
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
            zza zza = new zza();
            zzik = zza;
            zzelb.zza(zza.class, zza);
        }

        private zza() {
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzcq zzcq) {
            this.zzha = zzcq.zzv();
            this.zzfn |= 1024;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzaa(long j) {
            this.zzfn |= 32;
            this.zzgx = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzab(long j) {
            this.zzfn |= 64;
            this.zzgy = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzac(long j) {
            this.zzfn |= 4096;
            this.zzhc = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzad(long j) {
            this.zzfn |= 8192;
            this.zzhd = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzae(long j) {
            this.zzfn |= 16384;
            this.zzhe = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzag(long j) {
            this.zzfn |= 4194304;
            this.zzhn = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzah(long j) {
            this.zzfn |= 8388608;
            this.zzho = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzaj() {
            this.zzhj = zzelb.zzbin();
        }

        public static zzb zzap() {
            return (zzb) zzik.zzbii();
        }

        public static zza zzaq() {
            return zzik;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzb(zzcq zzcq) {
            this.zzhb = zzcq.zzv();
            this.zzfn |= 2048;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzc(zzcq zzcq) {
            this.zzhh = zzcq.zzv();
            this.zzfn |= 131072;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzd(zzcq zzcq) {
            this.zzia = zzcq.zzv();
            this.zzfo |= 8;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zze(long j) {
            this.zzdv |= 4;
            this.zzfq = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzf(long j) {
            this.zzdv |= 16;
            this.zzfs = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzg(long j) {
            this.zzdv |= 32;
            this.zzft = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzh(long j) {
            this.zzdv |= 1024;
            this.zzfy = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzi(long j) {
            this.zzdv |= 2048;
            this.zzfz = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzj(long j) {
            this.zzdv |= 8192;
            this.zzgb = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzk(long j) {
            this.zzdv |= 16384;
            this.zzgc = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzl(long j) {
            this.zzdv |= 32768;
            this.zzgd = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzm(long j) {
            this.zzdv |= 65536;
            this.zzge = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzn(long j) {
            this.zzdv |= 524288;
            this.zzgh = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzo(long j) {
            this.zzdv |= 1048576;
            this.zzgi = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzp(long j) {
            this.zzdv |= 2097152;
            this.zzgj = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzq(long j) {
            this.zzdv |= 33554432;
            this.zzgm = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzr(long j) {
            this.zzdv |= 67108864;
            this.zzgn = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzs(long j) {
            this.zzdv |= 134217728;
            this.zzgo = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzt(String str) {
            str.getClass();
            this.zzdv |= 1;
            this.zzfp = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzu(String str) {
            str.getClass();
            this.zzdv |= 2;
            this.zzef = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzv(String str) {
            str.getClass();
            this.zzdv |= 4194304;
            this.zzfg = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzw(String str) {
            str.getClass();
            this.zzdv |= 16777216;
            this.zzgl = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzx(String str) {
            str.getClass();
            this.zzdv |= 268435456;
            this.zzfi = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzy(long j) {
            this.zzfn |= 8;
            this.zzgv = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzz(long j) {
            this.zzfn |= 16;
            this.zzgw = j;
        }

        public final String zzaf() {
            return this.zzfg;
        }

        public final boolean zzai() {
            return (this.zzdv & 4194304) != 0;
        }

        public final String zzak() {
            return this.zzie;
        }

        public final zzc zzal() {
            zzc zzl = zzc.zzl(this.zzif);
            return zzl == null ? zzc.DEVICE_IDENTIFIER_GLOBAL_ID : zzl;
        }

        public final boolean zzam() {
            return this.zzig;
        }

        public final boolean zzan() {
            return (this.zzfo & 4096) != 0;
        }

        public final zzd zzao() {
            zzd zzd2 = this.zzij;
            return zzd2 == null ? zzd.zzbi() : zzd2;
        }

        public static final class zze extends zzelb<zze, C0055zza> implements zzemq {
            private static volatile zzemx<zze> zzek;
            private static final zze zzku;
            private int zzdv;
            private long zzgb = -1;
            private long zzgc = -1;
            private long zzkb = -1;
            private long zzkc = -1;
            private long zzkd = -1;
            private long zzke = -1;
            private int zzkf = AdError.NETWORK_ERROR_CODE;
            private long zzkg = -1;
            private long zzkh = -1;
            private long zzki = -1;
            private int zzkj = AdError.NETWORK_ERROR_CODE;
            private long zzkk = -1;
            private long zzkl = -1;
            private long zzkm = -1;
            private long zzkn = -1;
            private long zzko;
            private long zzkp;
            private long zzkq = -1;
            private long zzkr = -1;
            private long zzks = -1;
            private long zzkt = -1;

            /* renamed from: com.google.android.gms.internal.ads.zzcf$zza$zze$zza  reason: collision with other inner class name */
            public static final class C0055zza extends zzelb.zzb<zze, C0055zza> implements zzemq {
                private C0055zza() {
                    super(zze.zzku);
                }

                public final C0055zza zzay() {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzat();
                    return this;
                }

                public final C0055zza zzcl(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzj(j);
                    return this;
                }

                public final C0055zza zzcm(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzk((zze) j);
                    return this;
                }

                public final C0055zza zzcn(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbs(j);
                    return this;
                }

                public final C0055zza zzco(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbt(j);
                    return this;
                }

                public final C0055zza zzcp(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbu(j);
                    return this;
                }

                public final C0055zza zzcq(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbv(j);
                    return this;
                }

                public final C0055zza zzcr(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbw(j);
                    return this;
                }

                public final C0055zza zzcs(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbx(j);
                    return this;
                }

                public final C0055zza zzct(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzby(j);
                    return this;
                }

                public final C0055zza zzcu(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbz(j);
                    return this;
                }

                public final C0055zza zzcv(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzca(j);
                    return this;
                }

                public final C0055zza zzcw(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcb(j);
                    return this;
                }

                public final C0055zza zzcx(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcc(j);
                    return this;
                }

                public final C0055zza zzcy(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcd(j);
                    return this;
                }

                public final C0055zza zzcz(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzce(j);
                    return this;
                }

                public final C0055zza zzda(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcf(j);
                    return this;
                }

                public final C0055zza zzdb(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcg(j);
                    return this;
                }

                public final C0055zza zzm(zzcq zzcq) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzk((zze) zzcq);
                    return this;
                }

                public final C0055zza zzn(zzcq zzcq) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzl(zzcq);
                    return this;
                }

                /* synthetic */ C0055zza(zzcg zzcg) {
                    this();
                }
            }

            static {
                zze zze = new zze();
                zzku = zze;
                zzelb.zza(zze.class, zze);
            }

            private zze() {
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzat() {
                this.zzdv &= -9;
                this.zzkc = -1;
            }

            public static C0055zza zzau() {
                return (C0055zza) zzku.zzbii();
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzbs(long j) {
                this.zzdv |= 4;
                this.zzkb = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzbt(long j) {
                this.zzdv |= 8;
                this.zzkc = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzbu(long j) {
                this.zzdv |= 16;
                this.zzkd = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzbv(long j) {
                this.zzdv |= 32;
                this.zzke = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzbw(long j) {
                this.zzdv |= 128;
                this.zzkg = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzbx(long j) {
                this.zzdv |= 256;
                this.zzkh = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzby(long j) {
                this.zzdv |= AdRequest.MAX_CONTENT_URL_LENGTH;
                this.zzki = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzbz(long j) {
                this.zzdv |= 2048;
                this.zzkk = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzca(long j) {
                this.zzdv |= 4096;
                this.zzkl = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzcb(long j) {
                this.zzdv |= 8192;
                this.zzkm = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzcc(long j) {
                this.zzdv |= 16384;
                this.zzkn = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzcd(long j) {
                this.zzdv |= 32768;
                this.zzko = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzce(long j) {
                this.zzdv |= 65536;
                this.zzkp = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzcf(long j) {
                this.zzdv |= 131072;
                this.zzkq = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzcg(long j) {
                this.zzdv |= 262144;
                this.zzkr = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzj(long j) {
                this.zzdv |= 1;
                this.zzgb = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzk(long j) {
                this.zzdv |= 2;
                this.zzgc = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzl(zzcq zzcq) {
                this.zzkj = zzcq.zzv();
                this.zzdv |= 1024;
            }

            /* access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzcg.zzel[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C0055zza(null);
                    case 3:
                        return zzelb.zza(zzku, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzdv", "zzgb", "zzgc", "zzkb", "zzkc", "zzkd", "zzke", "zzkf", zzcq.zzw(), "zzkg", "zzkh", "zzki", "zzkj", zzcq.zzw(), "zzkk", "zzkl", "zzkm", "zzkn", "zzko", "zzkp", "zzkq", "zzkr", "zzks", "zzkt"});
                    case 4:
                        return zzku;
                    case 5:
                        zzemx<zze> zzemx = zzek;
                        if (zzemx == null) {
                            synchronized (zze.class) {
                                zzemx = zzek;
                                if (zzemx == null) {
                                    zzemx = new zzelb.zza<>(zzku);
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

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzk(zzcq zzcq) {
                this.zzkf = zzcq.zzv();
                this.zzdv |= 64;
            }
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzaf(long j) {
            this.zzfn |= 2097152;
            this.zzhm = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzai(long j) {
            this.zzfn |= 67108864;
            this.zzhr = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzaj(long j) {
            this.zzfn |= 134217728;
            this.zzhs = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzak(long j) {
            this.zzfo |= 2048;
            this.zzii = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zze zze2) {
            zze2.getClass();
            this.zzhi = zze2;
            this.zzfn |= 262144;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzaa(String str) {
            str.getClass();
            this.zzfn |= 268435456;
            this.zzht = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzab(String str) {
            str.getClass();
            this.zzfo |= 128;
            this.zzie = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzb(zze zze2) {
            zze2.getClass();
            zzell<zze> zzell = this.zzhj;
            if (!zzell.zzbge()) {
                this.zzhj = zzelb.zza(zzell);
            }
            this.zzhj.add(zze2);
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zze(zzcq zzcq) {
            this.zzib = zzcq.zzv();
            this.zzfo |= 16;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzy(String str) {
            str.getClass();
            this.zzfn |= 128;
            this.zzfj = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzz(String str) {
            str.getClass();
            this.zzfn |= 256;
            this.zzfk = str;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzt(long j) {
            this.zzdv |= 536870912;
            this.zzgp = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzu(long j) {
            this.zzdv |= 1073741824;
            this.zzgq = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzv(long j) {
            this.zzdv |= RecyclerView.UNDEFINED_DURATION;
            this.zzgr = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzw(long j) {
            this.zzfn |= 2;
            this.zzgt = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzx(long j) {
            this.zzfn |= 4;
            this.zzgu = j;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzf zzf2) {
            zzf2.getClass();
            this.zzhk = zzf2;
            this.zzfn |= 524288;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzc zzc2) {
            this.zzif = zzc2.zzv();
            this.zzfo |= 256;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(boolean z) {
            this.zzfo |= AdRequest.MAX_CONTENT_URL_LENGTH;
            this.zzig = z;
        }

        public static zza zza(byte[] bArr, zzeko zzeko) {
            return (zza) zzelb.zza(zzik, bArr, zzeko);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzelb.zza(zzik, "\u0001N\u0000\u0003\u0001ÉN\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂF\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈG\u0019ဂK\u001aဌH\u001bဈ\u0016\u001cဇI\u001dဈ\u0018\u001eဈJ\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0ဌ*1ဌ+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08ဌ19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=Aဌ>Bဌ?Cဈ<Dဌ@EဉAFဂBGဂ8Hဂ9IဌCJဂ)Kဈ\u0017LဌDMဈEÉဉL", new Object[]{"zzdv", "zzfn", "zzfo", "zzfp", "zzef", "zzfq", "zzfr", "zzfs", "zzft", "zzfu", "zzfv", "zzfw", "zzfx", "zzfy", "zzfz", "zzga", "zzgb", "zzgc", "zzgd", "zzge", "zzgf", "zzgg", "zzgh", "zzid", "zzgi", "zzgj", "zzie", "zzii", "zzif", zzc.zzw(), "zzfg", "zzig", "zzgl", "zzih", "zzgm", "zzgn", "zzgo", "zzfi", "zzgp", "zzgq", "zzgr", "zzgs", "zzgt", "zzgu", "zzgv", "zzgw", "zzhj", zze.class, "zzgx", "zzgy", "zzfj", "zzfk", "zzha", zzcq.zzw(), "zzhb", zzcq.zzw(), "zzhi", "zzhc", "zzhd", "zzhe", "zzhf", "zzhg", "zzhh", zzcq.zzw(), "zzhk", "zzhl", "zzhm", "zzhn", "zzho", "zzhr", "zzhs", "zzhu", "zzhv", zzcm.zzw(), "zzhw", zzcr.zzw(), "zzht", "zzhx", EnumC0054zza.zzw(), "zzhy", "zzhz", "zzhp", "zzhq", "zzia", zzcq.zzw(), "zzgz", "zzgk", "zzib", zzcq.zzw(), "zzic", "zzij"});
                case 4:
                    return zzik;
                case 5:
                    zzemx<zza> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zza.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzik);
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

    public static final class zzb extends zzelb<zzb, zza> implements zzemq {
        private static volatile zzemx<zzb> zzek;
        private static final zzb zzlf;
        private int zzdv;
        private long zzla;
        private int zzlb;
        private boolean zzlc;
        private zzelh zzld = zzelb.zzbil();
        private long zzle;

        public static final class zza extends zzelb.zzb<zzb, zza> implements zzemq {
            private zza() {
                super(zzb.zzlf);
            }

            /* synthetic */ zza(zzcg zzcg) {
                this();
            }
        }

        static {
            zzb zzb = new zzb();
            zzlf = zzb;
            zzelb.zza(zzb.class, zzb);
        }

        private zzb() {
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzelb.zza(zzlf, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzdv", "zzla", "zzlb", "zzlc", "zzld", "zzle"});
                case 4:
                    return zzlf;
                case 5:
                    zzemx<zzb> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zzb.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzlf);
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

    public static final class zzd extends zzelb<zzd, zza> implements zzemq {
        private static volatile zzemx<zzd> zzek;
        private static final zzd zzme;
        private int zzdv;
        private long zzla;
        private String zzmc = "";
        private zzejr zzmd = zzejr.zzilz;

        public static final class zza extends zzelb.zzb<zzd, zza> implements zzemq {
            private zza() {
                super(zzd.zzme);
            }

            /* synthetic */ zza(zzcg zzcg) {
                this();
            }
        }

        static {
            zzd zzd = new zzd();
            zzme = zzd;
            zzelb.zza(zzd.class, zzd);
        }

        private zzd() {
        }

        public static zzd zzbi() {
            return zzme;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zzelb.zza(zzme, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzdv", "zzla", "zzmc", "zzmd"});
                case 4:
                    return zzme;
                case 5:
                    zzemx<zzd> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zzd.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzme);
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

        public final boolean zzbg() {
            return (this.zzdv & 1) != 0;
        }

        public final long zzbh() {
            return this.zzla;
        }
    }

    public static final class zze extends zzelb<zze, zza> implements zzemq {
        private static volatile zzemx<zze> zzek;
        private static final zze zzmf;
        private int zzdv;
        private String zzfl = "";

        public static final class zza extends zzelb.zzb<zze, zza> implements zzemq {
            private zza() {
                super(zze.zzmf);
            }

            /* synthetic */ zza(zzcg zzcg) {
                this();
            }
        }

        static {
            zze zze = new zze();
            zzmf = zze;
            zzelb.zza(zze.class, zze);
        }

        private zze() {
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzelb.zza(zzmf, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzdv", "zzfl"});
                case 4:
                    return zzmf;
                case 5:
                    zzemx<zze> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zze.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzmf);
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

    public static final class zzc extends zzelb<zzc, zza> implements zzemq {
        private static volatile zzemx<zzc> zzek;
        private static final zzc zzlk;
        private int zzdv;
        private zzejr zzlg;
        private zzejr zzlh;
        private zzejr zzli;
        private zzejr zzlj;

        public static final class zza extends zzelb.zzb<zzc, zza> implements zzemq {
            private zza() {
                super(zzc.zzlk);
            }

            public final zza zze(zzejr zzejr) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzc) this.zziqp).zza((zzc) zzejr);
                return this;
            }

            public final zza zzf(zzejr zzejr) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzc) this.zziqp).zzb((zzc) zzejr);
                return this;
            }

            public final zza zzg(zzejr zzejr) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzc) this.zziqp).zzc(zzejr);
                return this;
            }

            public final zza zzh(zzejr zzejr) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzc) this.zziqp).zzd((zzc) zzejr);
                return this;
            }

            /* synthetic */ zza(zzcg zzcg) {
                this();
            }
        }

        static {
            zzc zzc = new zzc();
            zzlk = zzc;
            zzelb.zza(zzc.class, zzc);
        }

        private zzc() {
            zzejr zzejr = zzejr.zzilz;
            this.zzlg = zzejr;
            this.zzlh = zzejr;
            this.zzli = zzejr;
            this.zzlj = zzejr;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zza(zzejr zzejr) {
            zzejr.getClass();
            this.zzdv |= 1;
            this.zzlg = zzejr;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzb(zzejr zzejr) {
            zzejr.getClass();
            this.zzdv |= 2;
            this.zzlh = zzejr;
        }

        public static zza zzbe() {
            return (zza) zzlk.zzbii();
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzc(zzejr zzejr) {
            zzejr.getClass();
            this.zzdv |= 4;
            this.zzli = zzejr;
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzd(zzejr zzejr) {
            zzejr.getClass();
            this.zzdv |= 8;
            this.zzlj = zzejr;
        }

        public final zzejr zzba() {
            return this.zzlg;
        }

        public final zzejr zzbb() {
            return this.zzlh;
        }

        public final zzejr zzbc() {
            return this.zzli;
        }

        public final zzejr zzbd() {
            return this.zzlj;
        }

        public static zzc zzb(byte[] bArr, zzeko zzeko) {
            return (zzc) zzelb.zza(zzlk, bArr, zzeko);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzelb.zza(zzlk, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzdv", "zzlg", "zzlh", "zzli", "zzlj"});
                case 4:
                    return zzlk;
                case 5:
                    zzemx<zzc> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zzc.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzlk);
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

    public static final class zzf extends zzelb<zzf, zza> implements zzemq {
        private static volatile zzemx<zzf> zzek;
        private static final zzf zzmh;
        private int zzdv;
        private int zzhv = 1;
        private int zzhw = 1;
        private zzejr zzlh = zzejr.zzilz;
        private zzell<zzejr> zzmg = zzelb.zzbin();

        public static final class zza extends zzelb.zzb<zzf, zza> implements zzemq {
            private zza() {
                super(zzf.zzmh);
            }

            public final zza zza(zzcm zzcm) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzf) this.zziqp).zzb((zzf) zzcm);
                return this;
            }

            public final zza zzi(zzejr zzejr) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzf) this.zziqp).zzk(zzejr);
                return this;
            }

            public final zza zzj(zzejr zzejr) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzf) this.zziqp).zzb((zzf) zzejr);
                return this;
            }

            /* synthetic */ zza(zzcg zzcg) {
                this();
            }
        }

        static {
            zzf zzf = new zzf();
            zzmh = zzf;
            zzelb.zza(zzf.class, zzf);
        }

        private zzf() {
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzb(zzejr zzejr) {
            zzejr.getClass();
            this.zzdv |= 1;
            this.zzlh = zzejr;
        }

        public static zza zzbl() {
            return (zza) zzmh.zzbii();
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzk(zzejr zzejr) {
            zzejr.getClass();
            zzell<zzejr> zzell = this.zzmg;
            if (!zzell.zzbge()) {
                this.zzmg = zzelb.zza(zzell);
            }
            this.zzmg.add(zzejr);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzelb.zza(zzmh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zzdv", "zzmg", "zzlh", "zzhw", zzcr.zzw(), "zzhv", zzcm.zzw()});
                case 4:
                    return zzmh;
                case 5:
                    zzemx<zzf> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zzf.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzmh);
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

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final void zzb(zzcm zzcm) {
            this.zzhv = zzcm.zzv();
            this.zzdv |= 4;
        }
    }
}
