package jp.co.cyberagent.android.gpuimage;

import android.annotation.SuppressLint;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

public class d extends c {
    protected List<c> m;
    protected List<c> n;
    private int[] o;
    private int[] p;
    private final FloatBuffer q;
    private FloatBuffer r;
    private FloatBuffer s;

    public d() {
        this(null);
    }

    private void l() {
        int[] iArr = this.p;
        if (iArr != null) {
            GLES20.glDeleteTextures(iArr.length, iArr, 0);
            this.p = null;
        }
        int[] iArr2 = this.o;
        if (iArr2 != null) {
            GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
            this.o = null;
        }
    }

    @Override // jp.co.cyberagent.android.gpuimage.c
    public void c() {
        l();
        for (c cVar : this.m) {
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    @Override // jp.co.cyberagent.android.gpuimage.c
    @SuppressLint({"WrongCall"})
    public void d(int i, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        List<c> list;
        g();
        if (this.k && this.o != null && this.p != null && (list = this.n) != null && list.size() != 0) {
            int i2 = 0;
            while (i2 < this.n.size() - 1) {
                try {
                    c cVar = this.n.get(i2);
                    GLES20.glBindFramebuffer(36160, this.o[i2]);
                    GLES20.glViewport(0, 0, this.i, this.j);
                    cVar.i(cVar.l);
                    cVar.d(i, this.q, (i2 == 0 && this.n.size() % 2 == 0) ? this.s : this.r);
                    i = this.p[i2];
                    i2++;
                } catch (Exception e) {
                    em.h("GPUImageFilterGroup", "onDraw occur exception: " + e + " :: mMergedFilters = " + this.n);
                    FirebaseCrashlytics.getInstance().recordException(e);
                    return;
                } catch (Throwable th) {
                    th.printStackTrace();
                    return;
                }
            }
            GLES20.glBindFramebuffer(36160, 0);
            List<c> list2 = this.n;
            c cVar2 = list2.get(list2.size() - 1);
            GLES20.glViewport(0, 0, this.i, this.j);
            cVar2.i(cVar2.l);
            cVar2.d(i, floatBuffer, floatBuffer2);
        }
    }

    @Override // jp.co.cyberagent.android.gpuimage.c
    public void e() {
        super.e();
        for (c cVar : this.m) {
            if (cVar != null) {
                cVar.b();
            }
        }
    }

    @Override // jp.co.cyberagent.android.gpuimage.c
    public void f(int i, int i2) {
        this.i = i;
        this.j = i2;
        if (this.o != null) {
            l();
        }
        int size = this.m.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.m.get(i3).f(i, i2);
        }
        try {
            List<c> list = this.n;
            if (list != null && list.size() > 0) {
                int i4 = 1;
                int size2 = this.n.size() - 1;
                this.o = new int[size2];
                this.p = new int[size2];
                int i5 = 0;
                while (i5 < size2) {
                    GLES20.glGenFramebuffers(i4, this.o, i5);
                    GLES20.glGenTextures(i4, this.p, i5);
                    int[] iArr = this.p;
                    if (iArr[i5] < i4) {
                        GLES20.glGenTextures(i4, iArr, i5);
                    }
                    GLES20.glBindTexture(3553, this.p[i5]);
                    GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                    GLES20.glBindFramebuffer(36160, this.o[i5]);
                    GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.p[i5], 0);
                    GLES20.glBindTexture(3553, 0);
                    GLES20.glBindFramebuffer(36160, 0);
                    i5++;
                    i4 = 1;
                }
            }
        } catch (Exception e) {
            try {
                FirebaseCrashlytics.getInstance().recordException(e);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // jp.co.cyberagent.android.gpuimage.c
    public void i(float[] fArr) {
        List<c> list = this.m;
        if (!(list == null || list.isEmpty())) {
            float[] fArr2 = new float[16];
            Matrix.setIdentityM(fArr2, 0);
            for (c cVar : this.m) {
                if (cVar != null) {
                    if (cVar == this.m.get(0)) {
                        cVar.i(fArr);
                    } else {
                        cVar.i(fArr2);
                    }
                }
            }
        }
    }

    public void k(c cVar) {
        this.m.add(cVar);
        m();
    }

    public void m() {
        if (this.m != null) {
            List<c> list = this.n;
            if (list == null) {
                this.n = new ArrayList();
            } else {
                list.clear();
            }
            for (c cVar : this.m) {
                if (cVar instanceof d) {
                    d dVar = (d) cVar;
                    dVar.m();
                    List<c> list2 = dVar.n;
                    if (list2 != null && !list2.isEmpty()) {
                        this.n.addAll(list2);
                    }
                } else {
                    this.n.add(cVar);
                }
            }
        }
    }

    public d(List<c> list) {
        super("uniform mat4 uMVPMatrix;attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = uMVPMatrix * position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}", "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}");
        this.m = null;
        this.m = new ArrayList();
        float[] fArr = e.q;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.q = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        float[] fArr2 = rf0.a;
        FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(fArr2.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.r = asFloatBuffer2;
        asFloatBuffer2.put(fArr2).position(0);
        float[] b = rf0.b(j.NORMAL, false, true);
        FloatBuffer asFloatBuffer3 = ByteBuffer.allocateDirect(b.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.s = asFloatBuffer3;
        asFloatBuffer3.put(b).position(0);
    }
}
