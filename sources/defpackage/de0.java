package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Incorrect class signature, class is equals to this class: Lde0<Ljava/lang/Runnable;>; */
/* renamed from: de0  reason: default package */
final class de0 extends AtomicReference implements be0 {
    de0(Runnable runnable) {
        super(runnable);
    }

    @Override // defpackage.be0
    public final void e() {
        Object andSet;
        if (get() != null && (andSet = getAndSet(null)) != null) {
            ((Runnable) andSet).run();
        }
    }

    public String toString() {
        StringBuilder q = ic.q("RunnableDisposable(disposed=");
        q.append(get() == null);
        q.append(", ");
        q.append(get());
        q.append(")");
        return q.toString();
    }
}
