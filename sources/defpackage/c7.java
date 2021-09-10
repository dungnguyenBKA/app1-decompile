package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.g;
import defpackage.s7;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* renamed from: c7  reason: default package */
public class c7 implements d7, l7, s7.b, p8 {
    private Paint a;
    private RectF b;
    private final Matrix c;
    private final Path d;
    private final RectF e;
    private final String f;
    private final boolean g;
    private final List<b7> h;
    private final g i;
    private List<l7> j;
    private g8 k;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c7(com.airbnb.lottie.g r8, defpackage.z9 r9, defpackage.u9 r10) {
        /*
            r7 = this;
            java.lang.String r3 = r10.c()
            boolean r4 = r10.d()
            java.util.List r0 = r10.b()
            java.util.ArrayList r5 = new java.util.ArrayList
            int r1 = r0.size()
            r5.<init>(r1)
            r1 = 0
            r2 = 0
        L_0x0017:
            int r6 = r0.size()
            if (r2 >= r6) goto L_0x002f
            java.lang.Object r6 = r0.get(r2)
            i9 r6 = (defpackage.i9) r6
            b7 r6 = r6.a(r8, r9)
            if (r6 == 0) goto L_0x002c
            r5.add(r6)
        L_0x002c:
            int r2 = r2 + 1
            goto L_0x0017
        L_0x002f:
            java.util.List r10 = r10.b()
        L_0x0033:
            int r0 = r10.size()
            if (r1 >= r0) goto L_0x004a
            java.lang.Object r0 = r10.get(r1)
            i9 r0 = (defpackage.i9) r0
            boolean r2 = r0 instanceof defpackage.e9
            if (r2 == 0) goto L_0x0047
            e9 r0 = (defpackage.e9) r0
            r6 = r0
            goto L_0x004c
        L_0x0047:
            int r1 = r1 + 1
            goto L_0x0033
        L_0x004a:
            r10 = 0
            r6 = r10
        L_0x004c:
            r0 = r7
            r1 = r8
            r2 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c7.<init>(com.airbnb.lottie.g, z9, u9):void");
    }

    @Override // defpackage.s7.b
    public void a() {
        this.i.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        ArrayList arrayList = new ArrayList(this.h.size() + list.size());
        arrayList.addAll(list);
        for (int size = this.h.size() - 1; size >= 0; size--) {
            b7 b7Var = this.h.get(size);
            b7Var.b(arrayList, this.h.subList(0, size));
            arrayList.add(b7Var);
        }
    }

    @Override // defpackage.p8
    public void c(o8 o8Var, int i2, List<o8> list, o8 o8Var2) {
        if (o8Var.f(this.f, i2)) {
            if (!"__container".equals(this.f)) {
                o8Var2 = o8Var2.a(this.f);
                if (o8Var.c(this.f, i2)) {
                    list.add(o8Var2.h(this));
                }
            }
            if (o8Var.g(this.f, i2)) {
                int e2 = o8Var.e(this.f, i2) + i2;
                for (int i3 = 0; i3 < this.h.size(); i3++) {
                    b7 b7Var = this.h.get(i3);
                    if (b7Var instanceof p8) {
                        ((p8) b7Var).c(o8Var, e2, list, o8Var2);
                    }
                }
            }
        }
    }

    @Override // defpackage.d7
    public void d(RectF rectF, Matrix matrix, boolean z) {
        this.c.set(matrix);
        g8 g8Var = this.k;
        if (g8Var != null) {
            this.c.preConcat(g8Var.f());
        }
        this.e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.h.size() - 1; size >= 0; size--) {
            b7 b7Var = this.h.get(size);
            if (b7Var instanceof d7) {
                ((d7) b7Var).d(this.e, this.c, z);
                rectF.union(this.e);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public List<l7> e() {
        if (this.j == null) {
            this.j = new ArrayList();
            for (int i2 = 0; i2 < this.h.size(); i2++) {
                b7 b7Var = this.h.get(i2);
                if (b7Var instanceof l7) {
                    this.j.add((l7) b7Var);
                }
            }
        }
        return this.j;
    }

    @Override // defpackage.d7
    public void f(Canvas canvas, Matrix matrix, int i2) {
        if (!this.g) {
            this.c.set(matrix);
            g8 g8Var = this.k;
            if (g8Var != null) {
                this.c.preConcat(g8Var.f());
                i2 = (int) ((((((float) (this.k.h() == null ? 100 : this.k.h().g().intValue())) / 100.0f) * ((float) i2)) / 255.0f) * 255.0f);
            }
            Objects.requireNonNull(this.i);
            for (int size = this.h.size() - 1; size >= 0; size--) {
                b7 b7Var = this.h.get(size);
                if (b7Var instanceof d7) {
                    ((d7) b7Var).f(canvas, this.c, i2);
                }
            }
        }
    }

    @Override // defpackage.p8
    public <T> void g(T t, gc<T> gcVar) {
        g8 g8Var = this.k;
        if (g8Var != null) {
            g8Var.c(t, gcVar);
        }
    }

    @Override // defpackage.b7
    public String getName() {
        return this.f;
    }

    @Override // defpackage.l7
    public Path getPath() {
        this.c.reset();
        g8 g8Var = this.k;
        if (g8Var != null) {
            this.c.set(g8Var.f());
        }
        this.d.reset();
        if (this.g) {
            return this.d;
        }
        for (int size = this.h.size() - 1; size >= 0; size--) {
            b7 b7Var = this.h.get(size);
            if (b7Var instanceof l7) {
                this.d.addPath(((l7) b7Var).getPath(), this.c);
            }
        }
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public Matrix h() {
        g8 g8Var = this.k;
        if (g8Var != null) {
            return g8Var.f();
        }
        this.c.reset();
        return this.c;
    }

    c7(g gVar, z9 z9Var, String str, boolean z, List<b7> list, e9 e9Var) {
        this.a = new y6();
        this.b = new RectF();
        this.c = new Matrix();
        this.d = new Path();
        this.e = new RectF();
        this.f = str;
        this.i = gVar;
        this.g = z;
        this.h = list;
        if (e9Var != null) {
            g8 g8Var = new g8(e9Var);
            this.k = g8Var;
            g8Var.a(z9Var);
            this.k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            b7 b7Var = list.get(size);
            if (b7Var instanceof i7) {
                arrayList.add((i7) b7Var);
            }
        }
        int size2 = arrayList.size();
        while (true) {
            size2--;
            if (size2 >= 0) {
                ((i7) arrayList.get(size2)).e(list.listIterator(list.size()));
            } else {
                return;
            }
        }
    }
}
