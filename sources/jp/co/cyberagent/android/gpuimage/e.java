package jp.co.cyberagent.android.gpuimage;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Color;
import android.hardware.Camera;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.LinkedList;
import java.util.Queue;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import jp.co.cyberagent.android.gpuimage.b;

@TargetApi(11)
public class e implements GLSurfaceView.Renderer, Camera.PreviewCallback {
    static final float[] q = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    private c a;
    public final Object b = new Object();
    private int c = -1;
    private final FloatBuffer d;
    private final FloatBuffer e;
    private IntBuffer f;
    private int g;
    private int h;
    private int i;
    private int j;
    private final Queue<Runnable> k;
    private j l;
    private boolean m;
    private boolean n;
    private b.a o = b.a.CENTER_INSIDE;
    private int p;

    class a implements Runnable {
        final /* synthetic */ byte[] b;
        final /* synthetic */ Camera.Size c;
        final /* synthetic */ Camera d;

        a(byte[] bArr, Camera.Size size, Camera camera) {
            this.b = bArr;
            this.c = size;
            this.d = camera;
        }

        public void run() {
            byte[] bArr = this.b;
            Camera.Size size = this.c;
            GPUImageNativeLibrary.YUVtoRBGA(bArr, size.width, size.height, e.this.f.array());
            e eVar = e.this;
            IntBuffer intBuffer = eVar.f;
            Camera.Size size2 = this.c;
            int i = e.this.c;
            int[] iArr = new int[1];
            if (i == -1) {
                GLES20.glGenTextures(1, iArr, 0);
                GLES20.glBindTexture(3553, iArr[0]);
                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                GLES20.glTexImage2D(3553, 0, 6408, size2.width, size2.height, 0, 6408, 5121, intBuffer);
            } else {
                GLES20.glBindTexture(3553, i);
                GLES20.glTexSubImage2D(3553, 0, 0, 0, size2.width, size2.height, 6408, 5121, intBuffer);
                iArr[0] = i;
            }
            eVar.c = iArr[0];
            this.d.addCallbackBuffer(this.b);
            int i2 = e.this.i;
            int i3 = this.c.width;
            if (i2 != i3) {
                e.this.i = i3;
                e.this.j = this.c.height;
                e.this.m();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements Runnable {
        b() {
        }

        public void run() {
            GLES20.glDeleteTextures(1, new int[]{e.this.c}, 0);
            e.this.c = -1;
        }
    }

    public e(c cVar) {
        this.a = cVar;
        this.k = new LinkedList();
        float[] fArr = q;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.d = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        this.e = ByteBuffer.allocateDirect(rf0.a.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        j jVar = j.NORMAL;
        this.m = false;
        this.n = false;
        this.l = jVar;
        m();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void m() {
        int i2 = this.g;
        float f2 = (float) i2;
        int i3 = this.h;
        float f3 = (float) i3;
        j jVar = this.l;
        if (jVar == j.ROTATION_270 || jVar == j.ROTATION_90) {
            f2 = (float) i3;
            f3 = (float) i2;
        }
        float max = Math.max(f2 / ((float) this.i), f3 / ((float) this.j));
        float round = ((float) Math.round(((float) this.i) * max)) / f2;
        float round2 = ((float) Math.round(((float) this.j) * max)) / f3;
        float[] fArr = q;
        float[] b2 = rf0.b(this.l, this.m, this.n);
        if (this.o == b.a.CENTER_CROP) {
            float f4 = (1.0f - (1.0f / round)) / 2.0f;
            float f5 = (1.0f - (1.0f / round2)) / 2.0f;
            b2 = new float[]{l(b2[0], f4), l(b2[1], f5), l(b2[2], f4), l(b2[3], f5), l(b2[4], f4), l(b2[5], f5), l(b2[6], f4), l(b2[7], f5)};
        } else {
            fArr = new float[]{fArr[0] / round2, fArr[1] / round, fArr[2] / round2, fArr[3] / round, fArr[4] / round2, fArr[5] / round, fArr[6] / round2, fArr[7] / round};
        }
        this.d.clear();
        this.d.put(fArr).position(0);
        this.e.clear();
        this.e.put(b2).position(0);
    }

    /* access modifiers changed from: protected */
    public float l(float f2, float f3) {
        return f2 == 0.0f ? f3 : 1.0f - f3;
    }

    public void n() {
        q(new b());
    }

    public boolean o() {
        return this.m;
    }

    @SuppressLint({"WrongCall"})
    public void onDrawFrame(GL10 gl10) {
        GLES20.glClearColor(((float) Color.red(this.p)) / 255.0f, ((float) Color.green(this.p)) / 255.0f, ((float) Color.blue(this.p)) / 255.0f, ((float) Color.alpha(this.p)) / 255.0f);
        GLES20.glClear(16640);
        synchronized (this.k) {
            while (!this.k.isEmpty()) {
                this.k.poll().run();
            }
        }
        this.a.d(this.c, this.d, this.e);
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Camera.Size previewSize = camera.getParameters().getPreviewSize();
        if (this.f == null) {
            this.f = IntBuffer.allocate(previewSize.width * previewSize.height);
        }
        if (this.k.isEmpty()) {
            q(new a(bArr, previewSize, camera));
        }
    }

    public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
        this.g = i2;
        this.h = i3;
        GLES20.glViewport(0, 0, i2, i3);
        GLES20.glUseProgram(this.a.d);
        this.a.f(i2, i3);
        m();
        synchronized (this.b) {
            this.b.notifyAll();
        }
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        GLES20.glClearColor(((float) Color.red(this.p)) / 255.0f, ((float) Color.green(this.p)) / 255.0f, ((float) Color.blue(this.p)) / 255.0f, ((float) Color.alpha(this.p)) / 255.0f);
        GLES20.glDisable(2929);
        this.a.b();
    }

    public boolean p() {
        return this.n;
    }

    /* access modifiers changed from: protected */
    public void q(Runnable runnable) {
        synchronized (this.k) {
            this.k.add(runnable);
        }
    }

    public void r(int i2) {
        this.p = i2;
    }

    public void s(j jVar, boolean z, boolean z2) {
        this.m = z;
        this.n = z2;
        this.l = jVar;
        m();
    }

    public void t(b.a aVar) {
        this.o = aVar;
    }
}
