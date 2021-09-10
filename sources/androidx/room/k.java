package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
public class k implements Executor {
    private final Executor b;
    private final ArrayDeque<Runnable> c = new ArrayDeque<>();
    private Runnable d;

    class a implements Runnable {
        final /* synthetic */ Runnable b;

        a(Runnable runnable) {
            this.b = runnable;
        }

        public void run() {
            try {
                this.b.run();
            } finally {
                k.this.a();
            }
        }
    }

    k(Executor executor) {
        this.b = executor;
    }

    /* access modifiers changed from: package-private */
    public synchronized void a() {
        Runnable poll = this.c.poll();
        this.d = poll;
        if (poll != null) {
            this.b.execute(poll);
        }
    }

    public synchronized void execute(Runnable runnable) {
        this.c.offer(new a(runnable));
        if (this.d == null) {
            a();
        }
    }
}
