package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ye0  reason: default package */
public final class ye0<T> extends ue0<T, T> {
    final xd0 b;

    /* renamed from: ye0$a */
    static final class a<T> extends AtomicReference<be0> implements wd0<T>, be0 {
        final wd0<? super T> b;
        final AtomicReference<be0> c = new AtomicReference<>();

        a(wd0<? super T> wd0) {
            this.b = wd0;
        }

        @Override // defpackage.wd0
        public void a() {
            this.b.a();
        }

        @Override // defpackage.wd0
        public void b(Throwable th) {
            this.b.b(th);
        }

        @Override // defpackage.wd0
        public void c(T t) {
            this.b.c(t);
        }

        @Override // defpackage.be0
        public void e() {
            le0.a(this.c);
            le0.a(this);
        }

        @Override // defpackage.wd0
        public void f(be0 be0) {
            le0.b(this.c, be0);
        }
    }

    /* renamed from: ye0$b */
    final class b implements Runnable {
        private final a<T> b;

        b(a<T> aVar) {
            this.b = aVar;
        }

        public void run() {
            ye0.this.a.c(this.b);
        }
    }

    public ye0(td0<T> td0, xd0 xd0) {
        super(td0);
        this.b = xd0;
    }

    @Override // defpackage.td0
    public void d(wd0<? super T> wd0) {
        a aVar = new a(wd0);
        wd0.f(aVar);
        le0.b(aVar, this.b.b(new b(aVar)));
    }
}
