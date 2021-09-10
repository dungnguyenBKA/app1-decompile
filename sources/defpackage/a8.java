package defpackage;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* renamed from: a8  reason: default package */
public class a8 extends x7<PointF> {
    private final PointF i = new PointF();
    private final float[] j = new float[2];
    private z7 k;
    private PathMeasure l = new PathMeasure();

    public a8(List<? extends ec<PointF>> list) {
        super(list);
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, java.lang.Object] */
    @Override // defpackage.s7
    public Object h(ec ecVar, float f) {
        A a;
        z7 z7Var = (z7) ecVar;
        Path j2 = z7Var.j();
        if (j2 == null) {
            return ecVar.b;
        }
        gc<A> gcVar = this.e;
        if (gcVar != null && (a = gcVar.a(z7Var.e, z7Var.f.floatValue(), z7Var.b, z7Var.c, e(), f, this.d)) != null) {
            return a;
        }
        if (this.k != z7Var) {
            this.l.setPath(j2, false);
            this.k = z7Var;
        }
        PathMeasure pathMeasure = this.l;
        pathMeasure.getPosTan(pathMeasure.getLength() * f, this.j, null);
        PointF pointF = this.i;
        float[] fArr = this.j;
        pointF.set(fArr[0], fArr[1]);
        return this.i;
    }
}
