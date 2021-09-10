package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import com.camerasideas.collagemaker.photoproc.graphicsitems.g;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class a<Params, Progress, Result> {
    private static final ThreadFactory d;
    public static final ExecutorService e;
    private static final d f = new d(null);
    private final g<Params, Result> a;
    private final FutureTask<Result> b;
    private volatile f c = f.PENDING;

    /* renamed from: com.camerasideas.collagemaker.photoproc.graphicsitems.a$a  reason: collision with other inner class name */
    class ThreadFactoryC0034a implements ThreadFactory {
        private final AtomicInteger b = new AtomicInteger(1);

        ThreadFactoryC0034a() {
        }

        public Thread newThread(Runnable runnable) {
            StringBuilder q = ic.q("PreReadTask #");
            q.append(this.b.getAndIncrement());
            return new Thread(runnable, q.toString());
        }
    }

    class b extends g<Params, Result> {
        b() {
            super(null);
        }

        @Override // java.util.concurrent.Callable
        public Result call() {
            Process.setThreadPriority(10);
            a aVar = a.this;
            Params[] paramsArr = this.b;
            g.c cVar = (g.c) aVar;
            Objects.requireNonNull(cVar);
            g gVar = g.this;
            int b = g.b(gVar, gVar.b);
            if (b != 0) {
                bm.d(g.this.b);
            }
            return (Result) Integer.valueOf(b);
        }
    }

    class c extends FutureTask<Result> {
        c(Callable callable) {
            super(callable);
        }

        /* access modifiers changed from: protected */
        public void done() {
            Object obj = null;
            try {
                obj = get();
            } catch (InterruptedException e) {
                em.h("BaseAsyncTask", c2.p(e));
            } catch (ExecutionException e2) {
                em.h("BaseAsyncTask", c2.p(e2));
            } catch (CancellationException unused) {
                a.f.obtainMessage(3, new e(a.this, null)).sendToTarget();
                return;
            } catch (Throwable th) {
                em.h("BaseAsyncTask", c2.p(th));
            }
            a.f.obtainMessage(1, new e(a.this, obj)).sendToTarget();
        }
    }

    /* access modifiers changed from: private */
    public static class d extends Handler {
        d(ThreadFactoryC0034a aVar) {
        }

        public void handleMessage(Message message) {
            e eVar = (e) message.obj;
            int i = message.what;
            if (i == 1) {
                a.b(eVar.a, eVar.b[0]);
            } else if (i == 2) {
                Objects.requireNonNull(eVar.a);
            } else if (i == 3) {
                Objects.requireNonNull(eVar.a);
            }
        }
    }

    private static class e<Data> {
        final a a;
        final Data[] b;

        e(a aVar, Data... dataArr) {
            this.a = aVar;
            this.b = dataArr;
        }
    }

    public enum f {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* access modifiers changed from: private */
    public static abstract class g<Params, Result> implements Callable<Result> {
        Params[] b;

        g(ThreadFactoryC0034a aVar) {
        }
    }

    static {
        ThreadFactoryC0034a aVar = new ThreadFactoryC0034a();
        d = aVar;
        e = Executors.newFixedThreadPool(1, aVar);
    }

    public a() {
        b bVar = new b();
        this.a = bVar;
        this.b = new c(bVar);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.camerasideas.collagemaker.photoproc.graphicsitems.a */
    /* JADX WARN: Multi-variable type inference failed */
    static void b(a aVar, Object obj) {
        if (aVar.e()) {
            obj = null;
        }
        aVar.f(obj);
        aVar.c = f.FINISHED;
    }

    public static ExecutorService c(int i) {
        return Executors.newFixedThreadPool(i, d);
    }

    public final a<Params, Progress, Result> d(ExecutorService executorService, Params... paramsArr) {
        if (this.c != f.PENDING) {
            int ordinal = this.c.ordinal();
            if (ordinal == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            } else if (ordinal == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.c = f.RUNNING;
        this.a.b = paramsArr;
        executorService.execute(this.b);
        return this;
    }

    public final boolean e() {
        return this.b.isCancelled();
    }

    /* access modifiers changed from: protected */
    public abstract void f(Result result);
}
