package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.core.content.a;
import photoeditor.cutout.backgrounderaser.R;

public class h extends e implements Cloneable {
    private float A;
    private float B;
    private int C;
    private int D = 255;
    private RectF E = new RectF();
    private float F;
    private float G;
    private Paint x = new Paint(3);
    private Paint y = new Paint(3);
    private Bitmap z;

    public h() {
        this.r = c2.b(this.b, 2.0f);
        this.y.setColor(a.b(this.b, R.color.b6));
        this.y.setStyle(Paint.Style.STROKE);
        this.y.setStrokeWidth((float) this.r);
        this.y.setAntiAlias(true);
        this.x.setStyle(Paint.Style.FILL);
        this.C = c2.b(this.b, 10.0f);
        float b = (float) (c2.b(this.b, 0.5f) + this.r);
        this.F = b;
        this.G = (b - ((float) this.r)) / 2.0f;
    }

    private void I() {
        float[] fArr = this.k;
        float f = fArr[2];
        float f2 = fArr[0];
        float f3 = fArr[5];
        float f4 = fArr[1];
        float f5 = this.A;
        float f6 = this.B;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = fArr[0] + f5;
        fArr[3] = 0.0f;
        fArr[4] = fArr[0] + f5;
        fArr[5] = fArr[1] + f6;
        fArr[6] = 0.0f;
        fArr[7] = fArr[1] + f6;
        fArr[8] = (f5 / 2.0f) + fArr[0];
        fArr[9] = (f6 / 2.0f) + fArr[1];
        this.c.mapPoints(this.l, fArr);
    }

    /* renamed from: D */
    public h clone() {
        h hVar;
        CloneNotSupportedException e;
        try {
            hVar = (h) super.clone();
            try {
                hVar.x = new Paint(this.x);
                hVar.i = false;
                int i = this.C;
                hVar.w((float) i, (float) i);
            } catch (CloneNotSupportedException e2) {
                e = e2;
            }
        } catch (CloneNotSupportedException e3) {
            hVar = null;
            e = e3;
            e.printStackTrace();
            return hVar;
        }
        return hVar;
    }

    public void E(RectF rectF, int i, int i2) {
        this.E.set(rectF);
        this.g = i;
        this.h = i2;
        if (wq.o(this.z)) {
            this.A = (float) this.z.getWidth();
            this.B = (float) this.z.getHeight();
            double min = (double) Math.min(rectF.width(), (float) this.g);
            Double.isNaN(min);
            double max = (double) Math.max(this.z.getWidth(), this.z.getHeight());
            Double.isNaN(max);
            float f = (float) ((min * 0.7d) / max);
            int width = this.z.getWidth();
            int height = this.z.getHeight();
            this.e = (double) f;
            this.c.reset();
            this.c.postScale(f, f);
            this.c.postTranslate((((float) this.g) / 2.0f) - ((((float) width) * f) / 2.0f), (((float) this.h) / 2.0f) - ((((float) height) * f) / 2.0f));
            I();
        }
    }

    public void F(Canvas canvas, Bitmap bitmap, float f, float f2, float f3) {
        im.b("CutoutStickerItem/Save");
        Matrix matrix = new Matrix(this.c);
        float f4 = this.p ? -1.0f : 1.0f;
        float[] fArr = this.k;
        matrix.preScale(f4, 1.0f, fArr[8], fArr[9]);
        matrix.preScale(this.A / ((float) bitmap.getWidth()), this.B / ((float) bitmap.getHeight()), 0.0f, 0.0f);
        matrix.postScale(f, f, 0.0f, 0.0f);
        matrix.postTranslate(f2, f3);
        this.x.setAlpha(this.D);
        canvas.drawBitmap(bitmap, matrix, this.x);
    }

    public void G(RectF rectF) {
        this.E.set(rectF);
    }

    public boolean H(Bitmap bitmap) {
        this.z = bitmap;
        if (wq.o(bitmap)) {
            this.A = (float) this.z.getWidth();
            this.B = (float) this.z.getHeight();
            Math.min(this.E.width(), this.A);
            Math.max(this.z.getWidth(), this.z.getHeight());
            double width = (double) this.E.width();
            Double.isNaN(width);
            double d = (double) this.A;
            Double.isNaN(d);
            double d2 = (width * 0.7d) / d;
            double height = (double) this.E.height();
            Double.isNaN(height);
            double d3 = (double) this.B;
            Double.isNaN(d3);
            float min = (float) Math.min(d2, (height * 0.7d) / d3);
            int width2 = this.z.getWidth();
            int height2 = this.z.getHeight();
            this.e = (double) min;
            this.c.reset();
            this.c.postScale(min, min);
            this.c.postTranslate((((float) this.g) / 2.0f) - ((((float) width2) * min) / 2.0f), (((float) this.h) / 2.0f) - ((((float) height2) * min) / 2.0f));
            I();
            return true;
        }
        em.h("CutoutStickerItem", "Load Sticker Failed!");
        return false;
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public void c(Canvas canvas) {
        canvas.save();
        Matrix matrix = new Matrix(this.c);
        float f = this.p ? -1.0f : 1.0f;
        float[] fArr = this.k;
        matrix.preScale(f, 1.0f, fArr[8], fArr[9]);
        canvas.concat(matrix);
        canvas.setDrawFilter(this.w);
        if (wq.o(this.z)) {
            this.x.setAlpha(this.D);
            canvas.drawBitmap(this.z, 0.0f, 0.0f, this.x);
        }
        canvas.restore();
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public void d(Canvas canvas) {
        if (this.i) {
            canvas.save();
            canvas.concat(this.c);
            canvas.setDrawFilter(this.w);
            this.y.setStyle(Paint.Style.STROKE);
            this.y.setColor(a.b(this.b, R.color.at));
            Paint paint = this.y;
            double d = (double) this.F;
            double d2 = this.e;
            Double.isNaN(d);
            Double.isNaN(d);
            paint.setStrokeWidth((float) (d / d2));
            float[] fArr = this.k;
            float f = fArr[0];
            double d3 = (double) this.G;
            double d4 = this.e;
            Double.isNaN(d3);
            Double.isNaN(d3);
            float f2 = (float) (d3 / d4);
            float f3 = fArr[1];
            Double.isNaN(d3);
            float f4 = fArr[4];
            Double.isNaN(d3);
            float f5 = fArr[5];
            Double.isNaN(d3);
            RectF rectF = new RectF(f - f2, f3 - f2, f4 + f2, f5 + f2);
            double d5 = (double) this.s;
            double d6 = this.e;
            Double.isNaN(d5);
            Double.isNaN(d5);
            float f6 = (float) (d5 / d6);
            Double.isNaN(d5);
            canvas.drawRoundRect(rectF, f6, f6, this.y);
            this.y.setColor(a.b(this.b, R.color.b6));
            Paint paint2 = this.y;
            double d7 = (double) this.r;
            double d8 = this.e;
            Double.isNaN(d7);
            Double.isNaN(d7);
            paint2.setStrokeWidth((float) (d7 / d8));
            float[] fArr2 = this.k;
            RectF rectF2 = new RectF(fArr2[0], fArr2[1], fArr2[4], fArr2[5]);
            double d9 = (double) this.s;
            double d10 = this.e;
            Double.isNaN(d9);
            Double.isNaN(d9);
            float f7 = (float) (d9 / d10);
            Double.isNaN(d9);
            canvas.drawRoundRect(rectF2, f7, f7, this.y);
            canvas.restore();
        }
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public RectF k() {
        float f = f();
        float g = g();
        float[] fArr = this.l;
        float abs = Math.abs(fArr[2] - fArr[0]);
        float[] fArr2 = this.l;
        float f2 = abs / 2.0f;
        float abs2 = Math.abs(fArr2[5] - fArr2[3]) / 2.0f;
        return new RectF(f - f2, g - abs2, f + f2, g + abs2);
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.e, com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public RectF m() {
        if (!this.E.isEmpty()) {
            return this.E;
        }
        this.t.set(0.0f, 0.0f, (float) this.g, (float) this.h);
        return this.t;
    }
}
