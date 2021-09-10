package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import androidx.core.app.b;

/* renamed from: uc0  reason: default package */
public class uc0 extends tc0 {
    private final oc0 a;
    private final Point b;
    private float c;
    private float d;
    private Bitmap e;
    private float f = 0.0f;
    private int g;
    private int h = 0;
    private Matrix i;
    private mc0 j;
    private Rect k;

    uc0(oc0 oc0, mc0 mc0, Point point, float f2, float f3, Rect rect, Context context) {
        this.a = oc0;
        this.b = point;
        this.c = f2;
        this.d = f3;
        this.g = point.y;
        this.j = mc0;
        this.k = rect;
        e();
    }

    public static uc0 d(mc0 mc0, Rect rect, Context context) {
        oc0 oc0 = new oc0();
        double a2 = (double) oc0.a(rect.width());
        Double.isNaN(a2);
        Double.isNaN(a2);
        double width = (double) rect.width();
        Double.isNaN(width);
        Double.isNaN(width);
        return new uc0(oc0, mc0, new Point((int) ((width * 0.2d) + (a2 * 0.6d)), rect.height()), (((oc0.c(25.0f) / 25.0f) * 0.1f) + 1.5707964f) - 0.05f, (float) (b.v(context, oc0.b(2.0f, 4.0f)) / 2), rect, context);
    }

    private void e() {
        this.i = new Matrix();
        this.e = this.j.b((int) this.a.b(0.0f, (float) this.j.c()));
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tc0
    public void b(float f2) {
        Point point = this.b;
        double d2 = (double) point.x;
        double d3 = (double) this.d;
        Double.isNaN(d3);
        Double.isNaN(d3);
        Double.isNaN(d2);
        Double.isNaN(d2);
        double d4 = (double) point.y;
        double sin = Math.sin((double) this.c);
        Double.isNaN(d3);
        Double.isNaN(d3);
        double d5 = (double) this.f;
        Double.isNaN(d5);
        Double.isNaN(d5);
        Double.isNaN(d5);
        Double.isNaN(d5);
        Double.isNaN(d4);
        Double.isNaN(d4);
        this.c = (this.a.b(-25.0f, 25.0f) / 10000.0f) + this.c;
        this.b.set((int) (d2 - (d3 * 0.6d)), (int) (d4 - (((sin * d3) - ((d5 * 1.5d) * d5)) * 1.5d)));
        this.f += 0.02f;
        int width = this.k.width();
        int height = this.k.height();
        Point point2 = this.b;
        int i2 = point2.x;
        int i3 = point2.y;
        if (!(i2 >= -1 && i2 <= width && i3 >= -1 && i3 < height)) {
            int width2 = this.k.width();
            Point point3 = this.b;
            double a2 = (double) this.a.a(width2);
            Double.isNaN(a2);
            Double.isNaN(a2);
            Double.isNaN(a2);
            double d6 = (double) width2;
            Double.isNaN(d6);
            Double.isNaN(d6);
            Double.isNaN(d6);
            point3.x = (int) ((d6 * 0.2d) + (a2 * 0.6d));
            this.b.y = this.g;
            this.f = 0.0f;
            e();
            this.c = (((this.a.c(25.0f) / 25.0f) * 0.1f) + 1.5707964f) - 0.05f;
        }
        this.i.reset();
        int i4 = this.h - 1;
        this.h = i4;
        this.i.postRotate((float) i4);
        Matrix matrix = this.i;
        Point point4 = this.b;
        matrix.postTranslate((float) point4.x, (float) point4.y);
    }

    @Override // defpackage.tc0
    public void c(Canvas canvas, Paint paint) {
        if (this.e == null) {
            e();
        }
        canvas.drawBitmap(this.e, this.i, paint);
    }
}
