package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

@ParametersAreNonnullByDefault
public final class zzama {
    private final Object zzdko = new Object();
    private final Object zzdkp = new Object();
    @GuardedBy("lockClient")
    private zzamj zzdkq;
    @GuardedBy("lockService")
    private zzamj zzdkr;

    private static Context zzl(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final zzamj zza(Context context, zzazn zzazn) {
        zzamj zzamj;
        synchronized (this.zzdkp) {
            if (this.zzdkr == null) {
                this.zzdkr = new zzamj(zzl(context), zzazn, zzadq.zzdeo.get());
            }
            zzamj = this.zzdkr;
        }
        return zzamj;
    }

    public final zzamj zzb(Context context, zzazn zzazn) {
        zzamj zzamj;
        synchronized (this.zzdko) {
            if (this.zzdkq == null) {
                this.zzdkq = new zzamj(zzl(context), zzazn, (String) zzwr.zzqr().zzd(zzabp.zzcmj));
            }
            zzamj = this.zzdkq;
        }
        return zzamj;
    }
}
