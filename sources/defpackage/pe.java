package defpackage;

import defpackage.ye;
import java.util.ArrayDeque;
import java.util.Queue;

/* access modifiers changed from: package-private */
/* renamed from: pe  reason: default package */
public abstract class pe<T extends ye> {
    private final Queue<T> a = new ArrayDeque(20);

    pe() {
        int i = hl.c;
    }

    /* access modifiers changed from: package-private */
    public abstract T a();

    /* access modifiers changed from: package-private */
    public T b() {
        T poll = this.a.poll();
        return poll == null ? a() : poll;
    }

    public void c(T t) {
        if (this.a.size() < 20) {
            this.a.offer(t);
        }
    }
}
