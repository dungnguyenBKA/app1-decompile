package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;

/* renamed from: mf0  reason: default package */
public final class mf0 {
    static xd0 a(Callable<xd0> callable) {
        try {
            xd0 call = callable.call();
            Objects.requireNonNull(call, "Scheduler Callable result can't be null");
            return call;
        } catch (Throwable th) {
            throw kf0.a(th);
        }
    }

    public static xd0 b(Callable<xd0> callable) {
        return a(callable);
    }

    public static xd0 c(Callable<xd0> callable) {
        return a(callable);
    }

    public static xd0 d(Callable<xd0> callable) {
        return a(callable);
    }

    public static xd0 e(Callable<xd0> callable) {
        return a(callable);
    }

    public static void f(Throwable th) {
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else {
            boolean z = true;
            if (!(th instanceof fe0) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof ee0)) {
                z = false;
            }
            if (!z) {
                th = new he0(th);
            }
        }
        th.printStackTrace();
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }
}
