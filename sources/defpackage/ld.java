package defpackage;

import android.os.Process;
import com.bumptech.glide.load.g;
import defpackage.be;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* access modifiers changed from: package-private */
/* renamed from: ld  reason: default package */
public final class ld {
    private final boolean a;
    private final Executor b;
    final Map<g, b> c = new HashMap();
    private final ReferenceQueue<be<?>> d = new ReferenceQueue<>();
    private be.a e;

    /* renamed from: ld$a */
    class a implements ThreadFactory {

        /* renamed from: ld$a$a  reason: collision with other inner class name */
        class RunnableC0114a implements Runnable {
            final /* synthetic */ Runnable b;

            RunnableC0114a(a aVar, Runnable runnable) {
                this.b = runnable;
            }

            public void run() {
                Process.setThreadPriority(10);
                this.b.run();
            }
        }

        a() {
        }

        public Thread newThread(Runnable runnable) {
            return new Thread(new RunnableC0114a(this, runnable), "glide-active-resources");
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ld$b */
    public static final class b extends WeakReference<be<?>> {
        final g a;
        final boolean b;
        he<?> c;

        b(g gVar, be<?> beVar, ReferenceQueue<? super be<?>> referenceQueue, boolean z) {
            super(beVar, referenceQueue);
            he<?> heVar;
            Objects.requireNonNull(gVar, "Argument must not be null");
            this.a = gVar;
            if (!beVar.f() || !z) {
                heVar = null;
            } else {
                heVar = beVar.e();
                Objects.requireNonNull(heVar, "Argument must not be null");
            }
            this.c = heVar;
            this.b = beVar.f();
        }
    }

    ld(boolean z) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new a());
        this.a = z;
        this.b = newSingleThreadExecutor;
        newSingleThreadExecutor.execute(new md(this));
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(g gVar, be<?> beVar) {
        b put = this.c.put(gVar, new b(gVar, beVar, this.d, this.a));
        if (put != null) {
            put.c = null;
            put.clear();
        }
    }

    /* access modifiers changed from: package-private */
    public void b() {
        while (true) {
            try {
                c((b) this.d.remove());
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c(b bVar) {
        synchronized (this) {
            this.c.remove(bVar.a);
            if (bVar.b) {
                he<?> heVar = bVar.c;
                if (heVar != null) {
                    this.e.a(bVar.a, new be<>(heVar, true, false, bVar.a, this.e));
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void d(be.a aVar) {
        synchronized (aVar) {
            synchronized (this) {
                this.e = aVar;
            }
        }
    }
}
