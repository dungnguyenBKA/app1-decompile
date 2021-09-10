package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

@Deprecated
public final class zzegk extends zzelb<zzegk, zza> implements zzemq {
    private static volatile zzemx<zzegk> zzek;
    private static final zzegk zzihp;
    private String zzigs = "";
    private String zzihl = "";
    private int zzihm;
    private boolean zzihn;
    private String zziho = "";

    public static final class zza extends zzelb.zzb<zzegk, zza> implements zzemq {
        private zza() {
            super(zzegk.zzihp);
        }

        /* synthetic */ zza(zzegj zzegj) {
            this();
        }
    }

    static {
        zzegk zzegk = new zzegk();
        zzihp = zzegk;
        zzelb.zza(zzegk.class, zzegk);
    }

    private zzegk() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegj.zzel[i - 1]) {
            case 1:
                return new zzegk();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzihp, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzihl", "zzigs", "zzihm", "zzihn", "zziho"});
            case 4:
                return zzihp;
            case 5:
                zzemx<zzegk> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegk.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzihp);
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

    public final String zzbdx() {
        return this.zzigs;
    }

    public final String zzbef() {
        return this.zzihl;
    }

    public final int zzbeg() {
        return this.zzihm;
    }

    public final boolean zzbeh() {
        return this.zzihn;
    }

    public final String zzbei() {
        return this.zziho;
    }
}
