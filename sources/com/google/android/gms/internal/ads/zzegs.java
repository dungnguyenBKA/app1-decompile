package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzegs extends zzelb<zzegs, zza> implements zzemq {
    private static volatile zzemx<zzegs> zzek;
    private static final zzegs zziid;
    private String zziic = "";

    public static final class zza extends zzelb.zzb<zzegs, zza> implements zzemq {
        private zza() {
            super(zzegs.zziid);
        }

        /* synthetic */ zza(zzegr zzegr) {
            this();
        }
    }

    static {
        zzegs zzegs = new zzegs();
        zziid = zzegs;
        zzelb.zza(zzegs.class, zzegs);
    }

    private zzegs() {
    }

    public static zzegs zzbfa() {
        return zziid;
    }

    public static zzegs zzw(zzejr zzejr, zzeko zzeko) {
        return (zzegs) zzelb.zza(zziid, zzejr, zzeko);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegr.zzel[i - 1]) {
            case 1:
                return new zzegs();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziid, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zziic"});
            case 4:
                return zziid;
            case 5:
                zzemx<zzegs> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegs.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziid);
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

    public final String zzbez() {
        return this.zziic;
    }
}
