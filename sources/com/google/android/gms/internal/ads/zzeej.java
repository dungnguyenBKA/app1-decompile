package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeej extends zzelb<zzeej, zza> implements zzemq {
    private static volatile zzemx<zzeej> zzek;
    private static final zzeej zziep;
    private int zzied;
    private zzeek zzien;

    public static final class zza extends zzelb.zzb<zzeej, zza> implements zzemq {
        private zza() {
            super(zzeej.zziep);
        }

        /* synthetic */ zza(zzeei zzeei) {
            this();
        }
    }

    static {
        zzeej zzeej = new zzeej();
        zziep = zzeej;
        zzelb.zza(zzeej.class, zzeej);
    }

    private zzeej() {
    }

    public static zzeej zzbbx() {
        return zziep;
    }

    public static zzeej zzh(zzejr zzejr, zzeko zzeko) {
        return (zzeej) zzelb.zza(zziep, zzejr, zzeko);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeei.zzel[i - 1]) {
            case 1:
                return new zzeej();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziep, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzien", "zzied"});
            case 4:
                return zziep;
            case 5:
                zzemx<zzeej> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeej.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziep);
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

    public final zzeek zzbbt() {
        zzeek zzeek = this.zzien;
        return zzeek == null ? zzeek.zzbca() : zzeek;
    }
}
