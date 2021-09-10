package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.b;

public interface c extends b.a {

    public static class b implements TypeEvaluator<e> {
        public static final TypeEvaluator<e> b = new b();
        private final e a = new e(null);

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
        @Override // android.animation.TypeEvaluator
        public e evaluate(float f, e eVar, e eVar2) {
            e eVar3 = eVar;
            e eVar4 = eVar2;
            e eVar5 = this.a;
            float c = wx.c(eVar3.a, eVar4.a, f);
            float c2 = wx.c(eVar3.b, eVar4.b, f);
            float c3 = wx.c(eVar3.c, eVar4.c, f);
            eVar5.a = c;
            eVar5.b = c2;
            eVar5.c = c3;
            return this.a;
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$c  reason: collision with other inner class name */
    public static class C0075c extends Property<c, e> {
        public static final Property<c, e> a = new C0075c("circularReveal");

        private C0075c(String str) {
            super(e.class, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public e get(c cVar) {
            return cVar.a();
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(c cVar, e eVar) {
            cVar.b(eVar);
        }
    }

    public static class d extends Property<c, Integer> {
        public static final Property<c, Integer> a = new d("circularRevealScrimColor");

        private d(String str) {
            super(Integer.class, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public Integer get(c cVar) {
            return Integer.valueOf(cVar.f());
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(c cVar, Integer num) {
            cVar.j(num.intValue());
        }
    }

    public static class e {
        public float a;
        public float b;
        public float c;

        private e() {
        }

        e(a aVar) {
        }

        public e(float f, float f2, float f3) {
            this.a = f;
            this.b = f2;
            this.c = f3;
        }
    }

    e a();

    void b(e eVar);

    void c();

    void d(Drawable drawable);

    int f();

    void h();

    void j(int i);
}
