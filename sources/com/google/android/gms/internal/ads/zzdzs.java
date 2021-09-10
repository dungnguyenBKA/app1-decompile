package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public abstract class zzdzs<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable zziaq = new zzdzt();
    private static final Runnable zziar = new zzdzt();
    private static final Runnable zzias = new zzdzt();

    zzdzs() {
    }

    /* access modifiers changed from: package-private */
    public final void interruptTask() {
        Runnable runnable = (Runnable) get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, zziar)) {
            try {
                ((Thread) runnable).interrupt();
            } finally {
                if (((Runnable) getAndSet(zziaq)) == zzias) {
                    LockSupport.unpark((Thread) runnable);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public abstract boolean isDone();

    /* JADX DEBUG: Multi-variable search result rejected for r12v0, resolved type: com.google.android.gms.internal.ads.zzdzs<T> */
    /* JADX WARN: Multi-variable type inference failed */
    public final void run() {
        Object obj;
        Thread currentThread = Thread.currentThread();
        if (compareAndSet(null, currentThread)) {
            boolean z = !isDone();
            if (z) {
                try {
                    obj = zzbab();
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, zziaq)) {
                        Runnable runnable = (Runnable) get();
                        boolean z2 = false;
                        int i = 0;
                        while (true) {
                            Runnable runnable2 = zziar;
                            if (runnable != runnable2 && runnable != zzias) {
                                break;
                            }
                            i++;
                            if (i > 1000) {
                                Runnable runnable3 = zzias;
                                if (runnable == runnable3 || compareAndSet(runnable2, runnable3)) {
                                    z2 = Thread.interrupted() || z2;
                                    LockSupport.park(this);
                                }
                            } else {
                                Thread.yield();
                            }
                            runnable = (Runnable) get();
                        }
                        if (z2) {
                            currentThread.interrupt();
                        }
                    }
                    if (z) {
                        zzb(null, th);
                        return;
                    }
                    return;
                }
            } else {
                obj = null;
            }
            if (!compareAndSet(currentThread, zziaq)) {
                Runnable runnable4 = (Runnable) get();
                boolean z3 = false;
                int i2 = 0;
                while (true) {
                    Runnable runnable5 = zziar;
                    if (runnable4 != runnable5 && runnable4 != zzias) {
                        break;
                    }
                    i2++;
                    if (i2 > 1000) {
                        Runnable runnable6 = zzias;
                        if (runnable4 == runnable6 || compareAndSet(runnable5, runnable6)) {
                            z3 = Thread.interrupted() || z3;
                            LockSupport.park(this);
                        }
                    } else {
                        Thread.yield();
                    }
                    runnable4 = (Runnable) get();
                }
                if (z3) {
                    currentThread.interrupt();
                }
            }
            if (z) {
                zzb(obj, null);
            }
        }
    }

    public final String toString() {
        String str;
        Runnable runnable = (Runnable) get();
        if (runnable == zziaq) {
            str = "running=[DONE]";
        } else if (runnable == zziar) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            str = ic.e(ic.m(name, 21), "running=[RUNNING ON ", name, "]");
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String zzbac = zzbac();
        return ic.e(ic.m(zzbac, ic.m(str, 2)), str, ", ", zzbac);
    }

    /* access modifiers changed from: package-private */
    public abstract void zzb(@NullableDecl T t, @NullableDecl Throwable th);

    /* access modifiers changed from: package-private */
    public abstract T zzbab();

    /* access modifiers changed from: package-private */
    public abstract String zzbac();
}
