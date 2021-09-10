package defpackage;

import android.graphics.PointF;
import defpackage.ub;

/* renamed from: gb  reason: default package */
public class gb implements rb<PointF> {
    public static final gb a = new gb();

    private gb() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.rb
    public PointF a(ub ubVar, float f) {
        ub.b o0 = ubVar.o0();
        if (o0 == ub.b.BEGIN_ARRAY) {
            return za.b(ubVar, f);
        }
        if (o0 == ub.b.BEGIN_OBJECT) {
            return za.b(ubVar, f);
        }
        if (o0 == ub.b.NUMBER) {
            PointF pointF = new PointF(((float) ubVar.j0()) * f, ((float) ubVar.j0()) * f);
            while (ubVar.b0()) {
                ubVar.s0();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is " + o0);
    }
}
