package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: g60  reason: default package */
public class g60 extends z60<Number> {
    g60() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.z60
    public Number b(a90 a90) {
        if (a90.x0() != b90.NULL) {
            return Long.valueOf(a90.q0());
        }
        a90.t0();
        return null;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
    @Override // defpackage.z60
    public void c(c90 c90, Number number) {
        Number number2 = number;
        if (number2 == null) {
            c90.n0();
        } else {
            c90.z0(number2.toString());
        }
    }
}
