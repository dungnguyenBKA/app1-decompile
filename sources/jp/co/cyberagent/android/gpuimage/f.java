package jp.co.cyberagent.android.gpuimage;

import android.opengl.GLES20;

/* access modifiers changed from: package-private */
public class f implements Runnable {
    final /* synthetic */ c b;
    final /* synthetic */ e c;

    f(e eVar, c cVar) {
        this.c = eVar;
        this.b = cVar;
    }

    public void run() {
        c cVar = this.c.a;
        this.c.a = this.b;
        if (!(cVar == null || this.b == cVar)) {
            cVar.a();
        }
        this.c.a.b();
        GLES20.glUseProgram(this.c.a.d);
        this.c.a.f(this.c.g, this.c.h);
    }
}
