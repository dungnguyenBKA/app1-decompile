package androidx.work.impl.background.systemalarm;

import androidx.work.h;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
public class g {
    private static final String f = h.f("WorkTimer");
    private final ThreadFactory a;
    private final ScheduledExecutorService b;
    final Map<String, c> c = new HashMap();
    final Map<String, b> d = new HashMap();
    final Object e = new Object();

    class a implements ThreadFactory {
        private int b = 0;

        a(g gVar) {
        }

        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            StringBuilder q = ic.q("WorkManager-WorkTimer-thread-");
            q.append(this.b);
            newThread.setName(q.toString());
            this.b++;
            return newThread;
        }
    }

    /* access modifiers changed from: package-private */
    public interface b {
        void a(String str);
    }

    /* access modifiers changed from: package-private */
    public static class c implements Runnable {
        private final g b;
        private final String c;

        c(g gVar, String str) {
            this.b = gVar;
            this.c = str;
        }

        public void run() {
            synchronized (this.b.e) {
                if (this.b.c.remove(this.c) != null) {
                    b remove = this.b.d.remove(this.c);
                    if (remove != null) {
                        remove.a(this.c);
                    }
                } else {
                    h.c().a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.c), new Throwable[0]);
                }
            }
        }
    }

    g() {
        a aVar = new a(this);
        this.a = aVar;
        this.b = Executors.newSingleThreadScheduledExecutor(aVar);
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (!this.b.isShutdown()) {
            this.b.shutdownNow();
        }
    }

    /* access modifiers changed from: package-private */
    public void b(String str, long j, b bVar) {
        synchronized (this.e) {
            h.c().a(f, String.format("Starting timer for %s", str), new Throwable[0]);
            c(str);
            c cVar = new c(this, str);
            this.c.put(str, cVar);
            this.d.put(str, bVar);
            this.b.schedule(cVar, j, TimeUnit.MILLISECONDS);
        }
    }

    /* access modifiers changed from: package-private */
    public void c(String str) {
        synchronized (this.e) {
            if (this.c.remove(str) != null) {
                h.c().a(f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.d.remove(str);
            }
        }
    }
}
