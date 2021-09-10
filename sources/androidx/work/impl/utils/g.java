package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

public class g implements Executor {
    private final ArrayDeque<a> b = new ArrayDeque<>();
    private final Executor c;
    private final Object d = new Object();
    private volatile Runnable e;

    /* access modifiers changed from: package-private */
    public static class a implements Runnable {
        final g b;
        final Runnable c;

        a(g gVar, Runnable runnable) {
            this.b = gVar;
            this.c = runnable;
        }

        public void run() {
            try {
                this.c.run();
            } finally {
                this.b.a();
            }
        }
    }

    public g(Executor executor) {
        this.c = executor;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        synchronized (this.d) {
            a poll = this.b.poll();
            this.e = poll;
            if (poll != null) {
                this.c.execute(this.e);
            }
        }
    }

    public void execute(Runnable runnable) {
        synchronized (this.d) {
            this.b.add(new a(this, runnable));
            if (this.e == null) {
                a();
            }
        }
    }
}
