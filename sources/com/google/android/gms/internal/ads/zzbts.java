package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

public final class zzbts extends zzbwf<zzbtw> {
    private final d zzbqg;
    @GuardedBy("this")
    private boolean zzfsp = false;
    private final ScheduledExecutorService zzfth;
    @GuardedBy("this")
    private long zzftj = -1;
    @GuardedBy("this")
    private long zzftk = -1;
    @GuardedBy("this")
    private ScheduledFuture<?> zzfzq;

    public zzbts(ScheduledExecutorService scheduledExecutorService, d dVar) {
        super(Collections.emptySet());
        this.zzfth = scheduledExecutorService;
        this.zzbqg = dVar;
    }

    /* access modifiers changed from: private */
    public final void zzalt() {
        zza(zzbtv.zzfzg);
    }

    private final synchronized void zzfd(long j) {
        ScheduledFuture<?> scheduledFuture = this.zzfzq;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            this.zzfzq.cancel(true);
        }
        this.zzftj = this.zzbqg.b() + j;
        this.zzfzq = this.zzfth.schedule(new zzbtx(this), j, TimeUnit.MILLISECONDS);
    }

    public final synchronized void onPause() {
        if (!this.zzfsp) {
            ScheduledFuture<?> scheduledFuture = this.zzfzq;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                this.zzftk = -1;
            } else {
                this.zzfzq.cancel(true);
                this.zzftk = this.zzftj - this.zzbqg.b();
            }
            this.zzfsp = true;
        }
    }

    public final synchronized void onResume() {
        if (this.zzfsp) {
            if (this.zzftk > 0 && this.zzfzq.isCancelled()) {
                zzfd(this.zzftk);
            }
            this.zzfsp = false;
        }
    }

    public final synchronized void zzals() {
        this.zzfsp = false;
        zzfd(0);
    }

    public final synchronized void zzdx(int i) {
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis((long) i);
            if (this.zzfsp) {
                long j = this.zzftk;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.zzftk = millis;
                return;
            }
            long b = this.zzbqg.b();
            long j2 = this.zzftj;
            if (b > j2 || j2 - this.zzbqg.b() > millis) {
                zzfd(millis);
            }
        }
    }
}
