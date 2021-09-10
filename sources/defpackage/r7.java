package defpackage;

import defpackage.s7;
import defpackage.x9;
import java.util.ArrayList;
import java.util.List;

/* renamed from: r7  reason: default package */
public class r7 implements b7, s7.b {
    private final boolean a;
    private final List<s7.b> b = new ArrayList();
    private final x9.a c;
    private final s7<?, Float> d;
    private final s7<?, Float> e;
    private final s7<?, Float> f;

    public r7(z9 z9Var, x9 x9Var) {
        this.a = x9Var.f();
        this.c = x9Var.e();
        s7<Float, Float> a2 = x9Var.d().a();
        this.d = a2;
        s7<Float, Float> a3 = x9Var.b().a();
        this.e = a3;
        s7<Float, Float> a4 = x9Var.c().a();
        this.f = a4;
        z9Var.i(a2);
        z9Var.i(a3);
        z9Var.i(a4);
        a2.a(this);
        a3.a(this);
        a4.a(this);
    }

    @Override // defpackage.s7.b
    public void a() {
        for (int i = 0; i < this.b.size(); i++) {
            this.b.get(i).a();
        }
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
    }

    /* access modifiers changed from: package-private */
    public void c(s7.b bVar) {
        this.b.add(bVar);
    }

    public s7<?, Float> e() {
        return this.e;
    }

    public s7<?, Float> g() {
        return this.f;
    }

    public s7<?, Float> h() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public x9.a i() {
        return this.c;
    }

    public boolean j() {
        return this.a;
    }
}
