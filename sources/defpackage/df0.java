package defpackage;

import defpackage.xd0;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* renamed from: df0  reason: default package */
public class df0 extends xd0.b implements be0 {
    private final ScheduledExecutorService b;
    volatile boolean c;

    public df0(ThreadFactory threadFactory) {
        this.b = hf0.a(threadFactory);
    }

    @Override // defpackage.xd0.b
    public be0 b(Runnable runnable) {
        return c(runnable, 0, null);
    }

    @Override // defpackage.xd0.b
    public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
        if (this.c) {
            return me0.INSTANCE;
        }
        return d(runnable, j, timeUnit, null);
    }

    public gf0 d(Runnable runnable, long j, TimeUnit timeUnit, ke0 ke0) {
        Future<?> future;
        Objects.requireNonNull(runnable, "run is null");
        gf0 gf0 = new gf0(runnable, ke0);
        if (ke0 != null && !ke0.b(gf0)) {
            return gf0;
        }
        if (j <= 0) {
            try {
                future = this.b.submit((Callable) gf0);
            } catch (RejectedExecutionException e) {
                if (ke0 != null) {
                    ke0.a(gf0);
                }
                mf0.f(e);
            }
        } else {
            future = this.b.schedule((Callable) gf0, j, timeUnit);
        }
        gf0.a(future);
        return gf0;
    }

    @Override // defpackage.be0
    public void e() {
        if (!this.c) {
            this.c = true;
            this.b.shutdownNow();
        }
    }

    public be0 f(Runnable runnable, long j, TimeUnit timeUnit) {
        Future future;
        Objects.requireNonNull(runnable, "run is null");
        ff0 ff0 = new ff0(runnable);
        if (j <= 0) {
            try {
                future = this.b.submit(ff0);
            } catch (RejectedExecutionException e) {
                mf0.f(e);
                return me0.INSTANCE;
            }
        } else {
            future = this.b.schedule(ff0, j, timeUnit);
        }
        ff0.a(future);
        return ff0;
    }

    public void g() {
        if (!this.c) {
            this.c = true;
            this.b.shutdown();
        }
    }
}
