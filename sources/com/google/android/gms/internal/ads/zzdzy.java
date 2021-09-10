package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

public final class zzdzy {
    public static zzdzv zza(ExecutorService executorService) {
        if (executorService instanceof zzdzv) {
            return (zzdzv) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            return new zzdzz((ScheduledExecutorService) executorService);
        }
        return new zzeaa(executorService);
    }

    public static Executor zzbaf() {
        return zzdzd.INSTANCE;
    }

    static Executor zza(Executor executor, zzdyk<?> zzdyk) {
        zzdwl.checkNotNull(executor);
        zzdwl.checkNotNull(zzdyk);
        if (executor == zzdzd.INSTANCE) {
            return executor;
        }
        return new zzdzx(executor, zzdyk);
    }
}
