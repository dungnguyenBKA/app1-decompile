package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;

public final class zzeeo extends zzelb<zzeeo, zza> implements zzemq {
    private static volatile zzemx<zzeeo> zzek;
    private static final zzeeo zzieu;
    private int zzied;
    private zzeer zzies;

    public static final class zza extends zzelb.zzb<zzeeo, zza> implements zzemq {
        private zza() {
            super(zzeeo.zzieu);
        }

        /* synthetic */ zza(zzeep zzeep) {
            this();
        }
    }

    static {
        zzeeo zzeeo = new zzeeo();
        zzieu = zzeeo;
        zzelb.zza(zzeeo.class, zzeeo);
    }

    private zzeeo() {
    }

    public static zzeeo zzj(zzejr zzejr, zzeko zzeko) {
        return (zzeeo) zzelb.zza(zzieu, zzejr, zzeko);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeep.zzel[i - 1]) {
            case 1:
                return new zzeeo();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zzieu, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzies", "zzied"});
            case 4:
                return zzieu;
            case 5:
                zzemx<zzeeo> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzeeo.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zzieu);
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

    public final zzeer zzbcc() {
        zzeer zzeer = this.zzies;
        return zzeer == null ? zzeer.zzbcg() : zzeer;
    }
}
