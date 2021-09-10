package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.internal.measurement.zzl;
import java.util.Objects;

/* access modifiers changed from: package-private */
public abstract class l {
    private static volatile Handler d;
    private final f5 a;
    private final Runnable b;
    private volatile long c;

    l(f5 f5Var) {
        Objects.requireNonNull(f5Var, "null reference");
        this.a = f5Var;
        this.b = new k(this, f5Var);
    }

    private final Handler f() {
        Handler handler;
        if (d != null) {
            return d;
        }
        synchronized (l.class) {
            if (d == null) {
                d = new zzl(this.a.b().getMainLooper());
            }
            handler = d;
        }
        return handler;
    }

    public abstract void a();

    public final void b(long j) {
        d();
        if (j >= 0) {
            this.c = this.a.a().a();
            if (!f().postDelayed(this.b, j)) {
                this.a.c().n().b("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    public final boolean c() {
        return this.c != 0;
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        this.c = 0;
        f().removeCallbacks(this.b);
    }
}
