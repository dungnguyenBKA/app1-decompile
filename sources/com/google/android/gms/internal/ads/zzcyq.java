package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzcyq implements zzbtt {
    private final AtomicReference<zzyw> zzgyj = new AtomicReference<>();

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzb(zzvu zzvu) {
        zzdkd.zza(this.zzgyj, new zzcyp(zzvu));
    }

    public final void zzc(zzyw zzyw) {
        this.zzgyj.set(zzyw);
    }
}
