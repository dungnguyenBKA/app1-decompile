package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;

/* renamed from: ba  reason: default package */
public class ba extends z9 {
    private s7<ColorFilter, ColorFilter> A;
    private final Paint x = new y6(3);
    private final Rect y = new Rect();
    private final Rect z = new Rect();

    ba(g gVar, ca caVar) {
        super(gVar, caVar);
    }

    @Override // defpackage.d7, defpackage.z9
    public void d(RectF rectF, Matrix matrix, boolean z2) {
        super.d(rectF, matrix, z2);
        Bitmap m = this.n.m(this.o.k());
        if (m != null) {
            rectF.set(0.0f, 0.0f, dc.c() * ((float) m.getWidth()), dc.c() * ((float) m.getHeight()));
            this.m.mapRect(rectF);
        }
    }

    @Override // defpackage.p8, defpackage.z9
    public <T> void g(T t, gc<T> gcVar) {
        this.v.c(t, gcVar);
        if (t != l.C) {
            return;
        }
        if (gcVar == null) {
            this.A = null;
        } else {
            this.A = new h8(gcVar, null);
        }
    }

    @Override // defpackage.z9
    public void l(Canvas canvas, Matrix matrix, int i) {
        Bitmap m = this.n.m(this.o.k());
        if (m != null && !m.isRecycled()) {
            float c = dc.c();
            this.x.setAlpha(i);
            s7<ColorFilter, ColorFilter> s7Var = this.A;
            if (s7Var != null) {
                this.x.setColorFilter(s7Var.g());
            }
            canvas.save();
            canvas.concat(matrix);
            this.y.set(0, 0, m.getWidth(), m.getHeight());
            this.z.set(0, 0, (int) (((float) m.getWidth()) * c), (int) (((float) m.getHeight()) * c));
            canvas.drawBitmap(m, this.y, this.z, this.x);
            canvas.restore();
        }
    }
}
