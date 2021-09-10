package defpackage;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: ml  reason: default package */
public abstract class ml<Params, Progress, Result> {
    private static final ThreadFactory f;
    private static final BlockingQueue<Runnable> g;
    public static final Executor h;
    public static final Executor i;
    public static final Executor j;
    public static final Executor k;
    private static final e l = new e(null);
    private static volatile Executor m;
    private final h<Params, Result> a;
    private final FutureTask<Result> b;
    private volatile g c = g.PENDING;
    private final AtomicBoolean d = new AtomicBoolean();
    private final AtomicBoolean e = new AtomicBoolean();

    /* renamed from: ml$a */
    class a implements ThreadFactory {
        private final AtomicInteger b = new AtomicInteger(1);

        a() {
        }

        public Thread newThread(Runnable runnable) {
            StringBuilder q = ic.q("XXXXAsyncTask #");
            q.append(this.b.getAndIncrement());
            return new Thread(runnable, q.toString());
        }
    }

    /* renamed from: ml$b */
    class b extends h<Params, Result> {
        b() {
            super(null);
        }

        @Override // java.util.concurrent.Callable
        public Result call() {
            ml.this.e.set(true);
            Process.setThreadPriority(10);
            ml mlVar = ml.this;
            Result result = (Result) mlVar.f(this.b);
            mlVar.m(result);
            return result;
        }
    }

    /* renamed from: ml$c */
    class c extends FutureTask<Result> {
        c(Callable callable) {
            super(callable);
        }

        /* access modifiers changed from: protected */
        public void done() {
            try {
                ml.c(ml.this, get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occured while executing doInBackground()", e2.getCause());
            } catch (CancellationException unused) {
                ml.c(ml.this, null);
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: ml$d */
    public static class d<Data> {
        final ml a;
        final Data[] b;

        d(ml mlVar, Data... dataArr) {
            this.a = mlVar;
            this.b = dataArr;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: ml$e */
    public static class e extends Handler {
        e(a aVar) {
        }

        public void handleMessage(Message message) {
            d dVar = (d) message.obj;
            int i = message.what;
            if (i == 1) {
                ml.d(dVar.a, dVar.b[0]);
            } else if (i == 2) {
                Objects.requireNonNull(dVar.a);
            }
        }
    }

    @TargetApi(11)
    /* renamed from: ml$f */
    private static class f implements Executor {
        final ArrayDeque<Runnable> b = new ArrayDeque<>();
        Runnable c;

        /* renamed from: ml$f$a */
        class a implements Runnable {
            final /* synthetic */ Runnable b;

            a(Runnable runnable) {
                this.b = runnable;
            }

            public void run() {
                try {
                    this.b.run();
                } finally {
                    f.this.a();
                }
            }
        }

        f(a aVar) {
        }

        /* access modifiers changed from: protected */
        public synchronized void a() {
            Runnable poll = this.b.poll();
            this.c = poll;
            if (poll != null) {
                ml.h.execute(poll);
            }
        }

        public synchronized void execute(Runnable runnable) {
            this.b.offer(new a(runnable));
            if (this.c == null) {
                a();
            }
        }
    }

    /* renamed from: ml$g */
    public enum g {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* access modifiers changed from: private */
    /* renamed from: ml$h */
    public static abstract class h<Params, Result> implements Callable<Result> {
        Params[] b;

        h(a aVar) {
        }
    }

    static {
        a aVar = new a();
        f = aVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        g = linkedBlockingQueue;
        h = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, linkedBlockingQueue, aVar, new ThreadPoolExecutor.DiscardOldestPolicy());
        f fVar = new f(null);
        i = fVar;
        j = Executors.newFixedThreadPool(2, aVar);
        k = Executors.newFixedThreadPool(6, aVar);
        m = fVar;
    }

    public ml() {
        b bVar = new b();
        this.a = bVar;
        this.b = new c(bVar);
    }

    static void c(ml mlVar, Object obj) {
        if (!mlVar.e.get()) {
            mlVar.m(obj);
        }
    }

    static void d(ml mlVar, Object obj) {
        if (mlVar.j()) {
            mlVar.k(obj);
        } else {
            mlVar.l(obj);
        }
        mlVar.c = g.FINISHED;
    }

    public static void h(Runnable runnable) {
        m.execute(runnable);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Result m(Result result) {
        l.obtainMessage(1, new d(this, result)).sendToTarget();
        return result;
    }

    public final boolean e(boolean z) {
        this.d.set(true);
        return this.b.cancel(z);
    }

    /* access modifiers changed from: protected */
    public abstract Result f(Params... paramsArr);

    public final ml<Params, Progress, Result> g(Params... paramsArr) {
        i(m, paramsArr);
        return this;
    }

    public final ml<Params, Progress, Result> i(Executor executor, Params... paramsArr) {
        if (this.c != g.PENDING) {
            int ordinal = this.c.ordinal();
            if (ordinal == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            } else if (ordinal == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.c = g.RUNNING;
        this.a.b = paramsArr;
        executor.execute(this.b);
        return this;
    }

    public final boolean j() {
        return this.d.get();
    }

    /* access modifiers changed from: protected */
    public void k(Result result) {
    }

    /* access modifiers changed from: protected */
    public void l(Result result) {
    }
}
