package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zza;
import java.util.concurrent.Future;

/* access modifiers changed from: package-private */
public final class w0 implements Runnable {
    private final /* synthetic */ Future b;
    private final /* synthetic */ Runnable c;

    w0(Future future, Runnable runnable) {
        this.b = future;
        this.c = runnable;
    }

    public final void run() {
        if (!this.b.isDone() && !this.b.isCancelled()) {
            this.b.cancel(true);
            zza.zzb("BillingClient", "Async task is taking too long, cancel it!");
            Runnable runnable = this.c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
