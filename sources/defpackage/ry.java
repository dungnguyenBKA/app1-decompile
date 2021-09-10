package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.Objects;

/* renamed from: ry  reason: default package */
public class ry {
    private final sy[] a = new sy[4];
    private final Matrix[] b = new Matrix[4];
    private final Matrix[] c = new Matrix[4];
    private final PointF d = new PointF();
    private final sy e = new sy();
    private final float[] f = new float[2];
    private final float[] g = new float[2];

    /* renamed from: ry$a */
    public interface a {
    }

    public ry() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new sy();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    public void a(qy qyVar, float f2, RectF rectF, a aVar, Path path) {
        float f3;
        ly lyVar;
        iy iyVar;
        jy jyVar;
        path.rewind();
        int i = 0;
        while (i < 4) {
            if (i == 1) {
                iyVar = qyVar.g;
            } else if (i == 2) {
                iyVar = qyVar.h;
            } else if (i != 3) {
                iyVar = qyVar.f;
            } else {
                iyVar = qyVar.e;
            }
            if (i == 1) {
                jyVar = qyVar.c;
            } else if (i == 2) {
                jyVar = qyVar.d;
            } else if (i != 3) {
                jyVar = qyVar.b;
            } else {
                jyVar = qyVar.a;
            }
            sy syVar = this.a[i];
            Objects.requireNonNull(jyVar);
            jyVar.a(syVar, 90.0f, f2, iyVar.a(rectF));
            int i2 = i + 1;
            float f4 = (float) (i2 * 90);
            this.b[i].reset();
            PointF pointF = this.d;
            if (i == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            Matrix matrix = this.b[i];
            PointF pointF2 = this.d;
            matrix.setTranslate(pointF2.x, pointF2.y);
            this.b[i].preRotate(f4);
            float[] fArr = this.f;
            sy[] syVarArr = this.a;
            fArr[0] = syVarArr[i].c;
            fArr[1] = syVarArr[i].d;
            this.b[i].mapPoints(fArr);
            this.c[i].reset();
            Matrix matrix2 = this.c[i];
            float[] fArr2 = this.f;
            matrix2.setTranslate(fArr2[0], fArr2[1]);
            this.c[i].preRotate(f4);
            i = i2;
        }
        int i3 = 0;
        while (i3 < 4) {
            float[] fArr3 = this.f;
            sy[] syVarArr2 = this.a;
            fArr3[0] = syVarArr2[i3].a;
            fArr3[1] = syVarArr2[i3].b;
            this.b[i3].mapPoints(fArr3);
            if (i3 == 0) {
                float[] fArr4 = this.f;
                path.moveTo(fArr4[0], fArr4[1]);
            } else {
                float[] fArr5 = this.f;
                path.lineTo(fArr5[0], fArr5[1]);
            }
            this.a[i3].c(this.b[i3], path);
            if (aVar != null) {
                my.this.c[i3] = this.a[i3].d(this.b[i3]);
            }
            int i4 = i3 + 1;
            int i5 = i4 % 4;
            float[] fArr6 = this.f;
            sy[] syVarArr3 = this.a;
            fArr6[0] = syVarArr3[i3].c;
            fArr6[1] = syVarArr3[i3].d;
            this.b[i3].mapPoints(fArr6);
            float[] fArr7 = this.g;
            sy[] syVarArr4 = this.a;
            fArr7[0] = syVarArr4[i5].a;
            fArr7[1] = syVarArr4[i5].b;
            this.b[i5].mapPoints(fArr7);
            float[] fArr8 = this.f;
            float f5 = fArr8[0];
            float[] fArr9 = this.g;
            float max = Math.max(((float) Math.hypot((double) (f5 - fArr9[0]), (double) (fArr8[1] - fArr9[1]))) - 0.001f, 0.0f);
            float[] fArr10 = this.f;
            sy[] syVarArr5 = this.a;
            fArr10[0] = syVarArr5[i3].c;
            fArr10[1] = syVarArr5[i3].d;
            this.b[i3].mapPoints(fArr10);
            if (i3 == 1 || i3 == 3) {
                f3 = Math.abs(rectF.centerX() - this.f[0]);
            } else {
                f3 = Math.abs(rectF.centerY() - this.f[1]);
            }
            this.e.f(0.0f, 0.0f, 270.0f, 0.0f);
            if (i3 == 1) {
                lyVar = qyVar.k;
            } else if (i3 == 2) {
                lyVar = qyVar.l;
            } else if (i3 != 3) {
                lyVar = qyVar.j;
            } else {
                lyVar = qyVar.i;
            }
            lyVar.a(max, f3, f2, this.e);
            this.e.c(this.c[i3], path);
            if (aVar != null) {
                my.this.d[i3] = this.e.d(this.c[i3]);
            }
            i3 = i4;
        }
        path.close();
    }
}
