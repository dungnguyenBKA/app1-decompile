package defpackage;

import defpackage.di0;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* renamed from: tg0  reason: default package */
public final class tg0 {
    private static final Executor g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), rh0.z("OkHttp ConnectionPool", true));
    private final int a = 5;
    private final long b;
    private final Runnable c = new a();
    private final Deque<zh0> d = new ArrayDeque();
    final ai0 e = new ai0();
    boolean f;

    /* renamed from: tg0$a */
    class a implements Runnable {
        a() {
        }

        /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
        /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x002b */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r6 = this;
            L_0x0000:
                tg0 r0 = defpackage.tg0.this
                long r1 = java.lang.System.nanoTime()
                long r0 = r0.a(r1)
                r2 = -1
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r4 != 0) goto L_0x0011
                return
            L_0x0011:
                r2 = 0
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r4 <= 0) goto L_0x0000
                r2 = 1000000(0xf4240, double:4.940656E-318)
                long r4 = r0 / r2
                long r2 = r2 * r4
                long r0 = r0 - r2
                tg0 r2 = defpackage.tg0.this
                monitor-enter(r2)
                tg0 r3 = defpackage.tg0.this     // Catch:{ InterruptedException -> 0x002b }
                int r1 = (int) r0     // Catch:{ InterruptedException -> 0x002b }
                r3.wait(r4, r1)     // Catch:{ InterruptedException -> 0x002b }
                goto L_0x002b
            L_0x0029:
                r0 = move-exception
                goto L_0x002d
            L_0x002b:
                monitor-exit(r2)     // Catch:{ all -> 0x0029 }
                goto L_0x0000
            L_0x002d:
                monitor-exit(r2)     // Catch:{ all -> 0x0029 }
                goto L_0x0030
            L_0x002f:
                throw r0
            L_0x0030:
                goto L_0x002f
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.tg0.a.run():void");
        }
    }

    public tg0() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        this.b = timeUnit.toNanos(5);
    }

    private int e(zh0 zh0, long j) {
        List<Reference<di0>> list = zh0.n;
        int i = 0;
        while (i < list.size()) {
            Reference<di0> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                StringBuilder q = ic.q("A connection to ");
                q.append(zh0.m().a.a);
                q.append(" was leaked. Did you forget to close a response body?");
                mj0.h().o(q.toString(), ((di0.a) reference).a);
                list.remove(i);
                zh0.k = true;
                if (list.isEmpty()) {
                    zh0.o = j - this.b;
                    return 0;
                }
            }
        }
        return list.size();
    }

    /* access modifiers changed from: package-private */
    public long a(long j) {
        synchronized (this) {
            zh0 zh0 = null;
            long j2 = Long.MIN_VALUE;
            int i = 0;
            int i2 = 0;
            for (zh0 zh02 : this.d) {
                if (e(zh02, j) > 0) {
                    i2++;
                } else {
                    i++;
                    long j3 = j - zh02.o;
                    if (j3 > j2) {
                        zh0 = zh02;
                        j2 = j3;
                    }
                }
            }
            long j4 = this.b;
            if (j2 < j4) {
                if (i <= this.a) {
                    if (i > 0) {
                        return j4 - j2;
                    } else if (i2 > 0) {
                        return j4;
                    } else {
                        this.f = false;
                        return -1;
                    }
                }
            }
            this.d.remove(zh0);
            rh0.h(zh0.n());
            return 0;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b(zh0 zh0) {
        if (zh0.k || this.a == 0) {
            this.d.remove(zh0);
            return true;
        }
        notifyAll();
        return false;
    }

    /* access modifiers changed from: package-private */
    @Nullable
    public Socket c(kg0 kg0, di0 di0) {
        for (zh0 zh0 : this.d) {
            if (zh0.i(kg0, null) && zh0.k() && zh0 != di0.d()) {
                return di0.k(zh0);
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    @Nullable
    public zh0 d(kg0 kg0, di0 di0, nh0 nh0) {
        for (zh0 zh0 : this.d) {
            if (zh0.i(kg0, nh0)) {
                di0.a(zh0, true);
                return zh0;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void f(zh0 zh0) {
        if (!this.f) {
            this.f = true;
            g.execute(this.c);
        }
        this.d.add(zh0);
    }
}
