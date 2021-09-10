package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;

/* renamed from: fa  reason: default package */
public class fa extends z9 {
    private final Path A;
    private final ca B;
    private s7<ColorFilter, ColorFilter> C;
    private final RectF x = new RectF();
    private final Paint y;
    private final float[] z;

    fa(g gVar, ca caVar) {
        super(gVar, caVar);
        y6 y6Var = new y6();
        this.y = y6Var;
        this.z = new float[8];
        this.A = new Path();
        this.B = caVar;
        y6Var.setAlpha(0);
        y6Var.setStyle(Paint.Style.FILL);
        y6Var.setColor(caVar.m());
    }

    @Override // defpackage.d7, defpackage.z9
    public void d(RectF rectF, Matrix matrix, boolean z2) {
        super.d(rectF, matrix, z2);
        this.x.set(0.0f, 0.0f, (float) this.B.o(), (float) this.B.n());
        this.m.mapRect(this.x);
        rectF.set(this.x);
    }

    @Override // defpackage.p8, defpackage.z9
    public <T> void g(T t, gc<T> gcVar) {
        this.v.c(t, gcVar);
        if (t != l.C) {
            return;
        }
        if (gcVar == null) {
            this.C = null;
        } else {
            this.C = new h8(gcVar, null);
        }
    }

    @Override // defpackage.z9
    public void l(Canvas canvas, Matrix matrix, int i) {
        int alpha = Color.alpha(this.B.m());
        if (alpha != 0) {
            int intValue = (int) ((((((float) alpha) / 255.0f) * ((float) (this.v.h() == null ? 100 : this.v.h().g().intValue()))) / 100.0f) * (((float) i) / 255.0f) * 255.0f);
            this.y.setAlpha(intValue);
            s7<ColorFilter, ColorFilter> s7Var = this.C;
            if (s7Var != null) {
                this.y.setColorFilter(s7Var.g());
            }
            if (intValue > 0) {
                float[] fArr = this.z;
                fArr[0] = 0.0f;
                fArr[1] = 0.0f;
                fArr[2] = (float) this.B.o();
                float[] fArr2 = this.z;
                fArr2[3] = 0.0f;
                fArr2[4] = (float) this.B.o();
                this.z[5] = (float) this.B.n();
                float[] fArr3 = this.z;
                fArr3[6] = 0.0f;
                fArr3[7] = (float) this.B.n();
                matrix.mapPoints(this.z);
                this.A.reset();
                Path path = this.A;
                float[] fArr4 = this.z;
                path.moveTo(fArr4[0], fArr4[1]);
                Path path2 = this.A;
                float[] fArr5 = this.z;
                path2.lineTo(fArr5[2], fArr5[3]);
                Path path3 = this.A;
                float[] fArr6 = this.z;
                path3.lineTo(fArr6[4], fArr6[5]);
                Path path4 = this.A;
                float[] fArr7 = this.z;
                path4.lineTo(fArr7[6], fArr7[7]);
                Path path5 = this.A;
                float[] fArr8 = this.z;
                path5.lineTo(fArr8[0], fArr8[1]);
                this.A.close();
                canvas.drawPath(this.A, this.y);
            }
        }
    }
}
