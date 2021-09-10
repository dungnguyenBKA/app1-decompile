package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.media.ExifInterface;
import android.net.Uri;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.stackblur.c;

/* renamed from: wq  reason: default package */
public class wq {
    private static float a = 0.5f;

    public static int a(int i, int i2, int i3, int i4) {
        int i5 = 1;
        if (i <= 0 || i2 <= 0) {
            return 1;
        }
        if (i4 > i2 || i3 > i) {
            int i6 = i4 / 2;
            int i7 = i3 / 2;
            while (true) {
                if (i6 / i5 <= i2 && i7 / i5 <= i) {
                    break;
                }
                i5 *= 2;
            }
        }
        return i5;
    }

    public static int b(int i, int i2, int i3, int i4) {
        int i5 = 1;
        if (i <= 0 || i2 <= 0) {
            return 1;
        }
        if (i4 > i2 || i3 > i) {
            while (true) {
                if (i4 / i5 <= i2 && i3 / i5 <= i) {
                    break;
                }
                i5 *= 2;
            }
        }
        return i5;
    }

    public static boolean c(Bitmap bitmap, Bitmap bitmap2) {
        if (!o(bitmap) || !o(bitmap2)) {
            return false;
        }
        return bitmap.sameAs(bitmap2);
    }

    public static Bitmap d(int i, int i2, Bitmap.Config config) {
        boolean z;
        Bitmap bitmap;
        boolean z2 = true;
        try {
            bitmap = Bitmap.createBitmap(i, i2, config);
            z = false;
        } catch (Throwable th) {
            th.printStackTrace();
            bitmap = null;
            z = true;
        }
        if (bitmap == null || z) {
            System.gc();
            System.gc();
            try {
                bitmap = Bitmap.createBitmap(i, i2, config);
                z2 = false;
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        } else {
            z2 = z;
        }
        if (bitmap != null && !z2) {
            return bitmap;
        }
        System.gc();
        System.gc();
        try {
            return Bitmap.createBitmap(i, i2, config);
        } catch (Throwable th3) {
            th3.printStackTrace();
            return bitmap;
        }
    }

    public static Bitmap e(Bitmap bitmap, int i) {
        int i2;
        int i3;
        if (bitmap == null || i % 90 != 0) {
            return null;
        }
        if (i % 180 != 0) {
            i3 = bitmap.getHeight();
            i2 = bitmap.getWidth();
        } else {
            i3 = bitmap.getWidth();
            i2 = bitmap.getHeight();
        }
        Matrix matrix = new Matrix();
        matrix.postTranslate(((float) (-bitmap.getWidth())) / 2.0f, ((float) (-bitmap.getHeight())) / 2.0f);
        matrix.postRotate((float) i);
        matrix.postTranslate(((float) i3) / 2.0f, ((float) i2) / 2.0f);
        try {
            return g(bitmap, matrix);
        } catch (Exception e) {
            em.h("ImageUtils", "createBitmap with dress error : " + e);
            e.printStackTrace();
            return bitmap;
        }
    }

    public static Bitmap f(Bitmap bitmap, Matrix matrix, int i, int i2) {
        Bitmap bitmap2;
        if (matrix.isIdentity() && bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix2 = new Matrix(matrix);
        float[] fArr = new float[9];
        matrix2.getValues(fArr);
        float sqrt = (float) Math.sqrt((double) (((float) Math.pow((double) fArr[0], 2.0d)) + ((float) Math.pow((double) fArr[3], 2.0d))));
        float max = ((float) Math.max(i, i2)) / Math.max(((float) bitmap.getWidth()) * sqrt, ((float) bitmap.getHeight()) * sqrt);
        matrix2.postScale(max, max);
        int i3 = 1;
        while (true) {
            try {
                bitmap2 = g(bitmap, matrix2);
                break;
            } catch (OutOfMemoryError e) {
                e.printStackTrace();
                i3 *= 2;
                float f = 1.0f / ((float) i3);
                matrix2.postScale(f, f);
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                bitmap2 = null;
            } catch (Exception e3) {
                e3.printStackTrace();
                i3 *= 2;
                float f2 = 1.0f / ((float) i3);
                matrix2.postScale(f2, f2);
            }
        }
        if (bitmap2 != bitmap) {
            bitmap.recycle();
        }
        return bitmap2;
    }

    public static Bitmap g(Bitmap bitmap, Matrix matrix) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = 0;
        Rect rect = new Rect(0, 0, width + 0, height + 0);
        RectF rectF = new RectF(0.0f, 0.0f, (float) width, (float) height);
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmap2 = null;
        if (matrix != null && !matrix.isIdentity()) {
            RectF rectF2 = new RectF();
            while (true) {
                if (i >= 3) {
                    break;
                }
                matrix.mapRect(rectF2, rectF);
                bitmap2 = d(Math.round(rectF2.width()), Math.round(rectF2.height()), config);
                if (bitmap2 != null) {
                    Canvas canvas = new Canvas(bitmap2);
                    canvas.translate(-rectF2.left, -rectF2.top);
                    canvas.concat(matrix);
                    canvas.drawBitmap(bitmap, rect, rectF, new Paint(3));
                    break;
                }
                matrix.postScale(0.5f, 0.5f);
                i++;
            }
        } else {
            Bitmap d = d(width, height, config);
            if (d == null) {
                d = d(width, height, Bitmap.Config.ARGB_4444);
            }
            if (d == null) {
                return bitmap;
            }
            new Canvas(d).drawBitmap(bitmap, rect, rectF, (Paint) null);
            bitmap2 = d;
        }
        return (bitmap2 == null || bitmap2 == bitmap) ? bitmap : bitmap2;
    }

    public static Bitmap h(Bitmap bitmap, float f, float f2, int i, boolean z) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i % 180 != 0) {
            width = bitmap.getHeight();
            height = bitmap.getWidth();
        }
        Bitmap d = d(((int) ((float) Math.round(((float) width) * f))) / 2, ((int) ((float) Math.round(((float) height) * f))) / 2, Bitmap.Config.ARGB_8888);
        if (d == null) {
            return null;
        }
        if (z || f2 != 0.0f) {
            Paint paint = new Paint(3);
            new Canvas(d).drawBitmap(bitmap, new Rect(0, 0, width, height), new RectF(0.0f, 0.0f, (float) d.getWidth(), (float) d.getHeight()), paint);
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(t(d, f2), bitmap.getWidth(), bitmap.getHeight(), true);
            if (z && bitmap != createScaledBitmap) {
                bitmap.recycle();
            }
            return createScaledBitmap;
        }
        try {
            em.h("ImageUtils", "copy bitmap use ARGB_8888");
            return bitmap.copy(Bitmap.Config.ARGB_8888, false);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            em.h("ImageUtils", "copy bitmap occur OOM: use ARGB_565");
            try {
                return bitmap.copy(Bitmap.Config.RGB_565, false);
            } catch (OutOfMemoryError e2) {
                e2.printStackTrace();
                em.h("ImageUtils", "copy bitmap use ARGB_565 also occur OOM");
                return Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() / 2, bitmap.getHeight() / 2, true);
            }
        }
    }

    public static Bitmap i(Bitmap bitmap, float f, int i, boolean z) {
        if (!o(bitmap)) {
            return null;
        }
        try {
            return h(bitmap, a, f, i, z);
        } catch (OutOfMemoryError unused) {
            a /= 2.0f;
            System.gc();
            try {
                return h(bitmap, a, f, i, z);
            } catch (OutOfMemoryError unused2) {
                return null;
            }
        }
    }

    public static Bitmap j(Context context, int i, int i2, int i3) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        if (i2 <= 0 || i3 <= 0) {
            return null;
        }
        try {
            Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), i);
            if (!o(decodeResource)) {
                return null;
            }
            float f = (float) i2;
            float width = f / ((float) (decodeResource.getWidth() * 20));
            float f2 = (float) i3;
            float height = f2 / ((float) (decodeResource.getHeight() * 20));
            if (width <= height) {
                width = height;
            }
            Matrix matrix = new Matrix();
            matrix.postScale(width, width);
            Bitmap createBitmap = Bitmap.createBitmap(i2, i3, config);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            paint.setDither(true);
            Canvas canvas = new Canvas(createBitmap);
            canvas.setMatrix(matrix);
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            BitmapShader bitmapShader = new BitmapShader(decodeResource, tileMode, tileMode);
            Rect rect = new Rect(0, 0, (int) Math.ceil((double) (f / width)), (int) Math.ceil((double) (f2 / width)));
            paint.setShader(bitmapShader);
            canvas.drawRect(rect, paint);
            decodeResource.recycle();
            return createBitmap;
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            System.gc();
            return null;
        }
    }

    public static Bitmap k(Context context, int i, int i2, int i3) {
        try {
            Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), i);
            if (!o(decodeResource)) {
                return null;
            }
            int width = decodeResource.getWidth();
            int height = decodeResource.getHeight();
            int i4 = i2 % width != 0 ? (i2 / width) + 1 : i2 / width;
            int i5 = i3 % height != 0 ? (i3 / height) + 1 : i3 / height;
            Bitmap createBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            decodeResource.setDensity(canvas.getDensity());
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            paint.setDither(true);
            for (int i6 = 0; i6 < i5; i6++) {
                for (int i7 = 0; i7 < i4; i7++) {
                    canvas.drawBitmap(decodeResource, (float) (i7 * width), (float) (i6 * height), paint);
                }
            }
            decodeResource.recycle();
            return createBitmap;
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            System.gc();
            return null;
        }
    }

    public static Bitmap l(byte[] bArr, BitmapFactory.Options options, int i) {
        Bitmap bitmap = null;
        do {
            try {
                bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                if (bitmap == null) {
                    return null;
                }
            } catch (OutOfMemoryError e) {
                System.gc();
                e.printStackTrace();
                options.inSampleSize <<= 1;
                i--;
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
            if (bitmap != null) {
                break;
            }
        } while (i >= 0);
        return bitmap;
    }

    public static Bitmap m(Resources resources, int i) {
        try {
            return BitmapFactory.decodeResource(resources, i);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static int n(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt == 6) {
                return 90;
            }
            if (attributeInt != 8) {
                return 0;
            }
            return 270;
        } catch (Throwable th) {
            th.printStackTrace();
            em.i("ImageUtils", "get image exit degree occur exception", th);
            return 0;
        }
    }

    public static boolean o(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0049 A[SYNTHETIC, Splitter:B:20:0x0049] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0072 A[SYNTHETIC, Splitter:B:29:0x0072] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0099 A[SYNTHETIC, Splitter:B:38:0x0099] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00c3 A[SYNTHETIC, Splitter:B:49:0x00c3] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00d5 A[SYNTHETIC, Splitter:B:55:0x00d5] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap p(android.content.Context r3, android.net.Uri r4, android.graphics.BitmapFactory.Options r5) {
        /*
        // Method dump skipped, instructions count: 229
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wq.p(android.content.Context, android.net.Uri, android.graphics.BitmapFactory$Options):android.graphics.Bitmap");
    }

    public static Bitmap q(Context context, Uri uri, BitmapFactory.Options options, int i) {
        Bitmap bitmap = null;
        do {
            try {
                bitmap = p(context, uri, options);
                if (bitmap == null) {
                    return null;
                }
            } catch (OutOfMemoryError e) {
                System.gc();
                e.printStackTrace();
                options.inSampleSize <<= 1;
                i--;
            } catch (NullPointerException e2) {
                e2.printStackTrace();
                return null;
            } catch (SecurityException e3) {
                e3.printStackTrace();
                return null;
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
            if (bitmap != null) {
                break;
            }
        } while (i >= 0);
        return bitmap;
    }

    public static Bitmap r(Context context, int i, int i2, Uri uri) {
        Bitmap e;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            p(context, uri, options);
            int i3 = options.outHeight;
            int i4 = options.outWidth;
            if (i4 >= 0) {
                if (i3 >= 0) {
                    int round = Math.round((float) Math.max(i, i2));
                    options.inSampleSize = a(round, round, i4, i3);
                    options.inJustDecodeBounds = false;
                    Bitmap q = q(context, uri, options, 2);
                    if (q != null) {
                        String k = cm.k(context, uri);
                        if (k == null) {
                            k = rq.c(context, uri);
                        }
                        int n = n(k);
                        if (n == 0 || (e = e(q, n)) == null) {
                            return q;
                        }
                        q.recycle();
                        return e;
                    }
                }
            }
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static Bitmap s(Context context, int i, int i2, Uri uri, Bitmap.Config config) {
        Bitmap e;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            boolean z = true;
            options.inJustDecodeBounds = true;
            options.inPreferredConfig = config;
            p(context, uri, options);
            int i3 = options.outHeight;
            int i4 = options.outWidth;
            if (i4 < 0) {
                return null;
            }
            if (i3 < 0) {
                return null;
            }
            if (i4 < 4096) {
                if (i3 < 4096) {
                    z = false;
                }
            }
            int round = Math.round((float) Math.max(i, i2));
            if (z) {
                options.inSampleSize = b(round, round, i4, i3);
            } else {
                options.inSampleSize = a(round, round, i4, i3);
            }
            options.inJustDecodeBounds = false;
            Bitmap q = q(context, uri, options, 2);
            if (q == null) {
                return null;
            }
            String k = cm.k(context, uri);
            if (k == null) {
                k = rq.c(context, uri);
            }
            int n = n(k);
            if (n == 0 || (e = e(q, n)) == null) {
                return q;
            }
            q.recycle();
            return e;
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Bitmap t(Bitmap bitmap, float f) {
        try {
            return new c(CollageMakerApplication.b(), bitmap).a(f);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
