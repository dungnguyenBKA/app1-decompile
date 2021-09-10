package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* access modifiers changed from: package-private */
public final class zzav implements ThreadFactory {
    private final ThreadFactory zza = Executors.defaultThreadFactory();

    zzav(zzbr zzbr) {
    }

    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.zza.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
