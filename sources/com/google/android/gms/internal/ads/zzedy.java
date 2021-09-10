package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzedy extends zzelb<zzedy, zza> implements zzemq {
    private static volatile zzemx<zzedy> zzek;
    private static final zzedy zziee;
    private zzeeb zzieb;
    private int zzied;

    public static final class zza extends zzelb.zzb<zzedy, zza> implements zzemq {
        private zza() {
            super(zzedy.zziee);
        }

        /* synthetic */ zza(zzedz zzedz) {
            this();
        }
    }

    static {
        zzedy zzedy = new zzedy();
        zziee = zzedy;
        zzelb.zza(zzedy.class, zzedy);
    }

    private zzedy() {
    }

    public static zzedy zzd(zzejr zzejr, zzeko zzeko) {
        return (zzedy) zzelb.zza(zziee, zzejr, zzeko);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzedz.zzel[i - 1]) {
            case 1:
                return new zzedy();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziee, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzied", "zzieb"});
            case 4:
                return zziee;
            case 5:
                zzemx<zzedy> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzedy.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziee);
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

    public final zzeeb zzbbf() {
        zzeeb zzeeb = this.zzieb;
        return zzeeb == null ? zzeeb.zzbbk() : zzeeb;
    }
}
