package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.content.Context;
import android.graphics.BlurMaskFilter;

public class d extends c {
    public d(Context context) {
        super(context);
    }

    public void f(float f) {
        float f2 = (this.a * f) / 250.0f;
        this.b = f2;
        if (f2 > 0.0f) {
            this.e.setMaskFilter(new BlurMaskFilter(this.b, BlurMaskFilter.Blur.NORMAL));
        }
    }

    public void g(float f) {
        this.a = f;
        this.e.setStrokeWidth((float) c2.b(this.f, f));
        if (f > 0.0f) {
            this.e.setMaskFilter(new BlurMaskFilter(this.a / 4.0f, BlurMaskFilter.Blur.NORMAL));
        }
    }

    public String toString() {
        return "BlendPath{mIsEraser=" + false + ", mFeather=" + this.b + ", mPointList=" + this.c.toString() + ", mPaint.width=" + this.e.getStrokeWidth() + ", mBrushType=" + this.g + '}';
    }
}
