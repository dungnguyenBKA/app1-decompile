package jp.co.cyberagent.android.gpuimage;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLSurfaceView;
import android.util.Log;
import javax.microedition.khronos.egl.EGL10;

public class b {
    protected final e a;
    private GLSurfaceView b;
    private c c;

    public enum a {
        CENTER_INSIDE,
        CENTER_CROP
    }

    public b(Context context) {
        if (((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion >= 131072) {
            c cVar = new c("uniform mat4 uMVPMatrix;attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = uMVPMatrix * position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}", "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}");
            this.c = cVar;
            this.a = new e(cVar);
            return;
        }
        throw new IllegalStateException("OpenGL ES 2.0 is not supported on this phone.");
    }

    public Bitmap b(Bitmap bitmap) {
        i iVar;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (this.b != null) {
            this.a.n();
            this.a.q(new a(this));
            synchronized (this.c) {
                GLSurfaceView gLSurfaceView = this.b;
                if (gLSurfaceView != null) {
                    gLSurfaceView.requestRender();
                }
                try {
                    this.c.wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        e eVar = new e(this.c);
        eVar.s(j.NORMAL, this.a.o(), !this.a.p());
        eVar.t(a.CENTER_CROP);
        Bitmap bitmap2 = null;
        try {
            iVar = new i(EGL10.EGL_NO_CONTEXT, width, height);
            iVar.a = eVar;
            if (!Thread.currentThread().getName().equals(iVar.k)) {
                Log.e("PixelBuffer", "setRenderer: This thread does not own the OpenGL context.");
            } else {
                iVar.a.onSurfaceCreated(iVar.j, iVar.g);
                iVar.a.onSurfaceChanged(iVar.j, iVar.b, iVar.c);
            }
            eVar.q(new g(eVar, bitmap, true));
            try {
                bitmap2 = iVar.b();
                this.c.a();
                eVar.n();
                iVar.a();
                System.gc();
                e eVar2 = this.a;
                eVar2.q(new f(eVar2, this.c));
                GLSurfaceView gLSurfaceView2 = this.b;
                if (gLSurfaceView2 != null) {
                    gLSurfaceView2.requestRender();
                }
            } catch (OutOfMemoryError e2) {
                Log.e("GPUImage", "A:getBitmapWithFilterApplied::OutOfMemoryError", e2);
            } catch (Throwable th) {
                this.c.a();
                eVar.n();
                iVar.a();
                System.gc();
                throw th;
            }
        } catch (IllegalArgumentException unused) {
        }
        return bitmap2;
        this.c.a();
        eVar.n();
        iVar.a();
        System.gc();
        return bitmap2;
    }

    public void c(c cVar) {
        this.c = cVar;
        e eVar = this.a;
        eVar.q(new f(eVar, cVar));
    }

    public void d(GLSurfaceView gLSurfaceView) {
        this.b = gLSurfaceView;
        gLSurfaceView.setEGLContextClientVersion(2);
        this.b.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        this.b.getHolder().setFormat(1);
        this.b.setRenderer(this.a);
        this.b.setRenderMode(0);
    }
}
