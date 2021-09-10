package defpackage;

import com.google.firebase.installations.o;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
/* renamed from: n50  reason: default package */
public class n50 {
    private static final long d = TimeUnit.HOURS.toMillis(24);
    private static final long e = TimeUnit.MINUTES.toMillis(30);
    private final o a = o.c();
    private long b;
    private int c;

    n50() {
    }

    public synchronized boolean a() {
        return this.c == 0 || this.a.a() > this.b;
    }

    public synchronized void b(int i) {
        long j;
        boolean z = false;
        if ((i >= 200 && i < 300) || i == 401 || i == 404) {
            synchronized (this) {
                this.c = 0;
            }
            return;
        }
        this.c++;
        synchronized (this) {
            if (i == 429 || (i >= 500 && i < 600)) {
                z = true;
            }
            if (!z) {
                j = d;
            } else {
                double pow = Math.pow(2.0d, (double) this.c);
                Objects.requireNonNull(this.a);
                double random = (double) ((long) (Math.random() * 1000.0d));
                Double.isNaN(random);
                Double.isNaN(random);
                j = (long) Math.min(pow + random, (double) e);
            }
            this.b = this.a.a() + j;
        }
    }
}
