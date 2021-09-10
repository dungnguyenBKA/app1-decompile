package defpackage;

import java.util.List;

/* renamed from: u7  reason: default package */
public class u7 extends x7<Float> {
    public u7(List<ec<Float>> list) {
        super(list);
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.s7
    public Object h(ec ecVar, float f) {
        return Float.valueOf(n(ecVar, f));
    }

    public float m() {
        return n(b(), d());
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [T, java.lang.Object] */
    /* access modifiers changed from: package-private */
    public float n(ec<Float> ecVar, float f) {
        A a;
        if (ecVar.b == null || ecVar.c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        gc<A> gcVar = this.e;
        if (gcVar == null || (a = gcVar.a(ecVar.e, ecVar.f.floatValue(), ecVar.b, ecVar.c, f, e(), this.d)) == null) {
            return cc.f(ecVar.f(), ecVar.c(), f);
        }
        return a.floatValue();
    }
}
