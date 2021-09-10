package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: e60  reason: default package */
public class e60 extends z60<Number> {
    e60(j60 j60) {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.z60
    public Number b(a90 a90) {
        if (a90.x0() != b90.NULL) {
            return Double.valueOf(a90.o0());
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
            return;
        }
        j60.a(number2.doubleValue());
        c90.y0(number2);
    }
}
