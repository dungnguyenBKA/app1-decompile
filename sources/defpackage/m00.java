package defpackage;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

/* access modifiers changed from: package-private */
/* renamed from: m00  reason: default package */
public class m00 implements Thread.UncaughtExceptionHandler {
    private final a a;
    private final l30 b;
    private final Thread.UncaughtExceptionHandler c;
    private final AtomicBoolean d = new AtomicBoolean(false);

    /* access modifiers changed from: package-private */
    /* renamed from: m00$a */
    public interface a {
    }

    public m00(a aVar, l30 l30, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = aVar;
        this.b = l30;
        this.c = uncaughtExceptionHandler;
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        return this.d.get();
    }

    public void uncaughtException(Thread thread, Throwable th) {
        this.d.set(true);
        if (thread == null) {
            try {
                az.f().d("Could not handle uncaught exception; null thread");
            } catch (Exception e) {
                az.f().e("An error occurred in the uncaught exception handler", e);
            } catch (Throwable th2) {
                az.f().b("Completed exception processing. Invoking default exception handler.");
                this.c.uncaughtException(thread, th);
                this.d.set(false);
                throw th2;
            }
        } else if (th == null) {
            az.f().d("Could not handle uncaught exception; null throwable");
        } else {
            a aVar = this.a;
            zz.this.u(this.b, thread, th);
        }
        az.f().b("Completed exception processing. Invoking default exception handler.");
        this.c.uncaughtException(thread, th);
        this.d.set(false);
    }
}
