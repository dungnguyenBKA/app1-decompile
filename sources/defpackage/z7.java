package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.e;

/* renamed from: z7  reason: default package */
public class z7 extends ec<PointF> {
    private Path o;
    private final ec<PointF> p;

    public z7(e eVar, ec<PointF> ecVar) {
        super(eVar, ecVar.b, ecVar.c, ecVar.d, ecVar.e, ecVar.f);
        this.p = ecVar;
        i();
    }

    public void i() {
        T t;
        T t2 = this.c;
        boolean z = (t2 == null || (t = this.b) == null || !t.equals(((PointF) t2).x, ((PointF) t2).y)) ? false : true;
        T t3 = this.c;
        if (t3 != null && !z) {
            T t4 = this.b;
            T t5 = t3;
            ec<PointF> ecVar = this.p;
            PointF pointF = ecVar.m;
            PointF pointF2 = ecVar.n;
            int i = dc.g;
            Path path = new Path();
            path.moveTo(((PointF) t4).x, ((PointF) t4).y);
            if (pointF == null || pointF2 == null || (pointF.length() == 0.0f && pointF2.length() == 0.0f)) {
                path.lineTo(((PointF) t5).x, ((PointF) t5).y);
            } else {
                float f = ((PointF) t4).x;
                float f2 = ((PointF) t5).x;
                float f3 = ((PointF) t5).y;
                path.cubicTo(pointF.x + f, ((PointF) t4).y + pointF.y, f2 + pointF2.x, f3 + pointF2.y, f2, f3);
            }
            this.o = path;
        }
    }

    /* access modifiers changed from: package-private */
    public Path j() {
        return this.o;
    }
}
