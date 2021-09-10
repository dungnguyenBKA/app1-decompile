package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

public abstract class b {
    protected Context b;
    protected Matrix c = new Matrix();
    protected double d;
    protected double e;
    protected float f;
    protected int g;
    protected int h;
    public boolean i;
    protected boolean j;
    public float[] k;
    public float[] l;
    public float m;
    public float n;
    protected Matrix o;
    protected boolean p;

    public b() {
        new Bundle();
        new Matrix();
        this.d = 1.0d;
        this.e = 1.0d;
        this.f = 0.0f;
        this.j = true;
        this.k = new float[10];
        this.l = new float[10];
        this.o = new Matrix();
        this.p = false;
        this.b = CollageMakerApplication.b();
    }

    public void A(int i2) {
        this.g = i2;
        if (i2 <= 0) {
            em.h("restoreState", "layoutWidth is set to 0:");
            new Exception().printStackTrace();
            Throwable th = new Throwable();
            th.printStackTrace();
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null) {
                em.h("TAG", "-----------------------------------");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    StringBuilder q = ic.q("ClassName: ");
                    q.append(stackTraceElement.getClassName());
                    em.h("TAG", q.toString());
                    em.h("TAG", "FileName: " + stackTraceElement.getFileName());
                    em.h("TAG", "LineNumber: " + stackTraceElement.getLineNumber());
                    em.h("TAG", "MethodName: " + stackTraceElement.getMethodName());
                }
                em.h("TAG", "-----------------------------------");
            }
        }
    }

    /* renamed from: a */
    public b clone() {
        b bVar = (b) super.clone();
        bVar.c = new Matrix(this.c);
        bVar.o = new Matrix(this.o);
        new Bundle();
        return bVar;
    }

    /* access modifiers changed from: protected */
    public boolean b(PointF pointF, PointF pointF2, PointF pointF3) {
        float f2 = pointF3.x;
        float f3 = pointF.x;
        float f4 = pointF2.x - f3;
        float f5 = pointF3.y;
        float f6 = pointF.y;
        double a = (double) ic.a(pointF2.y, f6, f5 - f6, f4 * (f2 - f3));
        return a > 0.0d || Double.isNaN(a);
    }

    public abstract void c(Canvas canvas);

    public void d(Canvas canvas) {
    }

    public PointF e() {
        float[] fArr = this.l;
        return new PointF(fArr[8], fArr[9]);
    }

    public float f() {
        return this.l[8];
    }

    public float g() {
        return this.l[9];
    }

    public float h() {
        float[] fArr = this.l;
        float J = androidx.core.app.b.J(fArr[0], fArr[1], fArr[2], fArr[3]);
        float[] fArr2 = this.k;
        return J / androidx.core.app.b.J(fArr2[0], fArr2[1], fArr2[2], fArr2[3]);
    }

    public int i() {
        float[] fArr = this.k;
        float f2 = fArr[2];
        float f3 = fArr[3];
        float f4 = f2 - fArr[4];
        float f5 = f3 - fArr[5];
        double sqrt = (double) ((float) Math.sqrt((double) ((f5 * f5) + (f4 * f4))));
        double d2 = this.e;
        Double.isNaN(sqrt);
        Double.isNaN(sqrt);
        return (int) (sqrt * d2);
    }

    public int j() {
        float[] fArr = this.k;
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = f2 - fArr[2];
        float f5 = f3 - fArr[3];
        double sqrt = (double) ((float) Math.sqrt((double) ((f5 * f5) + (f4 * f4))));
        double d2 = this.e;
        Double.isNaN(sqrt);
        Double.isNaN(sqrt);
        return (int) (sqrt * d2);
    }

    public abstract RectF k();

    public int l() {
        return this.h;
    }

    public abstract RectF m();

    public int n() {
        return this.g;
    }

    public double p() {
        return this.d;
    }

    public boolean q() {
        return this.p;
    }

    /* access modifiers changed from: protected */
    public boolean r(float[] fArr) {
        for (float f2 : fArr) {
            if (Float.isNaN(f2)) {
                return true;
            }
        }
        return false;
    }

    public boolean s(float f2, float f3) {
        float[] fArr = (float[]) this.k.clone();
        this.c.mapPoints(fArr, this.k);
        if (r(fArr)) {
            return true;
        }
        this.l = fArr;
        float[] fArr2 = this.l;
        PointF pointF = new PointF(fArr2[0], fArr2[1]);
        float[] fArr3 = this.l;
        PointF pointF2 = new PointF(fArr3[2], fArr3[3]);
        float[] fArr4 = this.l;
        PointF pointF3 = new PointF(fArr4[4], fArr4[5]);
        float[] fArr5 = this.l;
        PointF pointF4 = new PointF(fArr5[6], fArr5[7]);
        PointF pointF5 = new PointF(f2, f3);
        boolean b2 = b(pointF, pointF2, pointF5);
        boolean b3 = b(pointF2, pointF3, pointF5);
        boolean b4 = b(pointF3, pointF4, pointF5);
        boolean b5 = b(pointF4, pointF, pointF5);
        if (b2 && b3 && b4 && b5) {
            return true;
        }
        if (b2 || b3 || b4 || !b5) {
        }
        return false;
    }

    public boolean t() {
        return this.j;
    }

    public void u(float f2, float f3, float f4) {
        double d2 = this.e;
        double d3 = (double) f2;
        Double.isNaN(d3);
        this.e = d2 * d3;
        this.c.postScale(f2, f2, f3, f4);
        this.c.mapPoints(this.l, this.k);
    }

    public void v(float f2, float f3, float f4) {
        this.c.postRotate(f2, f3, f4);
        this.c.mapPoints(this.l, this.k);
    }

    public void w(float f2, float f3) {
        this.c.postTranslate(f2, f3);
        this.c.mapPoints(this.l, this.k);
    }

    public void x(float f2) {
        if (f2 != 0.0f) {
            float f3 = this.f + f2;
            this.f = f3;
            this.f = f3 % 360.0f;
            return;
        }
        this.f = 0.0f;
    }

    public void y(boolean z) {
        this.p = z;
    }

    public void z(int i2) {
        this.h = i2;
    }
}
