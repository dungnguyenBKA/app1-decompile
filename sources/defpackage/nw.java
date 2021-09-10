package defpackage;

import com.google.android.gms.common.internal.n;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;

/* renamed from: nw  reason: default package */
public final class nw {

    /* renamed from: nw$a */
    private static final class a implements fw, gw, hw {
        private final CountDownLatch a = new CountDownLatch(1);

        a(hx hxVar) {
        }

        public final boolean a(long j, TimeUnit timeUnit) {
            return this.a.await(j, timeUnit);
        }

        @Override // defpackage.fw
        public final void b() {
            this.a.countDown();
        }

        @Override // defpackage.gw
        public final void onFailure(Exception exc) {
            this.a.countDown();
        }

        @Override // defpackage.hw
        public final void onSuccess(Object obj) {
            this.a.countDown();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: nw$b */
    public static final class b implements fw, gw, hw {
        private final Object a = new Object();
        private final int b;
        private final dx<Void> c;
        @GuardedBy("mLock")
        private int d;
        @GuardedBy("mLock")
        private int e;
        @GuardedBy("mLock")
        private int f;
        @GuardedBy("mLock")
        private Exception g;
        @GuardedBy("mLock")
        private boolean h;

        public b(int i, dx<Void> dxVar) {
            this.b = i;
            this.c = dxVar;
        }

        @GuardedBy("mLock")
        private final void a() {
            if (this.d + this.e + this.f != this.b) {
                return;
            }
            if (this.g != null) {
                dx<Void> dxVar = this.c;
                int i = this.e;
                int i2 = this.b;
                StringBuilder sb = new StringBuilder(54);
                sb.append(i);
                sb.append(" out of ");
                sb.append(i2);
                sb.append(" underlying tasks failed");
                dxVar.p(new ExecutionException(sb.toString(), this.g));
            } else if (this.h) {
                this.c.r();
            } else {
                this.c.q(null);
            }
        }

        @Override // defpackage.fw
        public final void b() {
            synchronized (this.a) {
                this.f++;
                this.h = true;
                a();
            }
        }

        @Override // defpackage.gw
        public final void onFailure(Exception exc) {
            synchronized (this.a) {
                this.e++;
                this.g = exc;
                a();
            }
        }

        @Override // defpackage.hw
        public final void onSuccess(Object obj) {
            synchronized (this.a) {
                this.d++;
                a();
            }
        }
    }

    public static <TResult> TResult a(kw<TResult> kwVar, long j, TimeUnit timeUnit) {
        n.g("Must not be called on the main application thread");
        n.i(kwVar, "Task must not be null");
        n.i(timeUnit, "TimeUnit must not be null");
        if (kwVar.l()) {
            return (TResult) g(kwVar);
        }
        a aVar = new a(null);
        Executor executor = mw.b;
        kwVar.e(executor, aVar);
        kwVar.c(executor, aVar);
        kwVar.a(executor, aVar);
        if (aVar.a(j, timeUnit)) {
            return (TResult) g(kwVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static <TResult> kw<TResult> b(Executor executor, Callable<TResult> callable) {
        n.i(executor, "Executor must not be null");
        n.i(callable, "Callback must not be null");
        dx dxVar = new dx();
        executor.execute(new hx(dxVar, callable));
        return dxVar;
    }

    public static <TResult> kw<TResult> c(Exception exc) {
        dx dxVar = new dx();
        dxVar.p(exc);
        return dxVar;
    }

    public static <TResult> kw<TResult> d(TResult tresult) {
        dx dxVar = new dx();
        dxVar.q(tresult);
        return dxVar;
    }

    public static kw<Void> e(Collection<? extends kw<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return d(null);
        }
        Iterator<? extends kw<?>> it = collection.iterator();
        while (it.hasNext()) {
            Objects.requireNonNull((kw) it.next(), "null tasks are not accepted");
        }
        dx dxVar = new dx();
        b bVar = new b(collection.size(), dxVar);
        Iterator<? extends kw<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            kw kwVar = (kw) it2.next();
            Executor executor = mw.b;
            kwVar.e(executor, bVar);
            kwVar.c(executor, bVar);
            kwVar.a(executor, bVar);
        }
        return dxVar;
    }

    public static kw<List<kw<?>>> f(kw<?>... kwVarArr) {
        if (kwVarArr.length == 0) {
            return d(Collections.emptyList());
        }
        List asList = Arrays.asList(kwVarArr);
        if (asList == null || asList.isEmpty()) {
            return d(Collections.emptyList());
        }
        kw<Void> e = e(asList);
        return ((dx) e).h(mw.a, new ix(asList));
    }

    private static <TResult> TResult g(kw<TResult> kwVar) {
        if (kwVar.m()) {
            return kwVar.j();
        }
        if (kwVar.k()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(kwVar.i());
    }
}
