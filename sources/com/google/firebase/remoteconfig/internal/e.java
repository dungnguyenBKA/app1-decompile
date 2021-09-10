package com.google.firebase.remoteconfig.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class e {
    private static final Map<String, e> d = new HashMap();
    private static final Executor e = d.a();
    private final ExecutorService a;
    private final o b;
    private kw<f> c = null;

    /* access modifiers changed from: private */
    public static class b<TResult> implements hw<TResult>, gw, fw {
        private final CountDownLatch a = new CountDownLatch(1);

        b(a aVar) {
        }

        public boolean a(long j, TimeUnit timeUnit) {
            return this.a.await(j, timeUnit);
        }

        @Override // defpackage.fw
        public void b() {
            this.a.countDown();
        }

        @Override // defpackage.gw
        public void onFailure(Exception exc) {
            this.a.countDown();
        }

        @Override // defpackage.hw
        public void onSuccess(TResult tresult) {
            this.a.countDown();
        }
    }

    private e(ExecutorService executorService, o oVar) {
        this.a = executorService;
        this.b = oVar;
    }

    private static <TResult> TResult a(kw<TResult> kwVar, long j, TimeUnit timeUnit) {
        b bVar = new b(null);
        Executor executor = e;
        kwVar.e(executor, bVar);
        kwVar.c(executor, bVar);
        kwVar.a(executor, bVar);
        if (!bVar.a(j, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        } else if (kwVar.m()) {
            return kwVar.j();
        } else {
            throw new ExecutionException(kwVar.i());
        }
    }

    public static synchronized e e(ExecutorService executorService, o oVar) {
        e eVar;
        synchronized (e.class) {
            String b2 = oVar.b();
            Map<String, e> map = d;
            if (!map.containsKey(b2)) {
                map.put(b2, new e(executorService, oVar));
            }
            eVar = map.get(b2);
        }
        return eVar;
    }

    static kw g(e eVar, boolean z, f fVar) {
        if (z) {
            synchronized (eVar) {
                eVar.c = nw.d(fVar);
            }
        }
        return nw.d(fVar);
    }

    public void b() {
        synchronized (this) {
            this.c = nw.d(null);
        }
        this.b.a();
    }

    public synchronized kw<f> c() {
        kw<f> kwVar = this.c;
        if (kwVar == null || (kwVar.l() && !this.c.m())) {
            ExecutorService executorService = this.a;
            o oVar = this.b;
            oVar.getClass();
            this.c = nw.b(executorService, c.a(oVar));
        }
        return this.c;
    }

    public f d() {
        synchronized (this) {
            kw<f> kwVar = this.c;
            if (kwVar == null || !kwVar.m()) {
                try {
                    return (f) a(c(), 5, TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                    return null;
                }
            } else {
                return this.c.j();
            }
        }
    }

    public kw<f> h(f fVar) {
        return nw.b(this.a, a.a(this, fVar)).o(this.a, b.b(this, true, fVar));
    }
}
