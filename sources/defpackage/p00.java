package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* access modifiers changed from: package-private */
/* renamed from: p00  reason: default package */
public class p00 implements ThreadFactory {
    final /* synthetic */ String b;
    final /* synthetic */ AtomicLong c;

    /* renamed from: p00$a */
    class a extends oz {
        final /* synthetic */ Runnable b;

        a(p00 p00, Runnable runnable) {
            this.b = runnable;
        }

        @Override // defpackage.oz
        public void a() {
            this.b.run();
        }
    }

    p00(String str, AtomicLong atomicLong) {
        this.b = str;
        this.c = atomicLong;
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(new a(this, runnable));
        newThread.setName(this.b + this.c.getAndIncrement());
        return newThread;
    }
}
