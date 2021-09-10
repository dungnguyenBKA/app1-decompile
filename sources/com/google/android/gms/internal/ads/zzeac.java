package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class zzeac<V> extends zzdzi<V> implements zzdzw<V>, ScheduledFuture<V> {
    private final ScheduledFuture<?> zziay;

    public zzeac(zzdzw<V> zzdzw, ScheduledFuture<?> scheduledFuture) {
        super(zzdzw);
        this.zziay = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzdzg
    public final boolean cancel(boolean z) {
        boolean cancel = super.cancel(z);
        if (cancel) {
            this.zziay.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.zziay.compareTo((Delayed) obj);
    }

    public final long getDelay(TimeUnit timeUnit) {
        return this.zziay.getDelay(timeUnit);
    }
}
