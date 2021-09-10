package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class zzeko {
    private static volatile boolean zzing = false;
    private static boolean zzinh = true;
    private static volatile zzeko zzini;
    private static volatile zzeko zzinj;
    private static final zzeko zzink = new zzeko(true);
    private final Map<zza, zzelb.zzf<?, ?>> zzinl;

    private static final class zza {
        private final int number;
        private final Object object;

        zza(Object obj, int i) {
            this.object = obj;
            this.number = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            if (this.object == zza.object && this.number == zza.number) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.object) * 65535) + this.number;
        }
    }

    zzeko() {
        this.zzinl = new HashMap();
    }

    public static zzeko zzbhw() {
        zzeko zzeko = zzini;
        if (zzeko == null) {
            synchronized (zzeko.class) {
                zzeko = zzini;
                if (zzeko == null) {
                    zzeko = zzink;
                    zzini = zzeko;
                }
            }
        }
        return zzeko;
    }

    public static zzeko zzbhx() {
        zzeko zzeko = zzinj;
        if (zzeko != null) {
            return zzeko;
        }
        synchronized (zzeko.class) {
            zzeko zzeko2 = zzinj;
            if (zzeko2 != null) {
                return zzeko2;
            }
            zzeko zzc = zzekz.zzc(zzeko.class);
            zzinj = zzc;
            return zzc;
        }
    }

    public final <ContainingType extends zzemo> zzelb.zzf<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzelb.zzf<ContainingType, ?>) this.zzinl.get(new zza(containingtype, i));
    }

    private zzeko(boolean z) {
        this.zzinl = Collections.emptyMap();
    }
}
