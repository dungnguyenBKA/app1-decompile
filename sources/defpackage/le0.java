package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: le0  reason: default package */
public enum le0 implements be0 {
    DISPOSED;

    public static boolean a(AtomicReference<be0> atomicReference) {
        be0 andSet;
        be0 be0 = atomicReference.get();
        le0 le0 = DISPOSED;
        if (be0 == le0 || (andSet = atomicReference.getAndSet(le0)) == le0) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.e();
        return true;
    }

    public static boolean b(AtomicReference<be0> atomicReference, be0 be0) {
        Objects.requireNonNull(be0, "d is null");
        if (atomicReference.compareAndSet(null, be0)) {
            return true;
        }
        be0.e();
        if (atomicReference.get() == DISPOSED) {
            return false;
        }
        mf0.f(new ge0("Disposable already set!"));
        return false;
    }

    @Override // defpackage.be0
    public void e() {
    }
}
