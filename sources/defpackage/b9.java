package defpackage;

import android.graphics.PointF;
import java.util.List;

/* renamed from: b9  reason: default package */
public class b9 implements f9<PointF, PointF> {
    private final u8 a;
    private final u8 b;

    public b9(u8 u8Var, u8 u8Var2) {
        this.a = u8Var;
        this.b = u8Var2;
    }

    @Override // defpackage.f9
    public s7<PointF, PointF> a() {
        return new e8(this.a.a(), this.b.a());
    }

    @Override // defpackage.f9
    public List<ec<PointF>> b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // defpackage.f9
    public boolean c() {
        return this.a.c() && this.b.c();
    }
}
