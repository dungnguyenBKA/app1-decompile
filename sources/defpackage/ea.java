package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.airbnb.lottie.g;
import java.util.Collections;
import java.util.List;

/* renamed from: ea  reason: default package */
public class ea extends z9 {
    private final c7 x;

    ea(g gVar, ca caVar) {
        super(gVar, caVar);
        c7 c7Var = new c7(gVar, this, new u9("__container", caVar.l(), false));
        this.x = c7Var;
        c7Var.b(Collections.emptyList(), Collections.emptyList());
    }

    @Override // defpackage.d7, defpackage.z9
    public void d(RectF rectF, Matrix matrix, boolean z) {
        super.d(rectF, matrix, z);
        this.x.d(rectF, this.m, z);
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.z9
    public void l(Canvas canvas, Matrix matrix, int i) {
        this.x.f(canvas, matrix, i);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.z9
    public void p(o8 o8Var, int i, List<o8> list, o8 o8Var2) {
        this.x.c(o8Var, i, list, o8Var2);
    }
}
