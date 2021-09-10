package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* access modifiers changed from: package-private */
public final class e4<V> extends FutureTask<V> implements Comparable<e4<V>> {
    private final long b;
    final boolean c;
    private final String d;
    final /* synthetic */ g4 e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    e4(g4 g4Var, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.e = g4Var;
        long andIncrement = g4.k.getAndIncrement();
        this.b = andIncrement;
        this.d = str;
        this.c = z;
        if (andIncrement == Long.MAX_VALUE) {
            g4Var.a.c().n().a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        e4 e4Var = (e4) obj;
        boolean z = this.c;
        if (z != e4Var.c) {
            return !z ? 1 : -1;
        }
        long j = this.b;
        long j2 = e4Var.b;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.e.a.c().o().b("Two tasks share the same index. index", Long.valueOf(this.b));
        return 0;
    }

    /* access modifiers changed from: protected */
    public final void setException(Throwable th) {
        this.e.a.c().n().b(this.d, th);
        super.setException(th);
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/util/concurrent/Callable<TV;>;ZLjava/lang/String;)V */
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    e4(g4 g4Var, Callable callable, boolean z) {
        super(callable);
        this.e = g4Var;
        long andIncrement = g4.k.getAndIncrement();
        this.b = andIncrement;
        this.d = "Task exception on worker thread";
        this.c = z;
        if (andIncrement == Long.MAX_VALUE) {
            g4Var.a.c().n().a("Tasks index overflow");
        }
    }
}
