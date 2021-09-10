package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.lang.ref.SoftReference;
import jp.co.cyberagent.android.gpuimage.GPUImageNativeLibrary;

/* renamed from: tq  reason: default package */
public class tq {
    private SoftReference<Bitmap> a;

    private void a(BitmapFactory.Options options) {
        int i;
        boolean z = true;
        options.inMutable = true;
        SoftReference<Bitmap> softReference = this.a;
        Bitmap bitmap = null;
        if (!(softReference == null || softReference.get() == null)) {
            synchronized (this.a) {
                if (this.a.get() != null && this.a.get().isMutable()) {
                    Bitmap bitmap2 = this.a.get();
                    int i2 = options.outWidth;
                    int i3 = options.inSampleSize;
                    int i4 = (options.outHeight / i3) * (i2 / i3);
                    Bitmap.Config config = bitmap2.getConfig();
                    if (config == Bitmap.Config.ARGB_8888) {
                        i = 4;
                    } else {
                        if (config != Bitmap.Config.RGB_565) {
                            if (config != Bitmap.Config.ARGB_4444) {
                                Bitmap.Config config2 = Bitmap.Config.ALPHA_8;
                                i = 1;
                            }
                        }
                        i = 2;
                    }
                    if (i4 * i > bitmap2.getAllocationByteCount()) {
                        z = false;
                    }
                    if (z) {
                        bitmap = this.a.get();
                    }
                }
            }
        }
        if (bitmap != null && !bitmap.isRecycled()) {
            options.inBitmap = bitmap;
        }
    }

    public Bitmap b(Context context, int i, int i2, String str, int i3) {
        SoftReference<Bitmap> softReference;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            byte[] decrypt = GPUImageNativeLibrary.decrypt(context, str);
            wq.l(decrypt, options, i3);
            int i4 = options.outHeight;
            int i5 = options.outWidth;
            if (i5 >= 0) {
                if (i4 >= 0) {
                    int round = Math.round((float) Math.max(i, i2));
                    options.inSampleSize = wq.a(round, round, i5, i4);
                    options.inJustDecodeBounds = false;
                    a(options);
                    Bitmap l = wq.l(decrypt, options, i3);
                    if (l != null && ((softReference = this.a) == null || softReference.get() == null)) {
                        this.a = new SoftReference<>(l);
                    }
                    return l;
                }
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
