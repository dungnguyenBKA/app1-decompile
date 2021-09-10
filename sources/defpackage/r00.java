package defpackage;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: r00  reason: default package */
public final class r00 {
    public static ExecutorService a(String str) {
        ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new p00(str, new AtomicLong(1)), new ThreadPoolExecutor.DiscardPolicy()));
        Runtime.getRuntime().addShutdownHook(new Thread(new q00(str, unconfigurableExecutorService, 2, TimeUnit.SECONDS), ic.i("Crashlytics Shutdown Hook for ", str)));
        return unconfigurableExecutorService;
    }
}
