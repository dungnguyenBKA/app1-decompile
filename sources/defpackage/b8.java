package defpackage;

import android.graphics.PointF;
import java.util.List;

/* renamed from: b8  reason: default package */
public class b8 extends x7<PointF> {
    private final PointF i = new PointF();

    public b8(List<ec<PointF>> list) {
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
        PointF pointF = this.i;
        float f2 = ((PointF) t3).x;
        float a2 = ic.a(((PointF) t4).x, f2, f, f2);
        float f3 = ((PointF) t3).y;
        pointF.set(a2, ((((PointF) t4).y - f3) * f) + f3);
        return this.i;
    }
}
