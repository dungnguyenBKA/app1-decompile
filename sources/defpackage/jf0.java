package defpackage;

import defpackage.xd0;
import java.util.Objects;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: jf0  reason: default package */
public final class jf0 extends xd0 {
    private static final jf0 a = new jf0();

    /* renamed from: jf0$a */
    static final class a implements Runnable {
        private final Runnable b;
        private final c c;
        private final long d;

        a(Runnable runnable, c cVar, long j) {
            this.b = runnable;
            this.c = cVar;
            this.d = j;
        }

        public void run() {
            if (!this.c.e) {
                long a = this.c.a(TimeUnit.MILLISECONDS);
                long j = this.d;
                if (j > a) {
                    try {
                        Thread.sleep(j - a);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        mf0.f(e);
                        return;
                    }
                }
                if (!this.c.e) {
                    this.b.run();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: jf0$b */
    public static final class b implements Comparable<b> {
        final Runnable b;
        final long c;
        final int d;
        volatile boolean e;

        b(Runnable runnable, Long l, int i) {
            this.b = runnable;
            this.c = l.longValue();
            this.d = i;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // java.lang.Comparable
        public int compareTo(b bVar) {
            b bVar2 = bVar;
            long j = this.c;
            long j2 = bVar2.c;
            int i = 0;
            int i2 = j < j2 ? -1 : j > j2 ? 1 : 0;
            if (i2 != 0) {
                return i2;
            }
            int i3 = this.d;
            int i4 = bVar2.d;
            if (i3 < i4) {
                i = -1;
            } else if (i3 > i4) {
                i = 1;
            }
            return i;
        }
    }

    /* renamed from: jf0$c */
    static final class c extends xd0.b implements be0 {
        final PriorityBlockingQueue<b> b = new PriorityBlockingQueue<>();
        private final AtomicInteger c = new AtomicInteger();
        final AtomicInteger d = new AtomicInteger();
        volatile boolean e;

        /* access modifiers changed from: package-private */
        /* renamed from: jf0$c$a */
        public final class a implements Runnable {
            final b b;

            a(b bVar) {
                this.b = bVar;
            }

            public void run() {
                this.b.e = true;
                c.this.b.remove(this.b);
            }
        }

        c() {
        }

        @Override // defpackage.xd0.b
        public be0 b(Runnable runnable) {
            return d(runnable, a(TimeUnit.MILLISECONDS));
        }

        @Override // defpackage.xd0.b
        public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
            long millis = timeUnit.toMillis(j) + a(TimeUnit.MILLISECONDS);
            return d(new a(runnable, this, millis), millis);
        }

        /* access modifiers changed from: package-private */
        public be0 d(Runnable runnable, long j) {
            me0 me0 = me0.INSTANCE;
            if (this.e) {
                return me0;
            }
            b bVar = new b(runnable, Long.valueOf(j), this.d.incrementAndGet());
            this.b.add(bVar);
            if (this.c.getAndIncrement() != 0) {
                return ce0.a(new a(bVar));
            }
            int i = 1;
            while (!this.e) {
                b poll = this.b.poll();
                if (poll == null) {
                    i = this.c.addAndGet(-i);
                    if (i == 0) {
                        return me0;
                    }
                } else if (!poll.e) {
                    poll.b.run();
                }
            }
            this.b.clear();
            return me0;
        }

        @Override // defpackage.be0
        public void e() {
            this.e = true;
        }
    }

    jf0() {
    }

    public static jf0 d() {
        return a;
    }

    @Override // defpackage.xd0
    public xd0.b a() {
        return new c();
    }

    @Override // defpackage.xd0
    public be0 b(Runnable runnable) {
        runnable.run();
        return me0.INSTANCE;
    }

    @Override // defpackage.xd0
    public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j);
            Objects.requireNonNull(runnable, "run is null");
            runnable.run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            mf0.f(e);
        }
        return me0.INSTANCE;
    }
}
