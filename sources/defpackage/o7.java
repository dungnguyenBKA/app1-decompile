package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;
import defpackage.s7;
import java.util.List;
import java.util.Objects;

/* renamed from: o7  reason: default package */
public class o7 implements d7, l7, i7, s7.b, j7 {
    private final Matrix a = new Matrix();
    private final Path b = new Path();
    private final g c;
    private final z9 d;
    private final String e;
    private final boolean f;
    private final s7<Float, Float> g;
    private final s7<Float, Float> h;
    private final g8 i;
    private c7 j;

    public o7(g gVar, z9 z9Var, r9 r9Var) {
        this.c = gVar;
        this.d = z9Var;
        this.e = r9Var.c();
        this.f = r9Var.f();
        s7<Float, Float> a2 = r9Var.b().a();
        this.g = a2;
        z9Var.i(a2);
        a2.a(this);
        s7<Float, Float> a3 = r9Var.d().a();
        this.h = a3;
        z9Var.i(a3);
        a3.a(this);
        e9 e2 = r9Var.e();
        Objects.requireNonNull(e2);
        g8 g8Var = new g8(e2);
        this.i = g8Var;
        g8Var.a(z9Var);
        g8Var.b(this);
    }

    @Override // defpackage.s7.b
    public void a() {
        this.c.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        this.j.b(list, list2);
    }

    @Override // defpackage.p8
    public void c(o8 o8Var, int i2, List<o8> list, o8 o8Var2) {
        cc.g(o8Var, i2, list, o8Var2, this);
    }

    @Override // defpackage.d7
    public void d(RectF rectF, Matrix matrix, boolean z) {
        this.j.d(rectF, matrix, z);
    }

    /* JADX WARNING: Removed duplicated region for block: B:3:0x0005 A[LOOP:0: B:3:0x0005->B:6:0x000f, LOOP_START] */
    @Override // defpackage.i7
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e(java.util.ListIterator<defpackage.b7> r9) {
        /*
            r8 = this;
            c7 r0 = r8.j
            if (r0 == 0) goto L_0x0005
            return
        L_0x0005:
            boolean r0 = r9.hasPrevious()
            if (r0 == 0) goto L_0x0012
            java.lang.Object r0 = r9.previous()
            if (r0 == r8) goto L_0x0012
            goto L_0x0005
        L_0x0012:
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
        L_0x0017:
            boolean r0 = r9.hasPrevious()
            if (r0 == 0) goto L_0x0028
            java.lang.Object r0 = r9.previous()
            r6.add(r0)
            r9.remove()
            goto L_0x0017
        L_0x0028:
            java.util.Collections.reverse(r6)
            c7 r9 = new c7
            com.airbnb.lottie.g r2 = r8.c
            z9 r3 = r8.d
            boolean r5 = r8.f
            r7 = 0
            java.lang.String r4 = "Repeater"
            r1 = r9
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r8.j = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o7.e(java.util.ListIterator):void");
    }

    @Override // defpackage.d7
    public void f(Canvas canvas, Matrix matrix, int i2) {
        float floatValue = this.g.g().floatValue();
        float floatValue2 = this.h.g().floatValue();
        float floatValue3 = this.i.i().g().floatValue() / 100.0f;
        float floatValue4 = this.i.e().g().floatValue() / 100.0f;
        for (int i3 = ((int) floatValue) - 1; i3 >= 0; i3--) {
            this.a.set(matrix);
            float f2 = (float) i3;
            this.a.preConcat(this.i.g(f2 + floatValue2));
            this.j.f(canvas, this.a, (int) (cc.f(floatValue3, floatValue4, f2 / floatValue) * ((float) i2)));
        }
    }

    @Override // defpackage.p8
    public <T> void g(T t, gc<T> gcVar) {
        if (!this.i.c(t, gcVar)) {
            if (t == l.q) {
                this.g.l(gcVar);
            } else if (t == l.r) {
                this.h.l(gcVar);
            }
        }
    }

    @Override // defpackage.b7
    public String getName() {
        return this.e;
    }

    @Override // defpackage.l7
    public Path getPath() {
        Path path = this.j.getPath();
        this.b.reset();
        float floatValue = this.g.g().floatValue();
        float floatValue2 = this.h.g().floatValue();
        for (int i2 = ((int) floatValue) - 1; i2 >= 0; i2--) {
            this.a.set(this.i.g(((float) i2) + floatValue2));
            this.b.addPath(path, this.a);
        }
        return this.b;
    }
}
