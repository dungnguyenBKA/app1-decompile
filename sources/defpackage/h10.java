package defpackage;

import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: h10  reason: default package */
public final class h10 {
    private static final ExecutorService a = r00.a("awaitEvenIfOnMainThread task continuation executor");
    public static final /* synthetic */ int b = 0;

    /* access modifiers changed from: package-private */
    /* renamed from: h10$a */
    public class a implements Runnable {
        final /* synthetic */ Callable b;
        final /* synthetic */ lw c;

        /* renamed from: h10$a$a  reason: collision with other inner class name */
        class C0099a implements dw<T, Void> {
            C0099a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // defpackage.dw
            public Void then(kw kwVar) {
                if (kwVar.m()) {
                    a.this.c.c(kwVar.j());
                    return null;
                }
                a.this.c.b(kwVar.i());
                return null;
            }
        }

        a(Callable callable, lw lwVar) {
            this.b = callable;
            this.c = lwVar;
        }

        public void run() {
            try {
                ((kw) this.b.call()).f(new C0099a());
            } catch (Exception e) {
                this.c.b(e);
            }
        }
    }

    public static <T> T a(kw<T> kwVar) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        kwVar.g(a, f10.a(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (kwVar.m()) {
            return kwVar.j();
        }
        if (kwVar.k()) {
            throw new CancellationException("Task is already canceled");
        } else if (kwVar.l()) {
            throw new IllegalStateException(kwVar.i());
        } else {
            throw new TimeoutException();
        }
    }

    public static <T> kw<T> b(Executor executor, Callable<kw<T>> callable) {
        lw lwVar = new lw();
        executor.execute(new a(callable, lwVar));
        return lwVar.a();
    }
}
