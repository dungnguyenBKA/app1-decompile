package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzegw extends zzelb<zzegw, zza> implements zzemq {
    private static volatile zzemx<zzegw> zzek;
    private static final zzegw zziii;
    private String zziig = "";
    private zzegg zziih;

    public static final class zza extends zzelb.zzb<zzegw, zza> implements zzemq {
        private zza() {
            super(zzegw.zziii);
        }

        /* synthetic */ zza(zzegv zzegv) {
            this();
        }
    }

    static {
        zzegw zzegw = new zzegw();
        zziii = zzegw;
        zzelb.zza(zzegw.class, zzegw);
    }

    private zzegw() {
    }

    public static zzegw zzbfh() {
        return zziii;
    }

    public static zzegw zzy(zzejr zzejr, zzeko zzeko) {
        return (zzegw) zzelb.zza(zziii, zzejr, zzeko);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegv.zzel[i - 1]) {
            case 1:
                return new zzegw();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziii, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zziig", "zziih"});
            case 4:
                return zziii;
            case 5:
                zzemx<zzegw> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegw.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziii);
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

    public final String zzbff() {
        return this.zziig;
    }

    public final zzegg zzbfg() {
        zzegg zzegg = this.zziih;
        return zzegg == null ? zzegg.zzbed() : zzegg;
    }
}
