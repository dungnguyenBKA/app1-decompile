package jp.co.cyberagent.android.gpuimage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class g implements Runnable {
    final /* synthetic */ Bitmap b;
    final /* synthetic */ boolean c;
    final /* synthetic */ e d;

    g(e eVar, Bitmap bitmap, boolean z) {
        this.d = eVar;
        this.b = bitmap;
        this.c = z;
    }

    public void run() {
        Bitmap bitmap;
        Bitmap bitmap2 = null;
        if (this.b.getWidth() % 2 == 1) {
            Bitmap createBitmap = Bitmap.createBitmap(this.b.getWidth() - 1, this.b.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.drawARGB(0, 0, 0, 0);
            canvas.drawBitmap(this.b, 0.0f, 0.0f, (Paint) null);
            Objects.requireNonNull(this.d);
            bitmap2 = createBitmap;
        } else {
            Objects.requireNonNull(this.d);
        }
        this.d.i = this.b.getWidth();
        this.d.j = this.b.getHeight();
        e eVar = this.d;
        if (bitmap2 != null) {
            bitmap = bitmap2;
        } else {
            bitmap = this.b;
        }
        int i = eVar.c;
        boolean z = this.c;
        int[] iArr = new int[1];
        if (i == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
        } else {
            GLES20.glBindTexture(3553, i);
            GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
            iArr[0] = i;
        }
        if (z) {
            bitmap.recycle();
        }
        eVar.c = iArr[0];
        if (bitmap2 != null) {
            this.d.i = bitmap2.getWidth();
            this.d.j = bitmap2.getHeight();
            bitmap2.recycle();
        }
        this.d.m();
    }
}
