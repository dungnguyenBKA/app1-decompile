package defpackage;

import android.os.Handler;
import android.os.Message;
import defpackage.xd0;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* renamed from: zd0  reason: default package */
final class zd0 extends xd0 {
    private final Handler a;

    /* renamed from: zd0$a */
    private static final class a extends xd0.b {
        private final Handler b;
        private volatile boolean c;

        a(Handler handler) {
            this.b = handler;
        }

        @Override // defpackage.xd0.b
        public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
            me0 me0 = me0.INSTANCE;
            Objects.requireNonNull(runnable, "run == null");
            Objects.requireNonNull(timeUnit, "unit == null");
            if (this.c) {
                return me0;
            }
            Handler handler = this.b;
            b bVar = new b(handler, runnable);
            Message obtain = Message.obtain(handler, bVar);
            obtain.obj = this;
            this.b.sendMessageDelayed(obtain, Math.max(0L, timeUnit.toMillis(j)));
            if (!this.c) {
                return bVar;
            }
            this.b.removeCallbacks(bVar);
            return me0;
        }

        @Override // defpackage.be0
        public void e() {
            this.c = true;
            this.b.removeCallbacksAndMessages(this);
        }
    }

    /* renamed from: zd0$b */
    private static final class b implements Runnable, be0 {
        private final Handler b;
        private final Runnable c;

        b(Handler handler, Runnable runnable) {
            this.b = handler;
            this.c = runnable;
        }

        @Override // defpackage.be0
        public void e() {
            this.b.removeCallbacks(this);
        }

        public void run() {
            try {
                this.c.run();
            } catch (Throwable th) {
                IllegalStateException illegalStateException = new IllegalStateException("Fatal Exception thrown on Scheduler.", th);
                mf0.f(illegalStateException);
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, illegalStateException);
            }
        }
    }

    zd0(Handler handler) {
        this.a = handler;
    }

    @Override // defpackage.xd0
    public xd0.b a() {
        return new a(this.a);
    }

    @Override // defpackage.xd0
    public be0 c(Runnable runnable, long j, TimeUnit timeUnit) {
        Objects.requireNonNull(runnable, "run == null");
        Objects.requireNonNull(timeUnit, "unit == null");
        Handler handler = this.a;
        b bVar = new b(handler, runnable);
        handler.postDelayed(bVar, Math.max(0L, timeUnit.toMillis(j)));
        return bVar;
    }
}
