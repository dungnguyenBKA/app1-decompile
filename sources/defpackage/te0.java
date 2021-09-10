package defpackage;

import androidx.core.app.b;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: te0  reason: default package */
public final class te0<T> extends AtomicReference<be0> implements wd0<T>, be0 {
    final je0<? super T> b;
    final je0<? super Throwable> c;
    final ie0 d;
    final je0<? super be0> e;

    public te0(je0<? super T> je0, je0<? super Throwable> je02, ie0 ie0, je0<? super be0> je03) {
        this.b = je0;
        this.c = je02;
        this.d = ie0;
        this.e = je03;
    }

    @Override // defpackage.wd0
    public void a() {
        if (!d()) {
            lazySet(le0.DISPOSED);
            try {
                this.d.run();
            } catch (Throwable th) {
                b.K0(th);
                mf0.f(th);
            }
        }
    }

    @Override // defpackage.wd0
    public void b(Throwable th) {
        if (!d()) {
            lazySet(le0.DISPOSED);
            try {
                this.c.a(th);
            } catch (Throwable th2) {
                b.K0(th2);
                mf0.f(new ee0(Arrays.asList(th, th2)));
            }
        } else {
            mf0.f(th);
        }
    }

    @Override // defpackage.wd0
    public void c(T t) {
        if (!d()) {
            try {
                this.b.a(t);
            } catch (Throwable th) {
                b.K0(th);
                ((be0) get()).e();
                b(th);
            }
        }
    }

    public boolean d() {
        return get() == le0.DISPOSED;
    }

    @Override // defpackage.be0
    public void e() {
        le0.a(this);
    }

    @Override // defpackage.wd0
    public void f(be0 be0) {
        if (le0.b(this, be0)) {
            try {
                this.e.a(this);
            } catch (Throwable th) {
                b.K0(th);
                be0.e();
                b(th);
            }
        }
    }
}
