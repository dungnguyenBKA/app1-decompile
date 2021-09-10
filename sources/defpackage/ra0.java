package defpackage;

import defpackage.qa0;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: ra0  reason: default package */
public class ra0 implements qa0.a {
    private final BlockingQueue<Runnable> a;
    private final ThreadPoolExecutor b;
    private final ArrayDeque<qa0> c = new ArrayDeque<>();
    private qa0 d = null;

    public ra0() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.a = linkedBlockingQueue;
        this.b = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        qa0 poll = this.c.poll();
        this.d = poll;
        if (poll != null) {
            poll.executeOnExecutor(this.b, new Object[0]);
        }
    }

    public void b(qa0 qa0) {
        this.d = null;
        a();
    }

    public void c(qa0 qa0) {
        qa0.a(this);
        this.c.add(qa0);
        if (this.d == null) {
            a();
        }
    }
}
