package com.camerasideas.collagemaker.photoproc.crop;

import android.animation.TypeEvaluator;
import android.graphics.RectF;

public class c implements TypeEvaluator<RectF> {
    private RectF a = new RectF();

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
    @Override // android.animation.TypeEvaluator
    public RectF evaluate(float f, RectF rectF, RectF rectF2) {
        RectF rectF3 = rectF;
        RectF rectF4 = rectF2;
        RectF rectF5 = this.a;
        float f2 = rectF3.left;
        float a2 = ic.a(rectF4.left, f2, f, f2);
        float f3 = rectF3.top;
        float a3 = ic.a(rectF4.top, f3, f, f3);
        float f4 = rectF3.right;
        float a4 = ic.a(rectF4.right, f4, f, f4);
        float f5 = rectF3.bottom;
        rectF5.set(a2, a3, a4, ((rectF4.bottom - f5) * f) + f5);
        return this.a;
    }
}
