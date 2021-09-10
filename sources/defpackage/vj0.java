package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* renamed from: vj0  reason: default package */
public class vj0 extends sk0 {
    private static final long h;
    private static final long i;
    @Nullable
    static vj0 j;
    private boolean e;
    @Nullable
    private vj0 f;
    private long g;

    /* renamed from: vj0$a */
    private static final class a extends Thread {
        a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0015, code lost:
            r1.n();
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r3 = this;
            L_0x0000:
                java.lang.Class<vj0> r0 = defpackage.vj0.class
                monitor-enter(r0)     // Catch:{ InterruptedException -> 0x0000 }
                vj0 r1 = defpackage.vj0.i()     // Catch:{ all -> 0x0019 }
                if (r1 != 0) goto L_0x000b
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                goto L_0x0000
            L_0x000b:
                vj0 r2 = defpackage.vj0.j     // Catch:{ all -> 0x0019 }
                if (r1 != r2) goto L_0x0014
                r1 = 0
                defpackage.vj0.j = r1     // Catch:{ all -> 0x0019 }
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                return
            L_0x0014:
                monitor-exit(r0)     // Catch:{ all -> 0x0019 }
                r1.n()
                goto L_0x0000
            L_0x0019:
                r1 = move-exception
                monitor-exit(r0)
                goto L_0x001d
            L_0x001c:
                throw r1
            L_0x001d:
                goto L_0x001c
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.vj0.a.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60);
        h = millis;
        i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    @Nullable
    static vj0 i() {
        vj0 vj0 = j.f;
        if (vj0 == null) {
            long nanoTime = System.nanoTime();
            vj0.class.wait(h);
            if (j.f != null || System.nanoTime() - nanoTime < i) {
                return null;
            }
            return j;
        }
        long nanoTime2 = vj0.g - System.nanoTime();
        if (nanoTime2 > 0) {
            long j2 = nanoTime2 / 1000000;
            vj0.class.wait(j2, (int) (nanoTime2 - (1000000 * j2)));
            return null;
        }
        j.f = vj0.f;
        vj0.f = null;
        return vj0;
    }

    public final void j() {
        vj0 vj0;
        if (!this.e) {
            long h2 = h();
            boolean e2 = e();
            if (h2 != 0 || e2) {
                this.e = true;
                synchronized (vj0.class) {
                    if (j == null) {
                        j = new vj0();
                        new a().start();
                    }
                    long nanoTime = System.nanoTime();
                    if (h2 != 0 && e2) {
                        this.g = Math.min(h2, c() - nanoTime) + nanoTime;
                    } else if (h2 != 0) {
                        this.g = h2 + nanoTime;
                    } else if (e2) {
                        this.g = c();
                    } else {
                        throw new AssertionError();
                    }
                    long j2 = this.g - nanoTime;
                    vj0 vj02 = j;
                    while (true) {
                        vj0 = vj02.f;
                        if (vj0 == null) {
                            break;
                        } else if (j2 < vj0.g - nanoTime) {
                            break;
                        } else {
                            vj02 = vj0;
                        }
                    }
                    this.f = vj0;
                    vj02.f = this;
                    if (vj02 == j) {
                        vj0.class.notify();
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    /* access modifiers changed from: package-private */
    public final void k(boolean z) {
        if (l() && z) {
            throw m(null);
        }
    }

    public final boolean l() {
        boolean z = false;
        if (!this.e) {
            return false;
        }
        this.e = false;
        synchronized (vj0.class) {
            vj0 vj0 = j;
            while (true) {
                if (vj0 == null) {
                    z = true;
                    break;
                }
                vj0 vj02 = vj0.f;
                if (vj02 == this) {
                    vj0.f = this.f;
                    this.f = null;
                    break;
                }
                vj0 = vj02;
            }
        }
        return z;
    }

    /* access modifiers changed from: protected */
    public IOException m(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* access modifiers changed from: protected */
    public void n() {
    }
}
