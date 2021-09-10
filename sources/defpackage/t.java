package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: t  reason: default package */
public class t extends u {
    private final Object a = new Object();
    private final ExecutorService b = Executors.newFixedThreadPool(4, new a(this));
    private volatile Handler c;

    /* renamed from: t$a */
    class a implements ThreadFactory {
        private final AtomicInteger b = new AtomicInteger(0);

        a(t tVar) {
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.b.getAndIncrement())));
            return thread;
        }
    }

    @Override // defpackage.u
    public void a(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override // defpackage.u
    public boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // defpackage.u
    public void c(Runnable runnable) {
        if (this.c == null) {
            synchronized (this.a) {
                if (this.c == null) {
                    this.c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.c.post(runnable);
    }
}
