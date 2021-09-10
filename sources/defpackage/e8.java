package defpackage;

import android.graphics.PointF;
import java.util.Collections;

/* renamed from: e8  reason: default package */
public class e8 extends s7<PointF, PointF> {
    private final PointF i = new PointF();
    private final s7<Float, Float> j;
    private final s7<Float, Float> k;

    public e8(s7<Float, Float> s7Var, s7<Float, Float> s7Var2) {
        super(Collections.emptyList());
        this.j = s7Var;
        this.k = s7Var2;
        k(this.d);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.s7
    public PointF g() {
        return this.i;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [ec, float] */
    /* access modifiers changed from: package-private */
    @Override // defpackage.s7
    public PointF h(ec<PointF> ecVar, float f) {
        return this.i;
    }

    @Override // defpackage.s7
    public void k(float f) {
        this.j.k(f);
        this.k.k(f);
        this.i.set(this.j.g().floatValue(), this.k.g().floatValue());
        for (int i2 = 0; i2 < this.a.size(); i2++) {
            this.a.get(i2).a();
        }
    }
}
