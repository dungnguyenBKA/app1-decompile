package defpackage;

import defpackage.xd0;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: bf0  reason: default package */
public final class bf0 extends xd0 {
    static final ef0 c;
    static final ef0 d;
    private static final TimeUnit e = TimeUnit.SECONDS;
    static final c f;
    static final a g;
    final ThreadFactory a;
    final AtomicReference<a> b;

    /* renamed from: bf0$a */
    static final class a implements Runnable {
        private final long b;
        private final ConcurrentLinkedQueue<c> c;
        final ae0 d;
        private final ScheduledExecutorService e;
        private final Future<?> f;
        private final ThreadFactory g;

        a(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            long nanos = timeUnit != null ? timeUnit.toNanos(j) : 0;
            this.b = nanos;
            this.c = new ConcurrentLinkedQueue<>();
            this.d = new ae0();
            this.g = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, bf0.d);
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.e = scheduledExecutorService;
            this.f = scheduledFuture;
        }

        /* access modifiers changed from: package-private */
        public c a() {
            if (this.d.d()) {
                return bf0.f;
            }
            while (!this.c.isEmpty()) {
                c poll = this.c.poll();
                if (poll != null) {
                    return poll;
                }
            }
            c cVar = new c(this.g);
            this.d.b(cVar);
            return cVar;
        }

        /* access modifiers changed from: package-private */
        public void b(c cVar) {
            cVar.j(System.nanoTime() + this.b);
            this.c.offer(cVar);
        }

        /* access modifiers changed from: package-private */
        public void c() {
            this.d.e();
            Future<?> future = this.f;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.e;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        public void run() {
            if (!this.c.isEmpty()) {
                long nanoTime = System.nanoTime();
                Iterator<c> it = this.c.iterator();
                while (it.hasNext()) {
                    c next = it.next();
                    if (next.i() > nanoTime) {
                        return;
                    }
                    if (this.c.remove(next) && this.d.c(next)) {
                        next.e();
                    }
                }
            }
        }
    }

    /* renamed from: bf0$b */
    static final class b extends xd0.b {
        private final ae0 b;
        private final a c;
        private final c d;
        final AtomicBoolean e = new AtomicBoolean();

        b(a aVar) {
            this.c = aVar;
            this.b = new ae0();
            this.d = aVar.a();
        }

        @Override // defpackage.xd0.b
        public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.b.d()) {
                return me0.INSTANCE;
            }
            return this.d.d(runnable, j, timeUnit, this.b);
        }

        @Override // defpackage.be0
        public void e() {
            if (this.e.compareAndSet(false, true)) {
                this.b.e();
                this.c.b(this.d);
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: bf0$c */
    public static final class c extends df0 {
        private long d = 0;

        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }

        public long i() {
            return this.d;
        }

        public void j(long j) {
            this.d = j;
        }
    }

    static {
        c cVar = new c(new ef0("RxCachedThreadSchedulerShutdown"));
        f = cVar;
        cVar.e();
        int max = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        ef0 ef0 = new ef0("RxCachedThreadScheduler", max);
        c = ef0;
        d = new ef0("RxCachedWorkerPoolEvictor", max);
        a aVar = new a(0, null, ef0);
        g = aVar;
        aVar.c();
    }

    public bf0() {
        ef0 ef0 = c;
        this.a = ef0;
        a aVar = g;
        AtomicReference<a> atomicReference = new AtomicReference<>(aVar);
        this.b = atomicReference;
        a aVar2 = new a(60, e, ef0);
        if (!atomicReference.compareAndSet(aVar, aVar2)) {
            aVar2.c();
        }
    }

    @Override // defpackage.xd0
    public xd0.b a() {
        return new b(this.b.get());
    }
}
