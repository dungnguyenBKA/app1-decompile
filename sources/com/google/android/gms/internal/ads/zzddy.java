package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdfj;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzddy<S extends zzdfj<?>> implements zzdfi<S> {
    private final ScheduledExecutorService zzfth;
    private final zzdfi<S> zzhbo;
    private final long zzhcl;

    public zzddy(zzdfi<S> zzdfi, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zzhbo = zzdfi;
        this.zzhcl = j;
        this.zzfth = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<S> zzasy() {
        zzdzw<S> zzasy = this.zzhbo.zzasy();
        long j = this.zzhcl;
        if (j > 0) {
            zzasy = zzdzk.zza(zzasy, j, TimeUnit.MILLISECONDS, this.zzfth);
        }
        return zzdzk.zzb(zzasy, Throwable.class, zzdeb.zzboq, zzazp.zzeih);
    }
}
