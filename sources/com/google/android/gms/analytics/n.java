package com.google.android.gms.analytics;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
public final class n extends ThreadPoolExecutor {
    final /* synthetic */ q b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public n(q qVar) {
        super(1, 1, 1, TimeUnit.MINUTES, new LinkedBlockingQueue());
        this.b = qVar;
        setThreadFactory(new o());
        allowCoreThreadTimeOut(true);
    }

    /* access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new m(this, runnable, t);
    }
}
