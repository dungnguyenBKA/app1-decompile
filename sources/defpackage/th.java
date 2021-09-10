package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import androidx.core.app.b;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: th  reason: default package */
public final class th {
    private static final Paint a = new Paint(6);
    private static final Paint b;
    private static final Set<String> c;
    private static final Lock d;
    public static final /* synthetic */ int e = 0;

    /* renamed from: th$a */
    private static final class a implements Lock {
        a() {
        }

        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() {
        }

        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) {
            return true;
        }

        public void unlock() {
        }
    }

    static {
        new Paint(7);
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        c = hashSet;
        d = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new a();
        Paint paint = new Paint(7);
        b = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private static void a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = d;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, a);
            canvas.setBitmap(null);
            lock.unlock();
        } catch (Throwable th) {
            d.unlock();
            throw th;
        }
    }

    public static Bitmap b(qe qeVar, Bitmap bitmap, int i, int i2) {
        float f;
        float f2;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f3 = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            f2 = ((float) i2) / ((float) bitmap.getHeight());
            f3 = (((float) i) - (((float) bitmap.getWidth()) * f2)) * 0.5f;
            f = 0.0f;
        } else {
            f2 = ((float) i) / ((float) bitmap.getWidth());
            f = (((float) i2) - (((float) bitmap.getHeight()) * f2)) * 0.5f;
        }
        matrix.setScale(f2, f2);
        matrix.postTranslate((float) ((int) (f3 + 0.5f)), (float) ((int) (f + 0.5f)));
        Bitmap e2 = qeVar.e(i, i2, f(bitmap));
        e2.setHasAlpha(bitmap.hasAlpha());
        a(bitmap, e2, matrix);
        return e2;
    }

    public static Bitmap c(qe qeVar, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        float min = Math.min(((float) i) / ((float) bitmap.getWidth()), ((float) i2) / ((float) bitmap.getHeight()));
        int round = Math.round(((float) bitmap.getWidth()) * min);
        int round2 = Math.round(((float) bitmap.getHeight()) * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        Bitmap e2 = qeVar.e((int) (((float) bitmap.getWidth()) * min), (int) (((float) bitmap.getHeight()) * min), f(bitmap));
        e2.setHasAlpha(bitmap.hasAlpha());
        if (Log.isLoggable("TransformationUtils", 2)) {
            bitmap.getWidth();
            bitmap.getHeight();
            e2.getWidth();
            e2.getHeight();
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        a(bitmap, e2, matrix);
        return e2;
    }

    private static Bitmap.Config d(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) {
            return Bitmap.Config.ARGB_8888;
        }
        return Bitmap.Config.RGBA_F16;
    }

    public static Lock e() {
        return d;
    }

    private static Bitmap.Config f(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    public static Bitmap g(qe qeVar, Bitmap bitmap, int i) {
        boolean z;
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.setRotate(180.0f);
                break;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                break;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                break;
        }
        RectF rectF = new RectF(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap e2 = qeVar.e(Math.round(rectF.width()), Math.round(rectF.height()), f(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        e2.setHasAlpha(bitmap.hasAlpha());
        a(bitmap, e2, matrix);
        return e2;
    }

    public static Bitmap h(qe qeVar, Bitmap bitmap, int i) {
        Bitmap bitmap2;
        b.i(i > 0, "roundingRadius must be greater than 0.");
        Bitmap.Config d2 = d(bitmap);
        Bitmap.Config d3 = d(bitmap);
        if (d3.equals(bitmap.getConfig())) {
            bitmap2 = bitmap;
        } else {
            bitmap2 = qeVar.e(bitmap.getWidth(), bitmap.getHeight(), d3);
            new Canvas(bitmap2).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        Bitmap e2 = qeVar.e(bitmap2.getWidth(), bitmap2.getHeight(), d2);
        e2.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, (float) e2.getWidth(), (float) e2.getHeight());
        Lock lock = d;
        lock.lock();
        try {
            Canvas canvas = new Canvas(e2);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            float f = (float) i;
            canvas.drawRoundRect(rectF, f, f, paint);
            canvas.setBitmap(null);
            lock.unlock();
            if (!bitmap2.equals(bitmap)) {
                qeVar.d(bitmap2);
            }
            return e2;
        } catch (Throwable th) {
            d.unlock();
            throw th;
        }
    }
}
