package defpackage;

import androidx.core.app.b;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ve0  reason: default package */
public final class ve0<T> extends td0<T> {
    final vd0<T> a;

    /* renamed from: ve0$a */
    static final class a<T> extends AtomicReference<be0> implements ud0<T>, be0 {
        final wd0<? super T> b;

        a(wd0<? super T> wd0) {
            this.b = wd0;
        }

        @Override // defpackage.ud0
        public void a() {
            if (!d()) {
                try {
                    this.b.a();
                } finally {
                    le0.a(this);
                }
            }
        }

        /* JADX INFO: finally extract failed */
        @Override // defpackage.ud0
        public void b(Throwable th) {
            boolean z;
            if (!d()) {
                try {
                    this.b.b(th);
                    le0.a(this);
                    z = true;
                } catch (Throwable th2) {
                    le0.a(this);
                    throw th2;
                }
            } else {
                z = false;
            }
            if (!z) {
                mf0.f(th);
            }
        }

        @Override // defpackage.ud0
        public void c(T t) {
            if (t == null) {
                b(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (!d()) {
                this.b.c(t);
            }
        }

        public boolean d() {
            return ((be0) get()) == le0.DISPOSED;
        }

        @Override // defpackage.be0
        public void e() {
            le0.a(this);
        }

        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public ve0(vd0<T> vd0) {
        this.a = vd0;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.td0
    public void d(wd0<? super T> wd0) {
        a aVar = new a(wd0);
        wd0.f(aVar);
        try {
            this.a.a(aVar);
        } catch (Throwable th) {
            b.K0(th);
            aVar.b(th);
        }
    }
}
