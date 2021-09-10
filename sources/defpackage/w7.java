package defpackage;

import java.util.List;

/* renamed from: w7  reason: default package */
public class w7 extends x7<Integer> {
    public w7(List<ec<Integer>> list) {
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

    /* JADX WARN: Type inference failed for: r4v0, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [T, java.lang.Object] */
    /* access modifiers changed from: package-private */
    public int n(ec<Integer> ecVar, float f) {
        A a;
        if (ecVar.b == null || ecVar.c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        gc<A> gcVar = this.e;
        if (gcVar != null && (a = gcVar.a(ecVar.e, ecVar.f.floatValue(), ecVar.b, ecVar.c, f, e(), this.d)) != null) {
            return a.intValue();
        }
        int g = ecVar.g();
        int d = ecVar.d();
        int i = cc.b;
        return (int) ((f * ((float) (d - g))) + ((float) g));
    }
}
