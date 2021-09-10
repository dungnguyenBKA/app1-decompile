package defpackage;

import android.graphics.PointF;
import java.util.List;

/* renamed from: x8  reason: default package */
public class x8 implements f9<PointF, PointF> {
    private final List<ec<PointF>> a;

    public x8(List<ec<PointF>> list) {
        this.a = list;
    }

    @Override // defpackage.f9
    public s7<PointF, PointF> a() {
        if (this.a.get(0).h()) {
            return new b8(this.a);
        }
        return new a8(this.a);
    }

    @Override // defpackage.f9
    public List<ec<PointF>> b() {
        return this.a;
    }

    @Override // defpackage.f9
    public boolean c() {
        return this.a.size() == 1 && this.a.get(0).h();
    }
}
