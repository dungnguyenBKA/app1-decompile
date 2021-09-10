package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

public final class zzq implements zzal {
    private final Executor zzaa;

    public zzq(Handler handler) {
        this.zzaa = new zzt(this, handler);
    }

    @Override // com.google.android.gms.internal.ads.zzal
    public final void zza(zzab<?> zzab, zzag<?> zzag) {
        zza(zzab, zzag, null);
    }

    @Override // com.google.android.gms.internal.ads.zzal
    public final void zza(zzab<?> zzab, zzag<?> zzag, Runnable runnable) {
        zzab.zzk();
        zzab.zzc("post-response");
        this.zzaa.execute(new zzs(zzab, zzag, runnable));
    }

    @Override // com.google.android.gms.internal.ads.zzal
    public final void zza(zzab<?> zzab, zzap zzap) {
        zzab.zzc("post-error");
        this.zzaa.execute(new zzs(zzab, zzag.zzc(zzap), null));
    }
}
