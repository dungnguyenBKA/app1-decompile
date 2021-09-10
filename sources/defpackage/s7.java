package defpackage;

import java.util.ArrayList;
import java.util.List;

/* renamed from: s7  reason: default package */
public abstract class s7<K, A> {
    final List<b> a = new ArrayList(1);
    private boolean b = false;
    private final d<K> c;
    protected float d = 0.0f;
    protected gc<A> e;
    private A f = null;
    private float g = -1.0f;
    private float h = -1.0f;

    /* renamed from: s7$b */
    public interface b {
        void a();
    }

    /* renamed from: s7$c */
    private static final class c<T> implements d<T> {
        c(a aVar) {
        }

        @Override // defpackage.s7.d
        public boolean a(float f) {
            throw new IllegalStateException("not implemented");
        }

        @Override // defpackage.s7.d
        public ec<T> b() {
            throw new IllegalStateException("not implemented");
        }

        @Override // defpackage.s7.d
        public boolean c(float f) {
            return false;
        }

        @Override // defpackage.s7.d
        public float d() {
            return 1.0f;
        }

        @Override // defpackage.s7.d
        public float e() {
            return 0.0f;
        }

        @Override // defpackage.s7.d
        public boolean isEmpty() {
            return true;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: s7$d */
    public interface d<T> {
        boolean a(float f);

        ec<T> b();

        boolean c(float f);

        float d();

        float e();

        boolean isEmpty();
    }

    /* renamed from: s7$e */
    private static final class e<T> implements d<T> {
        private final List<? extends ec<T>> a;
        private ec<T> b;
        private ec<T> c = null;
        private float d = -1.0f;

        e(List<? extends ec<T>> list) {
            this.a = list;
            this.b = f(0.0f);
        }

        private ec<T> f(float f) {
            List<? extends ec<T>> list = this.a;
            ec<T> ecVar = (ec) list.get(list.size() - 1);
            if (f >= ecVar.e()) {
                return ecVar;
            }
            for (int size = this.a.size() - 2; size >= 1; size--) {
                ec<T> ecVar2 = (ec) this.a.get(size);
                if (this.b != ecVar2 && ecVar2.a(f)) {
                    return ecVar2;
                }
            }
            return (ec) this.a.get(0);
        }

        @Override // defpackage.s7.d
        public boolean a(float f) {
            ec<T> ecVar = this.c;
            ec<T> ecVar2 = this.b;
            if (ecVar == ecVar2 && this.d == f) {
                return true;
            }
            this.c = ecVar2;
            this.d = f;
            return false;
        }

        @Override // defpackage.s7.d
        public ec<T> b() {
            return this.b;
        }

        @Override // defpackage.s7.d
        public boolean c(float f) {
            if (this.b.a(f)) {
                return !this.b.h();
            }
            this.b = f(f);
            return true;
        }

        @Override // defpackage.s7.d
        public float d() {
            List<? extends ec<T>> list = this.a;
            return ((ec) list.get(list.size() - 1)).b();
        }

        @Override // defpackage.s7.d
        public float e() {
            return ((ec) this.a.get(0)).e();
        }

        @Override // defpackage.s7.d
        public boolean isEmpty() {
            return false;
        }
    }

    /* renamed from: s7$f */
    private static final class f<T> implements d<T> {
        private final ec<T> a;
        private float b = -1.0f;

        f(List<? extends ec<T>> list) {
            this.a = (ec) list.get(0);
        }

        @Override // defpackage.s7.d
        public boolean a(float f) {
            if (this.b == f) {
                return true;
            }
            this.b = f;
            return false;
        }

        @Override // defpackage.s7.d
        public ec<T> b() {
            return this.a;
        }

        @Override // defpackage.s7.d
        public boolean c(float f) {
            return !this.a.h();
        }

        @Override // defpackage.s7.d
        public float d() {
            return this.a.b();
        }

        @Override // defpackage.s7.d
        public float e() {
            return this.a.e();
        }

        @Override // defpackage.s7.d
        public boolean isEmpty() {
            return false;
        }
    }

    s7(List<? extends ec<K>> list) {
        d<K> dVar;
        d<K> dVar2;
        if (list.isEmpty()) {
            dVar = new c<>(null);
        } else {
            if (list.size() == 1) {
                dVar2 = new f<>(list);
            } else {
                dVar2 = new e<>(list);
            }
            dVar = dVar2;
        }
        this.c = dVar;
    }

    public void a(b bVar) {
        this.a.add(bVar);
    }

    /* access modifiers changed from: protected */
    public ec<K> b() {
        ec<K> b2 = this.c.b();
        com.airbnb.lottie.b.a("BaseKeyframeAnimation#getCurrentKeyframe");
        return b2;
    }

    /* access modifiers changed from: package-private */
    public float c() {
        if (this.h == -1.0f) {
            this.h = this.c.d();
        }
        return this.h;
    }

    /* access modifiers changed from: protected */
    public float d() {
        ec<K> b2 = b();
        if (b2.h()) {
            return 0.0f;
        }
        return b2.d.getInterpolation(e());
    }

    /* access modifiers changed from: package-private */
    public float e() {
        if (this.b) {
            return 0.0f;
        }
        ec<K> b2 = b();
        if (b2.h()) {
            return 0.0f;
        }
        return (this.d - b2.e()) / (b2.b() - b2.e());
    }

    public float f() {
        return this.d;
    }

    public A g() {
        float d2 = d();
        if (this.e == null && this.c.a(d2)) {
            return this.f;
        }
        A h2 = h(b(), d2);
        this.f = h2;
        return h2;
    }

    /* access modifiers changed from: package-private */
    public abstract A h(ec<K> ecVar, float f2);

    public void i() {
        for (int i = 0; i < this.a.size(); i++) {
            this.a.get(i).a();
        }
    }

    public void j() {
        this.b = true;
    }

    public void k(float f2) {
        if (!this.c.isEmpty()) {
            if (this.g == -1.0f) {
                this.g = this.c.e();
            }
            float f3 = this.g;
            if (f2 < f3) {
                if (f3 == -1.0f) {
                    this.g = this.c.e();
                }
                f2 = this.g;
            } else if (f2 > c()) {
                f2 = c();
            }
            if (f2 != this.d) {
                this.d = f2;
                if (this.c.c(f2)) {
                    i();
                }
            }
        }
    }

    public void l(gc<A> gcVar) {
        gc<A> gcVar2 = this.e;
        this.e = gcVar;
    }
}
