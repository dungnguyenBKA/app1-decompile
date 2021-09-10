package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public interface zzdzv extends ExecutorService {
    <T> zzdzw<T> zze(Callable<T> callable);

    zzdzw<?> zzg(Runnable runnable);
}
