package com.google.android.gms.internal.gtm;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class zzuj {
    static final zzuj zza = new zzuj(true);
    private static volatile boolean zzb = false;
    private static volatile zzuj zzc;
    private static volatile zzuj zzd;
    private final Map<zzui, zzux<?, ?>> zze;

    zzuj() {
        this.zze = new HashMap();
    }

    public static zzuj zza() {
        zzuj zzuj = zzc;
        if (zzuj == null) {
            synchronized (zzuj.class) {
                zzuj = zzc;
                if (zzuj == null) {
                    zzuj = zza;
                    zzc = zzuj;
                }
            }
        }
        return zzuj;
    }

    public static zzuj zzb() {
        zzuj zzuj = zzd;
        if (zzuj != null) {
            return zzuj;
        }
        synchronized (zzuj.class) {
            zzuj zzuj2 = zzd;
            if (zzuj2 != null) {
                return zzuj2;
            }
            zzuj zzb2 = zzur.zzb(zzuj.class);
            zzd = zzb2;
            return zzb2;
        }
    }

    public <ContainingType extends zzwk> zzux<ContainingType, ?> zzc(ContainingType containingtype, int i) {
        return (zzux<ContainingType, ?>) this.zze.get(new zzui(containingtype, i));
    }

    zzuj(boolean z) {
        this.zze = Collections.emptyMap();
    }
}
