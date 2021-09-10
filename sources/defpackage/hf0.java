package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: hf0  reason: default package */
public final class hf0 {
    public static final boolean a;
    public static final int b;
    static final AtomicReference<ScheduledExecutorService> c = new AtomicReference<>();
    static final Map<ScheduledThreadPoolExecutor, Object> d = new ConcurrentHashMap();

    /* renamed from: hf0$a */
    static final class a implements Runnable {
        a() {
        }

        public void run() {
            Iterator it = new ArrayList(hf0.d.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    hf0.d.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x003f A[LOOP:0: B:13:0x003f->B:18:0x006a, LOOP_START] */
    /* JADX WARNING: Removed duplicated region for block: B:21:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
    static {
        /*
        // Method dump skipped, instructions count: 111
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hf0.<clinit>():void");
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (a && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            d.put((ScheduledThreadPoolExecutor) newScheduledThreadPool, newScheduledThreadPool);
        }
        return newScheduledThreadPool;
    }
}
