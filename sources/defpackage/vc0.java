package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import androidx.core.app.b;

/* renamed from: vc0  reason: default package */
public class vc0 extends tc0 {
    private final oc0 a;
    private final Point b;
    private final float c;
    private float d;
    private float e;
    private Bitmap f;
    private int g = 0;
    private Matrix h;
    private mc0 i;
    private Rect j;

    vc0(oc0 oc0, mc0 mc0, Point point, float f2, float f3, Rect rect, Context context) {
        this.a = oc0;
        this.b = point;
        this.d = f2;
        this.c = f3;
        this.i = mc0;
        this.j = rect;
        e();
    }

    public static vc0 d(mc0 mc0, Rect rect, Context context) {
        oc0 oc0 = new oc0();
        return new vc0(oc0, mc0, new Point(oc0.a(rect.width()), oc0.a(rect.height())), (((oc0.c(25.0f) / 25.0f) * 0.1f) + 1.5707964f) - 0.05f, (float) (b.v(context, oc0.b(2.0f, 4.0f)) / 2), rect, context);
    }

    private void e() {
        this.h = new Matrix();
        this.f = this.i.b((int) this.a.b(0.0f, (float) this.i.c()));
        this.e = this.a.b(0.0f, 10.0f) / 10.0f;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tc0
    public void b(float f2) {
        double d2 = (double) this.b.x;
        double d3 = (double) this.c;
        double cos = Math.cos((double) this.d);
        Double.isNaN(d3);
        Double.isNaN(d3);
        Double.isNaN(d2);
        Double.isNaN(d2);
        double d4 = (cos * d3) + d2;
        double d5 = (double) this.e;
        Double.isNaN(d5);
        Double.isNaN(d5);
        int i2 = (int) (d4 + d5);
        double d6 = (double) this.b.y;
        double d7 = (double) this.c;
        Double.isNaN(d7);
        Double.isNaN(d7);
        double sin = Math.sin((double) this.d);
        Double.isNaN(d6);
        Double.isNaN(d6);
        this.d = (this.a.b(-25.0f, 25.0f) / 10000.0f) + this.d;
        this.b.set(i2, (int) ((sin * d7 * 2.0d) + d6));
        int width = this.j.width();
        int height = this.j.height();
        Point point = this.b;
        int i3 = point.x;
        int i4 = point.y;
        if (!(i3 >= -1 && i3 <= width && i4 >= -1 && i4 < height)) {
            this.b.x = this.a.a(this.j.width());
            this.b.y = -1;
            this.d = (((this.a.c(25.0f) / 25.0f) * 0.1f) + 1.5707964f) - 0.05f;
        }
        this.g++;
        this.h.reset();
        this.h.postRotate((float) this.g);
        Matrix matrix = this.h;
        Point point2 = this.b;
        matrix.postTranslate((float) point2.x, (float) point2.y);
    }

    @Override // defpackage.tc0
    public void c(Canvas canvas, Paint paint) {
        if (this.f == null) {
            e();
        }
        canvas.drawBitmap(this.f, this.h, paint);
    }
}
