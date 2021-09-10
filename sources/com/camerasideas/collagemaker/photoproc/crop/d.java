package com.camerasideas.collagemaker.photoproc.crop;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

public class d implements TypeEvaluator<Matrix> {
    private float[] a = new float[9];
    private Matrix b = new Matrix();
    private float[] c = new float[9];
    private float[] d = new float[9];

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
    @Override // android.animation.TypeEvaluator
    public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.d);
        matrix2.getValues(this.a);
        float[] fArr = this.c;
        float[] fArr2 = this.d;
        float f2 = fArr2[0];
        float[] fArr3 = this.a;
        fArr[0] = ic.a(fArr3[0], fArr2[0], f, f2);
        fArr[1] = ic.a(fArr3[1], fArr2[1], f, fArr2[1]);
        fArr[2] = ic.a(fArr3[2], fArr2[2], f, fArr2[2]);
        fArr[3] = ic.a(fArr3[3], fArr2[3], f, fArr2[3]);
        fArr[4] = ic.a(fArr3[4], fArr2[4], f, fArr2[4]);
        fArr[5] = ic.a(fArr3[5], fArr2[5], f, fArr2[5]);
        fArr[6] = fArr2[6];
        fArr[7] = fArr2[7];
        fArr[8] = fArr2[8];
        this.b.setValues(fArr);
        return this.b;
    }
}
