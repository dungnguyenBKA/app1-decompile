package defpackage;

import defpackage.xd0;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: if0  reason: default package */
public final class if0 extends xd0 {
    static final ef0 b = new ef0("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    static final ScheduledExecutorService c;
    final AtomicReference<ScheduledExecutorService> a;

    /* renamed from: if0$a */
    static final class a extends xd0.b {
        final ScheduledExecutorService b;
        final ae0 c = new ae0();
        volatile boolean d;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.b = scheduledExecutorService;
        }

        @Override // defpackage.xd0.b
        public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
            Future<?> future;
            me0 me0 = me0.INSTANCE;
            if (this.d) {
                return me0;
            }
            Objects.requireNonNull(runnable, "run is null");
            gf0 gf0 = new gf0(runnable, this.c);
            this.c.b(gf0);
            if (j <= 0) {
                try {
                    future = this.b.submit((Callable) gf0);
                } catch (RejectedExecutionException e) {
                    e();
                    mf0.f(e);
                    return me0;
                }
            } else {
                future = this.b.schedule((Callable) gf0, j, timeUnit);
            }
            gf0.a(future);
            return gf0;
        }

        @Override // defpackage.be0
        public void e() {
            if (!this.d) {
                this.d = true;
                this.c.e();
            }
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        c = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
    }

    public if0() {
        ef0 ef0 = b;
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.a = atomicReference;
        atomicReference.lazySet(hf0.a(ef0));
    }

    @Override // defpackage.xd0
    public xd0.b a() {
        return new a(this.a.get());
    }

    @Override // defpackage.xd0
    public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
        Future future;
        Objects.requireNonNull(runnable, "run is null");
        ff0 ff0 = new ff0(runnable);
        if (j <= 0) {
            try {
                future = this.a.get().submit(ff0);
            } catch (RejectedExecutionException e) {
                mf0.f(e);
                return me0.INSTANCE;
            }
        } else {
            future = this.a.get().schedule(ff0, j, timeUnit);
        }
        ff0.a(future);
        return ff0;
    }
}
