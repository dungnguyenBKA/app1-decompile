package defpackage;

import androidx.core.app.b;
import java.util.Objects;

/* renamed from: td0  reason: default package */
public abstract class td0<T> {
    public final td0<T> a(xd0 xd0) {
        int i = sd0.a;
        if (i > 0) {
            return new xe0(this, xd0, false, i);
        }
        throw new IllegalArgumentException("bufferSize" + " > 0 required but it was " + i);
    }

    public final be0 b(je0<? super T> je0, je0<? super Throwable> je02, ie0 ie0, je0<? super be0> je03) {
        Objects.requireNonNull(je0, "onNext is null");
        Objects.requireNonNull(je02, "onError is null");
        Objects.requireNonNull(ie0, "onComplete is null");
        te0 te0 = new te0(je0, je02, ie0, je03);
        c(te0);
        return te0;
    }

    public final void c(wd0<? super T> wd0) {
        Objects.requireNonNull(wd0, "observer is null");
        try {
            d(wd0);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            b.K0(th);
            mf0.f(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* access modifiers changed from: protected */
    public abstract void d(wd0<? super T> wd0);

    public final td0<T> e(xd0 xd0) {
        Objects.requireNonNull(xd0, "scheduler is null");
        return new ye0(this, xd0);
    }
}
