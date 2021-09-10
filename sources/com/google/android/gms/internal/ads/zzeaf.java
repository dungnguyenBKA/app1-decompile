package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzeaf<V> implements Runnable {
    @NullableDecl
    private zzead<V> zzibb;

    zzeaf(zzead<V> zzead) {
        this.zzibb = zzead;
    }

    public final void run() {
        zzdzw<? extends V> zzdzw;
        zzead<V> zzead = this.zzibb;
        if (zzead != null && (zzdzw = zzead.zziaz) != null) {
            this.zzibb = null;
            if (zzdzw.isDone()) {
                zzead.setFuture(zzdzw);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = zzead.zziba;
                ((zzead) zzead).zziba = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (abs > 10) {
                            StringBuilder sb = new StringBuilder(str.length() + 66);
                            sb.append(str);
                            sb.append(" (timeout delayed by ");
                            sb.append(abs);
                            sb.append(" ms after scheduled time)");
                            str = sb.toString();
                        }
                    } catch (Throwable th) {
                        zzead.setException(new zzeai(str));
                        throw th;
                    }
                }
                String valueOf = String.valueOf(str);
                String valueOf2 = String.valueOf(zzdzw);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 2 + valueOf2.length());
                sb2.append(valueOf);
                sb2.append(": ");
                sb2.append(valueOf2);
                zzead.setException(new zzeai(sb2.toString()));
            } finally {
                zzdzw.cancel(true);
            }
        }
    }
}
