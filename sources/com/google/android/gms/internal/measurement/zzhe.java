package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzhe {
    static final zzhe zza = new zzhe(true);
    private static volatile boolean zzb = false;
    private static volatile zzhe zzc;
    private static volatile zzhe zzd;
    private final Map<zzhd, zzhq<?, ?>> zze;

    zzhe() {
        this.zze = new HashMap();
    }

    public static zzhe zza() {
        zzhe zzhe = zzc;
        if (zzhe == null) {
            synchronized (zzhe.class) {
                zzhe = zzc;
                if (zzhe == null) {
                    zzhe = zza;
                    zzc = zzhe;
                }
            }
        }
        return zzhe;
    }

    public static zzhe zzb() {
        zzhe zzhe = zzd;
        if (zzhe != null) {
            return zzhe;
        }
        synchronized (zzhe.class) {
            zzhe zzhe2 = zzd;
            if (zzhe2 != null) {
                return zzhe2;
            }
            zzhe zzb2 = zzhm.zzb(zzhe.class);
            zzd = zzb2;
            return zzb2;
        }
    }

    public final <ContainingType extends zzix> zzhq<ContainingType, ?> zzc(ContainingType containingtype, int i) {
        return (zzhq<ContainingType, ?>) this.zze.get(new zzhd(containingtype, i));
    }

    zzhe(boolean z) {
        this.zze = Collections.emptyMap();
    }
}
