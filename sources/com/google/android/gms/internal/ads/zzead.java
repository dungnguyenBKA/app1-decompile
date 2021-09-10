package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzead<V> extends zzdze<V> {
    @NullableDecl
    private zzdzw<V> zziaz;
    @NullableDecl
    private ScheduledFuture<?> zziba;

    private zzead(zzdzw<V> zzdzw) {
        this.zziaz = (zzdzw) zzdwl.checkNotNull(zzdzw);
    }

    static <V> zzdzw<V> zzb(zzdzw<V> zzdzw, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzead zzead = new zzead(zzdzw);
        zzeaf zzeaf = new zzeaf(zzead);
        zzead.zziba = scheduledExecutorService.schedule(zzeaf, j, timeUnit);
        zzdzw.addListener(zzeaf, zzdzd.INSTANCE);
        return zzead;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void afterDone() {
        maybePropagateCancellationTo(this.zziaz);
        ScheduledFuture<?> scheduledFuture = this.zziba;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zziaz = null;
        this.zziba = null;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String pendingToString() {
        zzdzw<V> zzdzw = this.zziaz;
        ScheduledFuture<?> scheduledFuture = this.zziba;
        if (zzdzw == null) {
            return null;
        }
        String valueOf = String.valueOf(zzdzw);
        String e = ic.e(valueOf.length() + 14, "inputFuture=[", valueOf, "]");
        if (scheduledFuture == null) {
            return e;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return e;
        }
        String valueOf2 = String.valueOf(e);
        StringBuilder sb = new StringBuilder(valueOf2.length() + 43);
        sb.append(valueOf2);
        sb.append(", remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }
}
