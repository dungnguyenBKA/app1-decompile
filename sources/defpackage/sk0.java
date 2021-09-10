package defpackage;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* renamed from: sk0  reason: default package */
public class sk0 {
    public static final sk0 d = new a();
    private boolean a;
    private long b;
    private long c;

    /* renamed from: sk0$a */
    class a extends sk0 {
        a() {
        }

        @Override // defpackage.sk0
        public sk0 d(long j) {
            return this;
        }

        @Override // defpackage.sk0
        public void f() {
        }

        @Override // defpackage.sk0
        public sk0 g(long j, TimeUnit timeUnit) {
            return this;
        }
    }

    public sk0 a() {
        this.a = false;
        return this;
    }

    public sk0 b() {
        this.c = 0;
        return this;
    }

    public long c() {
        if (this.a) {
            return this.b;
        }
        throw new IllegalStateException("No deadline");
    }

    public sk0 d(long j) {
        this.a = true;
        this.b = j;
        return this;
    }

    public boolean e() {
        return this.a;
    }

    public void f() {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        } else if (this.a && this.b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public sk0 g(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        } else if (timeUnit != null) {
            this.c = timeUnit.toNanos(j);
            return this;
        } else {
            throw new IllegalArgumentException("unit == null");
        }
    }

    public long h() {
        return this.c;
    }
}
