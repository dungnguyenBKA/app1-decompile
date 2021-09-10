package defpackage;

import java.util.List;

/* renamed from: c8  reason: default package */
public class c8 extends x7<hc> {
    private final hc i = new hc();

    public c8(List<ec<hc>> list) {
        super(list);
    }

    @Override // defpackage.s7
    public Object h(ec ecVar, float f) {
        T t;
        A a;
        T t2 = ecVar.b;
        if (t2 == null || (t = ecVar.c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        T t3 = t2;
        T t4 = t;
        gc<A> gcVar = this.e;
        if (gcVar != null && (a = gcVar.a(ecVar.e, ecVar.f.floatValue(), t3, t4, f, e(), this.d)) != null) {
            return a;
        }
        this.i.d(cc.f(t3.b(), t4.b(), f), cc.f(t3.c(), t4.c(), f));
        return this.i;
    }
}
