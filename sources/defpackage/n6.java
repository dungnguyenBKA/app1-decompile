package defpackage;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.g;
import java.util.concurrent.Executor;

/* renamed from: n6  reason: default package */
public class n6 implements m6 {
    private final Executor a;
    private final Handler b = new Handler(Looper.getMainLooper());
    private final Executor c = new a();

    /* renamed from: n6$a */
    class a implements Executor {
        a() {
        }

        public void execute(Runnable runnable) {
            n6.this.d(runnable);
        }
    }

    public n6(Executor executor) {
        this.a = new g(executor);
    }

    public void a(Runnable runnable) {
        this.a.execute(runnable);
    }

    public Executor b() {
        return this.a;
    }

    public Executor c() {
        return this.c;
    }

    public void d(Runnable runnable) {
        this.b.post(runnable);
    }
}
