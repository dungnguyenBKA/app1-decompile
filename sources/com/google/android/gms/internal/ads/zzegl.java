package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import java.util.List;

public final class zzegl extends zzelb<zzegl, zza> implements zzemq {
    private static volatile zzemx<zzegl> zzek;
    private static final zzegl zzihs;
    private int zzihq;
    private zzell<zzb> zzihr = zzelb.zzbin();

    public static final class zza extends zzelb.zzb<zzegl, zza> implements zzemq {
        private zza() {
            super(zzegl.zzihs);
        }

        /* synthetic */ zza(zzegm zzegm) {
            this();
        }
    }

    public static final class zzb extends zzelb<zzb, zza> implements zzemq {
        private static volatile zzemx<zzb> zzek;
        private static final zzb zzihw;
        private int zzihj;
        private zzegd zziht;
        private int zzihu;
        private int zzihv;

        public static final class zza extends zzelb.zzb<zzb, zza> implements zzemq {
            private zza() {
                super(zzb.zzihw);
            }

            /* synthetic */ zza(zzegm zzegm) {
                this();
            }
        }

        static {
            zzb zzb = new zzb();
            zzihw = zzb;
            zzelb.zza(zzb.class, zzb);
        }

        private zzb() {
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzegm.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzelb.zza(zzihw, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zziht", "zzihu", "zzihv", "zzihj"});
                case 4:
                    return zzihw;
                case 5:
                    zzemx<zzb> zzemx = zzek;
                    if (zzemx == null) {
                        synchronized (zzb.class) {
                            zzemx = zzek;
                            if (zzemx == null) {
                                zzemx = new zzelb.zza<>(zzihw);
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

        public final zzege zzbau() {
            zzege zzfk = zzege.zzfk(this.zzihu);
            return zzfk == null ? zzege.UNRECOGNIZED : zzfk;
        }

        public final zzegx zzbav() {
            zzegx zzfr = zzegx.zzfr(this.zzihj);
            return zzfr == null ? zzegx.UNRECOGNIZED : zzfr;
        }

        public final boolean zzbeo() {
            return this.zziht != null;
        }

        public final zzegd zzbep() {
            zzegd zzegd = this.zziht;
            return zzegd == null ? zzegd.zzbeb() : zzegd;
        }

        public final int zzbeq() {
            return this.zzihv;
        }
    }

    static {
        zzegl zzegl = new zzegl();
        zzihs = zzegl;
        zzelb.zza(zzegl.class, zzegl);
    }

    private zzegl() {
    }

    public static zzegl zzc(byte[] bArr, zzeko zzeko) {
        return (zzegl) zzelb.zza(zzihs, bArr, zzeko);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegm.zzel[i - 1]) {
            case 1:
                return new zzegl();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzihs, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzihq", "zzihr", zzb.class});
            case 4:
                return zzihs;
            case 5:
                zzemx<zzegl> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegl.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzihs);
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

    public final int zzbek() {
        return this.zzihq;
    }

    public final List<zzb> zzbel() {
        return this.zzihr;
    }

    public final int zzbem() {
        return this.zzihr.size();
    }
}
