package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.CornerPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;

public class c extends Path {
    protected float a = 12.0f;
    protected float b = 12.0f;
    protected ArrayList<PointF> c = new ArrayList<>();
    protected PointF d = null;
    protected Paint e = new Paint(3);
    protected Context f;
    protected f g;

    public c(Context context) {
        d dVar = (d) this;
        dVar.f = context;
        new Matrix();
        dVar.e.setAntiAlias(true);
        dVar.e.setStyle(Paint.Style.STROKE);
        dVar.e.setStrokeJoin(Paint.Join.ROUND);
        dVar.e.setStrokeCap(Paint.Cap.ROUND);
        dVar.e.setStrokeWidth((float) c2.b(dVar.f, dVar.a));
        dVar.e.setMaskFilter(new BlurMaskFilter(dVar.a, BlurMaskFilter.Blur.NORMAL));
        dVar.e.setPathEffect(new CornerPathEffect(10.0f));
        dVar.e.setColor(0);
    }

    public synchronized void a(PointF pointF) {
        if (this.c.size() == 0) {
            this.d = pointF;
            moveTo(pointF.x, pointF.y);
            this.c.add(pointF);
        } else {
            float abs = Math.abs(pointF.x - this.d.x);
            float abs2 = Math.abs(pointF.y - this.d.y);
            if (abs <= 0.0f) {
                if (abs2 <= 0.0f) {
                    lineTo(pointF.x + 0.1f, pointF.y + 0.1f);
                    this.c.add(pointF);
                    this.d = pointF;
                }
            }
            PointF pointF2 = this.d;
            float f2 = pointF2.x;
            float f3 = pointF2.y;
            quadTo(f2, f3, (pointF.x + f2) / 2.0f, (pointF.y + f3) / 2.0f);
            this.c.add(pointF);
            this.d = pointF;
        }
    }

    public f b() {
        return this.g;
    }

    public float c() {
        return this.b;
    }

    public float d() {
        return this.a;
    }

    public void e(f fVar) {
        this.g = fVar;
    }
}
