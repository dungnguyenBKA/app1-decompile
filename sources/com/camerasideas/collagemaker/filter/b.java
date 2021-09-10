package com.camerasideas.collagemaker.filter;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* access modifiers changed from: package-private */
public class b implements GLSurfaceView.EGLConfigChooser {
    final /* synthetic */ c a;

    b(c cVar) {
        this.a = cVar;
    }

    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        int[] iArr2 = {12325, 16, 12326, 0, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344};
        if (!egl10.eglInitialize(eGLDisplay, new int[]{2, 0})) {
            em.h("GPUTest", "eglInitialize failed1");
            this.a.d();
            return null;
        }
        egl10.eglChooseConfig(eGLDisplay, iArr2, null, 0, iArr);
        int i = iArr[0];
        if (i < 0) {
            this.a.d();
            return null;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i];
        try {
            if (!egl10.eglChooseConfig(eGLDisplay, iArr2, eGLConfigArr, 1, iArr)) {
                em.h("GPUTest", "eglInitialize failed2");
                this.a.d();
                return null;
            }
            em.h("GPUTest", "chooseConfig succeed");
            return eGLConfigArr[0];
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            this.a.d();
            em.h("GPUTest", "eglInitialize failed3");
            return null;
        }
    }
}
