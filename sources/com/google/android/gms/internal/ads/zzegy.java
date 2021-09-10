package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import java.util.List;

@Deprecated
public final class zzegy extends zzelb<zzegy, zza> implements zzemq {
    private static volatile zzemx<zzegy> zzek;
    private static final zzegy zziis;
    private String zziiq = "";
    private zzell<zzegk> zziir = zzelb.zzbin();

    public static final class zza extends zzelb.zzb<zzegy, zza> implements zzemq {
        private zza() {
            super(zzegy.zziis);
        }

        /* synthetic */ zza(zzeha zzeha) {
            this();
        }
    }

    static {
        zzegy zzegy = new zzegy();
        zziis = zzegy;
        zzelb.zza(zzegy.class, zzegy);
    }

    private zzegy() {
    }

    public static zzegy zzbfk() {
        return zziis;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeha.zzel[i - 1]) {
            case 1:
                return new zzegy();
            case 2:
                return new zza(null);
            case 3:
                return zzelb.zza(zziis, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zziiq", "zziir", zzegk.class});
            case 4:
                return zziis;
            case 5:
                zzemx<zzegy> zzemx = zzek;
                if (zzemx == null) {
                    synchronized (zzegy.class) {
                        zzemx = zzek;
                        if (zzemx == null) {
                            zzemx = new zzelb.zza<>(zziis);
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

    public final List<zzegk> zzbfj() {
        return this.zziir;
    }
}
