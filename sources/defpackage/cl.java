package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* renamed from: cl  reason: default package */
public final class cl {
    private static final Executor a = new a();
    private static final Executor b = new b();

    /* renamed from: cl$a */
    class a implements Executor {
        private final Handler b = new Handler(Looper.getMainLooper());

        a() {
        }

        public void execute(Runnable runnable) {
            this.b.post(runnable);
        }
    }

    /* renamed from: cl$b */
    class b implements Executor {
        b() {
        }

        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    public static Executor a() {
        return b;
    }

    public static Executor b() {
        return a;
    }
}
