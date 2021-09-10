package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: ef0  reason: default package */
public final class ef0 extends AtomicLong implements ThreadFactory {
    final String b;
    final int c;
    final boolean d;

    /* renamed from: ef0$a */
    static final class a extends Thread {
        a(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public ef0(String str) {
        this.b = str;
        this.c = 5;
        this.d = false;
    }

    public Thread newThread(Runnable runnable) {
        String str = this.b + '-' + incrementAndGet();
        Thread aVar = this.d ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.c);
        aVar.setDaemon(true);
        return aVar;
    }

    public String toString() {
        return ic.l(ic.q("RxThreadFactory["), this.b, "]");
    }

    public ef0(String str, int i) {
        this.b = str;
        this.c = i;
        this.d = false;
    }

    public ef0(String str, int i, boolean z) {
        this.b = str;
        this.c = i;
        this.d = z;
    }
}
