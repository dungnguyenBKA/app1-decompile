package defpackage;

import defpackage.xd0;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: af0  reason: default package */
public final class af0 extends xd0 {
    static final b c;
    static final ef0 d;
    static final int e;
    static final c f;
    final ThreadFactory a;
    final AtomicReference<b> b;

    /* renamed from: af0$a */
    static final class a extends xd0.b {
        private final ne0 b;
        private final ae0 c;
        private final ne0 d;
        private final c e;
        volatile boolean f;

        a(c cVar) {
            this.e = cVar;
            ne0 ne0 = new ne0();
            this.b = ne0;
            ae0 ae0 = new ae0();
            this.c = ae0;
            ne0 ne02 = new ne0();
            this.d = ne02;
            ne02.b(ne0);
            ne02.b(ae0);
        }

        @Override // defpackage.xd0.b
        public be0 b(Runnable runnable) {
            if (this.f) {
                return me0.INSTANCE;
            }
            return this.e.d(runnable, 0, TimeUnit.MILLISECONDS, this.b);
        }

        @Override // defpackage.xd0.b
        public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.f) {
                return me0.INSTANCE;
            }
            return this.e.d(runnable, j, timeUnit, this.c);
        }

        @Override // defpackage.be0
        public void e() {
            if (!this.f) {
                this.f = true;
                this.d.e();
            }
        }
    }

    /* renamed from: af0$b */
    static final class b {
        final int a;
        final c[] b;
        long c;

        b(int i, ThreadFactory threadFactory) {
            this.a = i;
            this.b = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.b[i2] = new c(threadFactory);
            }
        }

        public c a() {
            int i = this.a;
            if (i == 0) {
                return af0.f;
            }
            c[] cVarArr = this.b;
            long j = this.c;
            this.c = 1 + j;
            return cVarArr[(int) (j % ((long) i))];
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: af0$c */
    public static final class c extends df0 {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int intValue = Integer.getInteger("rx2.computation-threads", 0).intValue();
        if (intValue > 0 && intValue <= availableProcessors) {
            availableProcessors = intValue;
        }
        e = availableProcessors;
        c cVar = new c(new ef0("RxComputationShutdown"));
        f = cVar;
        cVar.e();
        ef0 ef0 = new ef0("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        d = ef0;
        b bVar = new b(0, ef0);
        c = bVar;
        for (c cVar2 : bVar.b) {
            cVar2.e();
        }
    }

    public af0() {
        ef0 ef0 = d;
        this.a = ef0;
        b bVar = c;
        AtomicReference<b> atomicReference = new AtomicReference<>(bVar);
        this.b = atomicReference;
        b bVar2 = new b(e, ef0);
        if (!atomicReference.compareAndSet(bVar, bVar2)) {
            for (c cVar : bVar2.b) {
                cVar.e();
            }
        }
    }

    @Override // defpackage.xd0
    public xd0.b a() {
        return new a(this.b.get().a());
    }

    @Override // defpackage.xd0
    public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.b.get().a().f(runnable, j, timeUnit);
    }
}
