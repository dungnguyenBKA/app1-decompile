package defpackage;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* renamed from: xd0  reason: default package */
public abstract class xd0 {

    /* access modifiers changed from: package-private */
    /* renamed from: xd0$a */
    public static final class a implements be0, Runnable {
        final Runnable b;
        final b c;
        Thread d;

        a(Runnable runnable, b bVar) {
            this.b = runnable;
            this.c = bVar;
        }

        @Override // defpackage.be0
        public void e() {
            if (this.d == Thread.currentThread()) {
                b bVar = this.c;
                if (bVar instanceof df0) {
                    ((df0) bVar).g();
                    return;
                }
            }
            this.c.e();
        }

        public void run() {
            this.d = Thread.currentThread();
            try {
                this.b.run();
            } finally {
                e();
                this.d = null;
            }
        }
    }

    /* renamed from: xd0$b */
    public static abstract class b implements be0 {
        public long a(TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        public be0 b(Runnable runnable) {
            return c(runnable, 0, TimeUnit.NANOSECONDS);
        }

        public abstract be0 c(Runnable runnable, long j, TimeUnit timeUnit);
    }

    static {
        TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());
    }

    public abstract b a();

    public be0 b(Runnable runnable) {
        return c(runnable, 0, TimeUnit.NANOSECONDS);
    }

    public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
        b a2 = a();
        Objects.requireNonNull(runnable, "run is null");
        a aVar = new a(runnable, a2);
        a2.c(aVar, j, timeUnit);
        return aVar;
    }
}
