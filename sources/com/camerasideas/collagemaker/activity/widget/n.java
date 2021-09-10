package com.camerasideas.collagemaker.activity.widget;

import android.view.animation.Interpolator;

/* access modifiers changed from: package-private */
public class n {
    private final f a;

    class a implements f.b {
        final /* synthetic */ e a;

        a(e eVar) {
            this.a = eVar;
        }
    }

    class b implements f.a {
        final /* synthetic */ c a;

        b(c cVar) {
            this.a = cVar;
        }
    }

    interface c {
    }

    static class d implements c {
        d() {
        }
    }

    interface e {
        void a(n nVar);
    }

    /* access modifiers changed from: package-private */
    public static abstract class f {

        interface a {
        }

        interface b {
        }

        f() {
        }

        /* access modifiers changed from: package-private */
        public abstract void a(a aVar);

        /* access modifiers changed from: package-private */
        public abstract void b(b bVar);

        /* access modifiers changed from: package-private */
        public abstract void c();

        /* access modifiers changed from: package-private */
        public abstract float d();

        /* access modifiers changed from: package-private */
        public abstract int e();

        /* access modifiers changed from: package-private */
        public abstract long f();

        /* access modifiers changed from: package-private */
        public abstract boolean g();

        /* access modifiers changed from: package-private */
        public abstract void h(long j);

        /* access modifiers changed from: package-private */
        public abstract void i(float f, float f2);

        /* access modifiers changed from: package-private */
        public abstract void j(int i, int i2);

        /* access modifiers changed from: package-private */
        public abstract void k(Interpolator interpolator);

        /* access modifiers changed from: package-private */
        public abstract void l();
    }

    n(f fVar) {
        this.a = fVar;
    }

    public void a(c cVar) {
        this.a.a(new b(cVar));
    }

    public void b(e eVar) {
        this.a.b(new a(eVar));
    }

    public void c() {
        this.a.c();
    }

    public float d() {
        return this.a.d();
    }

    public int e() {
        return this.a.e();
    }

    public long f() {
        return this.a.f();
    }

    public boolean g() {
        return this.a.g();
    }

    public void h(long j) {
        this.a.h(j);
    }

    public void i(float f2, float f3) {
        this.a.i(f2, f3);
    }

    public void j(int i, int i2) {
        this.a.j(i, i2);
    }

    public void k(Interpolator interpolator) {
        this.a.k(interpolator);
    }

    public void l() {
        this.a.l();
    }
}
