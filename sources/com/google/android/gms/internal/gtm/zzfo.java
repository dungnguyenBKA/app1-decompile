package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.util.d;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class zzfo {
    private final d zza;
    private long zzb;

    public zzfo(d dVar) {
        Objects.requireNonNull(dVar, "null reference");
        this.zza = dVar;
    }

    public final void zza() {
        this.zzb = 0;
    }

    public final void zzb() {
        this.zzb = this.zza.b();
    }

    public final boolean zzc(long j) {
        return this.zzb == 0 || this.zza.b() - this.zzb > j;
    }

    public zzfo(d dVar, long j) {
        Objects.requireNonNull(dVar, "null reference");
        this.zza = dVar;
        this.zzb = j;
    }
}
