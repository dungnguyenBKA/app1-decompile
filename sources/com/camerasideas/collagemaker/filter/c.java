package com.camerasideas.collagemaker.filter;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Message;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class c extends GLSurfaceView {
    private String b;
    private Handler c;
    private int d;

    public class a implements GLSurfaceView.Renderer {
        public a() {
        }

        public void onDrawFrame(GL10 gl10) {
        }

        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        }

        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            c.this.b = gl10.glGetString(7937);
            StringBuilder q = ic.q("onSurfaceCreated:GPUModel:");
            q.append(c.this.b);
            em.h("GPUTest", q.toString());
            c.this.d();
        }
    }

    public c(Context context) {
        super(context);
        em.h("GPUTest", "setEGLContextClientVersion");
        setEGLContextClientVersion(2);
        em.h("GPUTest", "setConfig");
        setEGLConfigChooser(new b(this));
        em.h("GPUTest", "setFormat");
        getHolder().setFormat(1);
        em.h("GPUTest", "setRenderer");
        setRenderer(new a());
        em.h("GPUTest", "setRenderer end");
    }

    public String c() {
        return this.b;
    }

    public void d() {
        Handler handler = this.c;
        if (handler != null) {
            Message obtain = Message.obtain(handler, this.d);
            obtain.obj = this;
            this.c.sendMessage(obtain);
        }
    }

    public void e(Handler handler, int i) {
        em.h("GPUTest", "test");
        this.c = handler;
        this.d = i;
        requestRender();
    }

    public void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
