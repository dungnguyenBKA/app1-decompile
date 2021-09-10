package defpackage;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
/* renamed from: q00  reason: default package */
public class q00 extends oz {
    final /* synthetic */ String b;
    final /* synthetic */ ExecutorService c;
    final /* synthetic */ long d;
    final /* synthetic */ TimeUnit e;

    q00(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        this.b = str;
        this.c = executorService;
        this.d = j;
        this.e = timeUnit;
    }

    @Override // defpackage.oz
    public void a() {
        try {
            az f = az.f();
            f.b("Executing shutdown hook for " + this.b);
            this.c.shutdown();
            if (!this.c.awaitTermination(this.d, this.e)) {
                az f2 = az.f();
                f2.b(this.b + " did not shut down in the allocated time. Requesting immediate shutdown.");
                this.c.shutdownNow();
            }
        } catch (InterruptedException unused) {
            az.f().b(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.b));
            this.c.shutdownNow();
        }
    }
}
