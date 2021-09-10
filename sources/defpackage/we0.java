package defpackage;

import androidx.core.app.b;
import java.util.Objects;
import java.util.concurrent.Callable;

/* renamed from: we0  reason: default package */
public final class we0<T> extends td0<T> implements Callable<T> {
    final Callable<? extends T> b;

    public we0(Callable<? extends T> callable) {
        this.b = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() {
        T t = (T) this.b.call();
        Objects.requireNonNull(t, "The callable returned a null value");
        return t;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: se0 */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.td0
    public void d(wd0<? super T> wd0) {
        se0 se0 = new se0(wd0);
        wd0.f(se0);
        boolean z = false;
        if (!(se0.get() == 4)) {
            try {
                Object call = this.b.call();
                Objects.requireNonNull(call, "Callable returned null");
                se0.i(call);
            } catch (Throwable th) {
                b.K0(th);
                if (se0.get() == 4) {
                    z = true;
                }
                if (!z) {
                    wd0.b(th);
                } else {
                    mf0.f(th);
                }
            }
        }
    }
}
