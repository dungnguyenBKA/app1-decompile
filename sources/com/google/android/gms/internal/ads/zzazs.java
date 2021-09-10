package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* access modifiers changed from: package-private */
public final class zzazs extends ScheduledThreadPoolExecutor {
    zzazs(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }

    public final void execute(Runnable runnable) {
        super.execute(zzdvh.zzayy().zzf(runnable));
    }
}
