package defpackage;

import java.util.List;

/* renamed from: t7  reason: default package */
public class t7 extends x7<Integer> {
    public t7(List<ec<Integer>> list) {
        super(list);
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.s7
    public Object h(ec ecVar, float f) {
        return Integer.valueOf(n(ecVar, f));
    }

    public int m() {
        return n(b(), d());
    }

    public int n(ec<Integer> ecVar, float f) {
        A a;
        T t = ecVar.b;
        if (t == null || ecVar.c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        int intValue = t.intValue();
        int intValue2 = ecVar.c.intValue();
        gc<A> gcVar = this.e;
        if (gcVar == null || (a = gcVar.a(ecVar.e, ecVar.f.floatValue(), (A) Integer.valueOf(intValue), (A) Integer.valueOf(intValue2), f, e(), this.d)) == null) {
            return xb.c(cc.b(f, 0.0f, 1.0f), intValue, intValue2);
        }
        return a.intValue();
    }
}
