package com.google.android.gms.internal.gtm;

import java.util.List;

/* access modifiers changed from: package-private */
public abstract class zzvy {
    private static final zzvy zza = new zzvu(null);
    private static final zzvy zzb = new zzvw(null);

    /* synthetic */ zzvy(zzvx zzvx) {
    }

    static zzvy zzd() {
        return zza;
    }

    static zzvy zze() {
        return zzb;
    }

    /* access modifiers changed from: package-private */
    public abstract <L> List<L> zza(Object obj, long j);

    /* access modifiers changed from: package-private */
    public abstract void zzb(Object obj, long j);

    /* access modifiers changed from: package-private */
    public abstract <L> void zzc(Object obj, Object obj2, long j);
}
