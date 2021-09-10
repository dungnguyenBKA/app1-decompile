package defpackage;

import defpackage.ih0;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;

/* renamed from: xg0  reason: default package */
public final class xg0 {
    @Nullable
    private ExecutorService a;
    private final Deque<ih0.b> b = new ArrayDeque();
    private final Deque<ih0.b> c = new ArrayDeque();
    private final Deque<ih0> d = new ArrayDeque();

    private <T> void c(Deque<T> deque, T t) {
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        f();
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0054  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean f() {
        /*
        // Method dump skipped, instructions count: 143
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xg0.f():boolean");
    }

    private int g(ih0.b bVar) {
        int i = 0;
        for (ih0.b bVar2 : this.c) {
            ih0 ih0 = ih0.this;
            if (!ih0.g && ih0.f.a.d.equals(ih0.this.f.a.d)) {
                i++;
            }
        }
        return i;
    }

    /* access modifiers changed from: package-private */
    public void a(ih0.b bVar) {
        synchronized (this) {
            this.b.add(bVar);
        }
        f();
    }

    /* access modifiers changed from: package-private */
    public synchronized void b(ih0 ih0) {
        this.d.add(ih0);
    }

    /* access modifiers changed from: package-private */
    public void d(ih0.b bVar) {
        c(this.c, bVar);
    }

    /* access modifiers changed from: package-private */
    public void e(ih0 ih0) {
        c(this.d, ih0);
    }
}
