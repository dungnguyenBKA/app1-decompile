package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: f2  reason: default package */
public class f2 {
    private final Object a = new Object();
    private HandlerThread b;
    private Handler c;
    private int d = 0;
    private Handler.Callback e = new a();

    /* renamed from: f2$a */
    class a implements Handler.Callback {
        a() {
        }

        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                f2.this.a();
                return true;
            } else if (i != 1) {
                return true;
            } else {
                f2.this.b((Runnable) message.obj);
                return true;
            }
        }
    }

    /* renamed from: f2$b */
    class b implements Runnable {
        final /* synthetic */ Callable b;
        final /* synthetic */ Handler c;
        final /* synthetic */ d d;

        /* renamed from: f2$b$a */
        class a implements Runnable {
            final /* synthetic */ Object b;

            a(Object obj) {
                this.b = obj;
            }

            public void run() {
                b.this.d.a(this.b);
            }
        }

        b(f2 f2Var, Callable callable, Handler handler, d dVar) {
            this.b = callable;
            this.c = handler;
            this.d = dVar;
        }

        public void run() {
            Object obj;
            try {
                obj = this.b.call();
            } catch (Exception unused) {
                obj = null;
            }
            this.c.post(new a(obj));
        }
    }

    /* renamed from: f2$c */
    class c implements Runnable {
        final /* synthetic */ AtomicReference b;
        final /* synthetic */ Callable c;
        final /* synthetic */ ReentrantLock d;
        final /* synthetic */ AtomicBoolean e;
        final /* synthetic */ Condition f;

        c(f2 f2Var, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
            this.b = atomicReference;
            this.c = callable;
            this.d = reentrantLock;
            this.e = atomicBoolean;
            this.f = condition;
        }

        public void run() {
            try {
                this.b.set(this.c.call());
            } catch (Exception unused) {
            }
            this.d.lock();
            try {
                this.e.set(false);
                this.f.signal();
            } finally {
                this.d.unlock();
            }
        }
    }

    /* renamed from: f2$d */
    public interface d<T> {
        void a(T t);
    }

    public f2(String str, int i, int i2) {
    }

    private void c(Runnable runnable) {
        synchronized (this.a) {
            if (this.b == null) {
                HandlerThread handlerThread = new HandlerThread("fonts", 10);
                this.b = handlerThread;
                handlerThread.start();
                this.c = new Handler(this.b.getLooper(), this.e);
                this.d++;
            }
            this.c.removeMessages(0);
            Handler handler = this.c;
            handler.sendMessage(handler.obtainMessage(1, runnable));
        }
    }

    /* access modifiers changed from: package-private */
    public void a() {
        synchronized (this.a) {
            if (!this.c.hasMessages(1)) {
                this.b.quit();
                this.b = null;
                this.c = null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b(Runnable runnable) {
        runnable.run();
        synchronized (this.a) {
            this.c.removeMessages(0);
            Handler handler = this.c;
            handler.sendMessageDelayed(handler.obtainMessage(0), (long) 10000);
        }
    }

    public <T> void d(Callable<T> callable, d<T> dVar) {
        c(new b(this, callable, new Handler(), dVar));
    }

    public <T> T e(Callable<T> callable, int i) {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        c(new c(this, atomicReference, callable, reentrantLock, atomicBoolean, newCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos((long) i);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    T t = (T) atomicReference.get();
                    reentrantLock.unlock();
                    return t;
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }
}
