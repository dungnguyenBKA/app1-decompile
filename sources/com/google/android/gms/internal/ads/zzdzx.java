package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* access modifiers changed from: package-private */
public final class zzdzx implements Executor {
    private final /* synthetic */ Executor zziat;
    private final /* synthetic */ zzdyk zziau;

    zzdzx(Executor executor, zzdyk zzdyk) {
        this.zziat = executor;
        this.zziau = zzdyk;
    }

    public final void execute(Runnable runnable) {
        try {
            this.zziat.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.zziau.setException(e);
        }
    }
}
