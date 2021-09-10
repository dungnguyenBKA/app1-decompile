package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.d;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

public final class zzbkq implements zzrm {
    private final d zzbqg;
    @GuardedBy("this")
    private Runnable zzedk = null;
    private final ScheduledExecutorService zzfth;
    @GuardedBy("this")
    private ScheduledFuture<?> zzfti;
    @GuardedBy("this")
    private long zzftj = -1;
    @GuardedBy("this")
    private long zzftk = -1;
    @GuardedBy("this")
    private boolean zzftl = false;

    public zzbkq(ScheduledExecutorService scheduledExecutorService, d dVar) {
        this.zzfth = scheduledExecutorService;
        this.zzbqg = dVar;
        zzr.zzku().zza(this);
    }

    private final synchronized void zzajc() {
        if (!this.zzftl) {
            ScheduledFuture<?> scheduledFuture = this.zzfti;
            if (scheduledFuture == null || scheduledFuture.isDone()) {
                this.zzftk = -1;
            } else {
                this.zzfti.cancel(true);
                this.zzftk = this.zzftj - this.zzbqg.b();
            }
            this.zzftl = true;
        }
    }

    private final synchronized void zzajd() {
        ScheduledFuture<?> scheduledFuture;
        if (this.zzftl) {
            if (this.zzftk > 0 && (scheduledFuture = this.zzfti) != null && scheduledFuture.isCancelled()) {
                this.zzfti = this.zzfth.schedule(this.zzedk, this.zzftk, TimeUnit.MILLISECONDS);
            }
            this.zzftl = false;
        }
    }

    public final synchronized void zza(int i, Runnable runnable) {
        this.zzedk = runnable;
        long j = (long) i;
        this.zzftj = this.zzbqg.b() + j;
        this.zzfti = this.zzfth.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final void zzp(boolean z) {
        if (z) {
            zzajd();
        } else {
            zzajc();
        }
    }
}
