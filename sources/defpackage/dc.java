package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Build;
import java.io.Closeable;

/* renamed from: dc  reason: default package */
public final class dc {
    private static final ThreadLocal<PathMeasure> a = new a();
    private static final ThreadLocal<Path> b = new b();
    private static final ThreadLocal<Path> c = new c();
    private static final ThreadLocal<float[]> d = new d();
    private static final float e = ((float) (Math.sqrt(2.0d) / 2.0d));
    private static float f = -1.0f;
    public static final /* synthetic */ int g = 0;

    /* renamed from: dc$a */
    class a extends ThreadLocal<PathMeasure> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    }

    /* renamed from: dc$b */
    class b extends ThreadLocal<Path> {
        b() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public Path initialValue() {
            return new Path();
        }
    }

    /* renamed from: dc$c */
    class c extends ThreadLocal<Path> {
        c() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public Path initialValue() {
            return new Path();
        }
    }

    /* renamed from: dc$d */
    class d extends ThreadLocal<float[]> {
        d() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public float[] initialValue() {
            return new float[4];
        }
    }

    public static void a(Path path, float f2, float f3, float f4) {
        PathMeasure pathMeasure = a.get();
        Path path2 = b.get();
        Path path3 = c.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f2 == 1.0f && f3 == 0.0f) {
            com.airbnb.lottie.b.a("applyTrimPathIfNeeded");
        } else if (length < 1.0f || ((double) Math.abs((f3 - f2) - 1.0f)) < 0.01d) {
            com.airbnb.lottie.b.a("applyTrimPathIfNeeded");
        } else {
            float f5 = f2 * length;
            float f6 = f3 * length;
            float f7 = f4 * length;
            float min = Math.min(f5, f6) + f7;
            float max = Math.max(f5, f6) + f7;
            if (min >= length && max >= length) {
                min = (float) cc.d(min, length);
                max = (float) cc.d(max, length);
            }
            if (min < 0.0f) {
                min = (float) cc.d(min, length);
            }
            if (max < 0.0f) {
                max = (float) cc.d(max, length);
            }
            if (min == max) {
                path.reset();
                com.airbnb.lottie.b.a("applyTrimPathIfNeeded");
                return;
            }
            if (min >= max) {
                min -= length;
            }
            path2.reset();
            pathMeasure.getSegment(min, max, path2, true);
            if (max > length) {
                path3.reset();
                pathMeasure.getSegment(0.0f, max % length, path3, true);
                path2.addPath(path3);
            } else if (min < 0.0f) {
                path3.reset();
                pathMeasure.getSegment(min + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
            com.airbnb.lottie.b.a("applyTrimPathIfNeeded");
        }
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static float c() {
        if (f == -1.0f) {
            f = Resources.getSystem().getDisplayMetrics().density;
        }
        return f;
    }

    public static float d(Matrix matrix) {
        float[] fArr = d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f2 = e;
        fArr[2] = f2;
        fArr[3] = f2;
        matrix.mapPoints(fArr);
        return (float) Math.hypot((double) (fArr[2] - fArr[0]), (double) (fArr[3] - fArr[1]));
    }

    public static boolean e(Matrix matrix) {
        float[] fArr = d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        if (fArr[0] == fArr[2] || fArr[1] == fArr[3]) {
            return true;
        }
        return false;
    }

    public static Bitmap f(Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    public static void g(Canvas canvas, RectF rectF, Paint paint, int i) {
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rectF, paint, i);
        } else {
            canvas.saveLayer(rectF, paint);
        }
        com.airbnb.lottie.b.a("Utils#saveLayer");
    }
}
