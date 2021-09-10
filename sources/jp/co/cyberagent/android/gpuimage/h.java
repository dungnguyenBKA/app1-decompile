package jp.co.cyberagent.android.gpuimage;

import android.opengl.GLES20;

public class h extends d {
    public h(String str, String str2, String str3, String str4) {
        super(null);
        k(new c(str, str2));
        k(new c(str3, str4));
    }

    @Override // jp.co.cyberagent.android.gpuimage.c, jp.co.cyberagent.android.gpuimage.d
    public void e() {
        super.e();
        n();
    }

    @Override // jp.co.cyberagent.android.gpuimage.c, jp.co.cyberagent.android.gpuimage.d
    public void f(int i, int i2) {
        super.f(i, i2);
        n();
    }

    /* access modifiers changed from: protected */
    public void n() {
        c cVar = this.m.get(0);
        int glGetUniformLocation = GLES20.glGetUniformLocation(cVar.d, "texelWidthOffset");
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(cVar.d, "texelHeightOffset");
        cVar.h(glGetUniformLocation, 1.0f / ((float) Math.max(this.i, this.j)));
        cVar.h(glGetUniformLocation2, 0.0f);
        c cVar2 = this.m.get(1);
        int glGetUniformLocation3 = GLES20.glGetUniformLocation(cVar2.d, "texelWidthOffset");
        int glGetUniformLocation4 = GLES20.glGetUniformLocation(cVar2.d, "texelHeightOffset");
        cVar2.h(glGetUniformLocation3, 0.0f);
        cVar2.h(glGetUniformLocation4, 1.0f / ((float) Math.max(this.i, this.j)));
    }
}
