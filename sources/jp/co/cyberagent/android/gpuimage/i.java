package jp.co.cyberagent.android.gpuimage;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

public class i {
    GLSurfaceView.Renderer a;
    int b;
    int c;
    EGL10 d;
    EGLDisplay e;
    EGLConfig[] f;
    EGLConfig g;
    EGLContext h;
    EGLSurface i;
    GL10 j;
    String k;

    public i(EGLContext eGLContext, int i2, int i3) {
        this.b = i2;
        this.c = i3;
        int[] iArr = {12375, i2, 12374, i3, 12344};
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.d = egl10;
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.e = eglGetDisplay;
        this.d.eglInitialize(eglGetDisplay, new int[2]);
        int[] iArr2 = {12325, 0, 12326, 0, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344};
        int[] iArr3 = new int[1];
        this.d.eglChooseConfig(this.e, iArr2, null, 0, iArr3);
        int i4 = iArr3[0];
        EGLConfig[] eGLConfigArr = new EGLConfig[i4];
        this.f = eGLConfigArr;
        this.d.eglChooseConfig(this.e, iArr2, eGLConfigArr, i4, iArr3);
        EGLConfig eGLConfig = this.f[0];
        this.g = eGLConfig;
        this.h = this.d.eglCreateContext(this.e, eGLConfig, eGLContext, new int[]{12440, 2, 12344});
        this.i = this.d.eglCreatePbufferSurface(this.e, this.g, iArr);
        if (12288 == this.d.eglGetError()) {
            EGL10 egl102 = this.d;
            EGLDisplay eGLDisplay = this.e;
            EGLSurface eGLSurface = this.i;
            egl102.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.h);
            this.j = (GL10) this.h.getGL();
            this.k = Thread.currentThread().getName();
            return;
        }
        EGL10 egl103 = this.d;
        EGLDisplay eGLDisplay2 = this.e;
        EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
        egl103.eglMakeCurrent(eGLDisplay2, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT);
        this.d.eglDestroySurface(this.e, this.i);
        this.d.eglDestroyContext(this.e, this.h);
        this.d.eglTerminate(this.e);
        throw new IllegalArgumentException();
    }

    public void a() {
        EGL10 egl10 = this.d;
        EGLDisplay eGLDisplay = this.e;
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
        this.d.eglDestroySurface(this.e, this.i);
        this.d.eglDestroyContext(this.e, this.h);
        this.d.eglTerminate(this.e);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0035 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Bitmap b() {
        /*
            r4 = this;
            android.opengl.GLSurfaceView$Renderer r0 = r4.a
            java.lang.String r1 = "PixelBuffer"
            r2 = 0
            if (r0 != 0) goto L_0x000e
            java.lang.String r0 = "getBitmap: Renderer was not set."
            android.util.Log.e(r1, r0)
        L_0x000c:
            r0 = 0
            goto L_0x0033
        L_0x000e:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.String r0 = r0.getName()
            java.lang.String r3 = r4.k
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L_0x0024
            java.lang.String r0 = "getBitmap: This thread does not own the OpenGL context."
            android.util.Log.e(r1, r0)
            goto L_0x000c
        L_0x0024:
            android.opengl.GLSurfaceView$Renderer r0 = r4.a
            javax.microedition.khronos.opengles.GL10 r1 = r4.j
            r0.onDrawFrame(r1)
            android.opengl.GLSurfaceView$Renderer r0 = r4.a
            javax.microedition.khronos.opengles.GL10 r1 = r4.j
            r0.onDrawFrame(r1)
            r0 = 1
        L_0x0033:
            if (r0 != 0) goto L_0x0037
            r0 = 0
            return r0
        L_0x0037:
            int r0 = r4.b
            int r1 = r4.c
            android.graphics.Bitmap$Config r3 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r0, r1, r3)
            jp.co.cyberagent.android.gpuimage.GPUImageNativeLibrary.copyToBitmap(r2, r2, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: jp.co.cyberagent.android.gpuimage.i.b():android.graphics.Bitmap");
    }
}
