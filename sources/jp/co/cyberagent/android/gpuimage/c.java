package jp.co.cyberagent.android.gpuimage;

import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.LinkedList;

public class c {
    private final LinkedList<Runnable> a;
    private String b;
    private String c;
    protected int d;
    protected int e;
    protected int f;
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected boolean k;
    protected float[] l;

    class a implements Runnable {
        final /* synthetic */ int b;
        final /* synthetic */ float c;

        a(c cVar, int i, float f) {
            this.b = i;
            this.c = f;
        }

        public void run() {
            GLES20.glUniform1f(this.b, this.c);
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements Runnable {
        final /* synthetic */ int b;
        final /* synthetic */ float[] c;

        b(c cVar, int i, float[] fArr) {
            this.b = i;
            this.c = fArr;
        }

        public void run() {
            GLES20.glUniformMatrix4fv(this.b, 1, false, this.c, 0);
        }
    }

    public c() {
        this("uniform mat4 uMVPMatrix;attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = uMVPMatrix * position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}", "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}");
    }

    public final void a() {
        this.k = false;
        GLES20.glDeleteProgram(this.d);
        c();
    }

    public final void b() {
        e();
        this.k = true;
        j(this.g, this.l);
    }

    public void c() {
    }

    public void d(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        GLES20.glUseProgram(this.d);
        g();
        if (this.k) {
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.e, 2, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.e);
            floatBuffer2.position(0);
            GLES20.glVertexAttribPointer(this.h, 2, 5126, false, 0, (Buffer) floatBuffer2);
            GLES20.glEnableVertexAttribArray(this.h);
            if (i2 != -1) {
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, i2);
                GLES20.glUniform1i(this.f, 0);
            }
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.e);
            GLES20.glDisableVertexAttribArray(this.h);
            GLES20.glBindTexture(3553, 0);
        }
    }

    public void e() {
        int x;
        String str = this.b;
        String str2 = this.c;
        int[] iArr = new int[1];
        int x2 = c2.x(str, 35633);
        int i2 = 0;
        if (!(x2 == 0 || (x = c2.x(str2, 35632)) == 0)) {
            int glCreateProgram = GLES20.glCreateProgram();
            GLES20.glAttachShader(glCreateProgram, x2);
            GLES20.glAttachShader(glCreateProgram, x);
            GLES20.glLinkProgram(glCreateProgram);
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] > 0) {
                GLES20.glDeleteShader(x2);
                GLES20.glDeleteShader(x);
                i2 = glCreateProgram;
            }
        }
        this.d = i2;
        this.e = GLES20.glGetAttribLocation(i2, "position");
        this.g = GLES20.glGetUniformLocation(this.d, "uMVPMatrix");
        this.f = GLES20.glGetUniformLocation(this.d, "inputImageTexture");
        this.h = GLES20.glGetAttribLocation(this.d, "inputTextureCoordinate");
        this.k = true;
    }

    public void f(int i2, int i3) {
        this.i = i2;
        this.j = i3;
    }

    /* access modifiers changed from: protected */
    public void g() {
        synchronized (this.a) {
            while (!this.a.isEmpty()) {
                this.a.removeFirst().run();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void h(int i2, float f2) {
        a aVar = new a(this, i2, f2);
        synchronized (this.a) {
            this.a.addLast(aVar);
        }
    }

    public void i(float[] fArr) {
        this.l = fArr;
        j(this.g, fArr);
    }

    /* access modifiers changed from: protected */
    public void j(int i2, float[] fArr) {
        b bVar = new b(this, i2, fArr);
        synchronized (this.a) {
            this.a.addLast(bVar);
        }
    }

    public c(String str, String str2) {
        this.l = new float[16];
        this.a = new LinkedList<>();
        this.b = str;
        this.c = str2;
        Matrix.setIdentityM(this.l, 0);
    }
}
