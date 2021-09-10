package defpackage;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* renamed from: ey  reason: default package */
public class ey {
    private static final int[] h = new int[3];
    private static final float[] i = {0.0f, 0.5f, 1.0f};
    private static final int[] j = new int[4];
    private static final float[] k = {0.0f, 0.0f, 0.5f, 1.0f};
    private final Paint a;
    private final Paint b;
    private final Paint c;
    private int d;
    private int e;
    private int f;
    private final Path g = new Path();

    public ey() {
        d(-16777216);
        Paint paint = new Paint(4);
        this.b = paint;
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.a = paint2;
        paint2.setColor(this.d);
        this.c = new Paint(paint);
    }

    public void a(Canvas canvas, Matrix matrix, RectF rectF, int i2, float f2, float f3) {
        boolean z = f3 < 0.0f;
        Path path = this.g;
        if (z) {
            int[] iArr = j;
            iArr[0] = 0;
            iArr[1] = this.f;
            iArr[2] = this.e;
            iArr[3] = this.d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f2, f3);
            path.close();
            float f4 = (float) (-i2);
            rectF.inset(f4, f4);
            int[] iArr2 = j;
            iArr2[0] = 0;
            iArr2[1] = this.d;
            iArr2[2] = this.e;
            iArr2[3] = this.f;
        }
        float width = 1.0f - (((float) i2) / (rectF.width() / 2.0f));
        float[] fArr = k;
        fArr[1] = width;
        fArr[2] = ((1.0f - width) / 2.0f) + width;
        this.b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, j, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
        }
        canvas.drawArc(rectF, f2, f3, true, this.b);
        canvas.restore();
    }

    public void b(Canvas canvas, Matrix matrix, RectF rectF, int i2) {
        rectF.bottom += (float) i2;
        rectF.offset(0.0f, (float) (-i2));
        int[] iArr = h;
        iArr[0] = this.f;
        iArr[1] = this.e;
        iArr[2] = this.d;
        Paint paint = this.c;
        float f2 = rectF.left;
        paint.setShader(new LinearGradient(f2, rectF.top, f2, rectF.bottom, iArr, i, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.c);
        canvas.restore();
    }

    public Paint c() {
        return this.a;
    }

    public void d(int i2) {
        this.d = k1.d(i2, 68);
        this.e = k1.d(i2, 20);
        this.f = k1.d(i2, 0);
    }
}
