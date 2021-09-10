package defpackage;

import android.graphics.PointF;
import com.camerasideas.collagemaker.photoproc.graphicsitems.b;

/* renamed from: fp  reason: default package */
public class fp {
    private boolean a = true;
    private boolean b = true;
    private float c = 0.0f;

    private int a(float f, float f2) {
        int[] iArr = {0, 90, 180, 270, 360};
        for (int i = 0; i < 5; i++) {
            int i2 = iArr[i];
            if (Math.abs(((float) i2) - f) <= f2) {
                return i2;
            }
        }
        return -1;
    }

    public float b(b bVar, float f) {
        float[] fArr = bVar.k;
        PointF pointF = new PointF(fArr[0], fArr[1]);
        float[] fArr2 = bVar.k;
        PointF pointF2 = new PointF(fArr2[2], fArr2[3]);
        float[] fArr3 = bVar.l;
        PointF pointF3 = new PointF(fArr3[0], fArr3[1]);
        float[] fArr4 = bVar.l;
        PointF pointF4 = new PointF(fArr4[2], fArr4[3]);
        PointF pointF5 = new PointF(pointF2.x - pointF.x, pointF2.y - pointF.y);
        PointF pointF6 = new PointF(pointF4.x - pointF3.x, pointF4.y - pointF3.y);
        float degrees = (float) Math.toDegrees(Math.acos((double) (((pointF5.y * pointF6.y) + (pointF5.x * pointF6.x)) / (pointF6.length() * pointF5.length()))));
        float f2 = pointF4.x - pointF3.x;
        float f3 = pointF4.y - pointF3.y;
        if ((f2 < 0.0f && f3 < 0.0f) || (f2 > 0.0f && f3 < 0.0f)) {
            degrees = 360.0f - degrees;
        }
        float f4 = -f;
        if (!this.a) {
            int a2 = a(degrees, 5.0f);
            if (a2 != -1) {
                this.a = true;
                this.b = false;
                this.c = 0.0f;
                f4 = ((float) a2) - degrees;
            } else {
                this.b = true;
            }
        } else {
            if (a(degrees, 8.0f) == -1) {
                this.a = false;
                this.c = 0.0f;
            } else {
                this.c += f4;
            }
            if (Math.abs(this.c) > 24.0f) {
                this.b = true;
            }
            if (!this.b) {
                return 0.0f;
            }
        }
        return f4;
    }

    public boolean c() {
        return !this.b;
    }
}
