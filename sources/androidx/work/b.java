package androidx.work;

import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class b {
    private final Executor a = a();
    private final Executor b = a();
    private final q c;
    private final int d;
    private final int e;
    private final int f;

    public static final class a {
        public b a() {
            return new b(this);
        }
    }

    /* renamed from: androidx.work.b$b  reason: collision with other inner class name */
    public interface AbstractC0023b {
        b a();
    }

    b(a aVar) {
        int i = q.b;
        this.c = new p();
        this.d = 4;
        this.e = Integer.MAX_VALUE;
        this.f = 20;
    }

    private Executor a() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }

    public Executor b() {
        return this.a;
    }

    public int c() {
        return this.e;
    }

    public int d() {
        if (Build.VERSION.SDK_INT == 23) {
            return this.f / 2;
        }
        return this.f;
    }

    public int e() {
        return this.d;
    }

    public Executor f() {
        return this.b;
    }

    public q g() {
        return this.c;
    }
}
