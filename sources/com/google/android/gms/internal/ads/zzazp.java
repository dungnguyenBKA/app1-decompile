package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class zzazp {
    public static final zzdzv zzeic;
    public static final zzdzv zzeid;
    public static final zzdzv zzeie;
    public static final ScheduledExecutorService zzeif = new zzazs(3, zzfa("Schedule"));
    public static final zzdzv zzeig = zza(new zzazu());
    public static final zzdzv zzeih = zza(zzdzy.zzbaf());

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zzeic = zza(new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10, timeUnit, new SynchronousQueue(), zzfa("Default")));
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10, timeUnit, new LinkedBlockingQueue(), zzfa("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        zzeid = zza(threadPoolExecutor);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10, timeUnit, new LinkedBlockingQueue(), zzfa("Activeview"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        zzeie = zza(threadPoolExecutor2);
    }

    private static zzdzv zza(Executor executor) {
        return new zzazt(executor, null);
    }

    private static ThreadFactory zzfa(String str) {
        return new zzazr(str);
    }
}
