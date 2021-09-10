package defpackage;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: lf  reason: default package */
public final class lf implements ExecutorService {
    private static final long c = TimeUnit.SECONDS.toMillis(10);
    private static volatile int d;
    private final ExecutorService b;

    /* renamed from: lf$a */
    public static final class a {
        private final boolean a;
        private int b;
        private int c;
        private String d;

        a(boolean z) {
            this.a = z;
        }

        public lf a() {
            if (!TextUtils.isEmpty(this.d)) {
                return new lf(new ThreadPoolExecutor(this.b, this.c, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new b(this.d, c.b, this.a)));
            }
            StringBuilder q = ic.q("Name must be non-null and non-empty, but given: ");
            q.append(this.d);
            throw new IllegalArgumentException(q.toString());
        }

        public a b(String str) {
            this.d = str;
            return this;
        }

        public a c(int i) {
            this.b = i;
            this.c = i;
            return this;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: lf$b */
    public static final class b implements ThreadFactory {
        private final String b;
        final boolean c;
        private int d;

        /* renamed from: lf$b$a */
        class a extends Thread {
            a(Runnable runnable, String str) {
                super(runnable, str);
            }

            public void run() {
                Process.setThreadPriority(9);
                if (b.this.c) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    Objects.requireNonNull(b.this);
                    ((c.a) c.b).a(th);
                }
            }
        }

        b(String str, c cVar, boolean z) {
            this.b = str;
            this.c = z;
        }

        public synchronized Thread newThread(Runnable runnable) {
            a aVar;
            aVar = new a(runnable, "glide-" + this.b + "-thread-" + this.d);
            this.d = this.d + 1;
            return aVar;
        }
    }

    /* renamed from: lf$c */
    public interface c {
        public static final c a;
        public static final c b;

        /* renamed from: lf$c$a */
        class a implements c {
            a() {
            }

            public void a(Throwable th) {
                if (Log.isLoggable("GlideExecutor", 6)) {
                    Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                }
            }
        }

        static {
            a aVar = new a();
            a = aVar;
            b = aVar;
        }
    }

    lf(ExecutorService executorService) {
        this.b = executorService;
    }

    public static int a() {
        if (d == 0) {
            d = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        return d;
    }

    public static lf b() {
        int i = a() >= 4 ? 2 : 1;
        a aVar = new a(true);
        aVar.c(i);
        aVar.b("animation");
        return aVar.a();
    }

    public static lf c() {
        a aVar = new a(true);
        aVar.c(1);
        aVar.b("disk-cache");
        return aVar.a();
    }

    public static lf d() {
        a aVar = new a(false);
        aVar.c(a());
        aVar.b("source");
        return aVar.a();
    }

    public static lf e() {
        return new lf(new ThreadPoolExecutor(0, Integer.MAX_VALUE, c, TimeUnit.MILLISECONDS, new SynchronousQueue(), new b("source-unlimited", c.b, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.b.awaitTermination(j, timeUnit);
    }

    public void execute(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        return this.b.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        return (T) this.b.invokeAny(collection);
    }

    public boolean isShutdown() {
        return this.b.isShutdown();
    }

    public boolean isTerminated() {
        return this.b.isTerminated();
    }

    public void shutdown() {
        this.b.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.b.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.b.submit(runnable);
    }

    public String toString() {
        return this.b.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return this.b.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return (T) this.b.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.b.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.b.submit(callable);
    }
}
