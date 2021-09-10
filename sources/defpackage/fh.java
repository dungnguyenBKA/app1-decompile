package defpackage;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.j;
import com.vungle.warren.error.VungleException;
import defpackage.lh;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;

/* renamed from: fh  reason: default package */
public final class fh {
    public static final h<com.bumptech.glide.load.b> f = h.d("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", com.bumptech.glide.load.b.PREFER_ARGB_8888);
    public static final h<j> g = h.d("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", j.SRGB);
    public static final h<Boolean> h;
    public static final h<Boolean> i;
    private static final Set<String> j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
    private static final b k = new a();
    private static final Set<ImageHeaderParser.ImageType> l = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
    private static final Queue<BitmapFactory.Options> m = new ArrayDeque(0);
    private final qe a;
    private final DisplayMetrics b;
    private final oe c;
    private final List<ImageHeaderParser> d;
    private final kh e = kh.a();

    /* renamed from: fh$a */
    class a implements b {
        a() {
        }

        @Override // defpackage.fh.b
        public void a(qe qeVar, Bitmap bitmap) {
        }

        @Override // defpackage.fh.b
        public void b() {
        }
    }

    /* renamed from: fh$b */
    public interface b {
        void a(qe qeVar, Bitmap bitmap);

        void b();
    }

    static {
        h<eh> hVar = eh.f;
        Boolean bool = Boolean.FALSE;
        h = h.d("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        i = h.d("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        int i2 = hl.c;
    }

    public fh(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, qe qeVar, oe oeVar) {
        this.d = list;
        Objects.requireNonNull(displayMetrics, "Argument must not be null");
        this.b = displayMetrics;
        Objects.requireNonNull(qeVar, "Argument must not be null");
        this.a = qeVar;
        Objects.requireNonNull(oeVar, "Argument must not be null");
        this.c = oeVar;
    }

    private he<Bitmap> b(lh lhVar, int i2, int i3, i iVar, b bVar) {
        Queue<BitmapFactory.Options> queue;
        BitmapFactory.Options poll;
        byte[] bArr = (byte[]) this.c.e(65536, byte[].class);
        synchronized (fh.class) {
            queue = m;
            synchronized (queue) {
                poll = queue.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                l(poll);
            }
        }
        poll.inTempStorage = bArr;
        com.bumptech.glide.load.b bVar2 = (com.bumptech.glide.load.b) iVar.c(f);
        j jVar = (j) iVar.c(g);
        eh ehVar = (eh) iVar.c(eh.f);
        boolean booleanValue = ((Boolean) iVar.c(h)).booleanValue();
        h<Boolean> hVar = i;
        try {
            xg b2 = xg.b(e(lhVar, poll, ehVar, bVar2, jVar, iVar.c(hVar) != null && ((Boolean) iVar.c(hVar)).booleanValue(), i2, i3, booleanValue, bVar), this.a);
            l(poll);
            synchronized (queue) {
                queue.offer(poll);
            }
            this.c.d(bArr);
            return b2;
        } catch (Throwable th) {
            l(poll);
            Queue<BitmapFactory.Options> queue2 = m;
            synchronized (queue2) {
                queue2.offer(poll);
                this.c.d(bArr);
                throw th;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:132:0x02dd  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x0312  */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x031c  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x031f  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x032b  */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x034a  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0366  */
    /* JADX WARNING: Removed duplicated region for block: B:165:0x037a  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00ed  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x01cd A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01d6  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01da  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Bitmap e(defpackage.lh r27, android.graphics.BitmapFactory.Options r28, defpackage.eh r29, com.bumptech.glide.load.b r30, com.bumptech.glide.load.j r31, boolean r32, int r33, int r34, boolean r35, defpackage.fh.b r36) {
        /*
        // Method dump skipped, instructions count: 952
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fh.e(lh, android.graphics.BitmapFactory$Options, eh, com.bumptech.glide.load.b, com.bumptech.glide.load.j, boolean, int, int, boolean, fh$b):android.graphics.Bitmap");
    }

    private static Bitmap f(lh lhVar, BitmapFactory.Options options, b bVar, qe qeVar) {
        Bitmap f2;
        if (!options.inJustDecodeBounds) {
            bVar.b();
            lhVar.c();
        }
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        String str = options.outMimeType;
        th.e().lock();
        try {
            f2 = lhVar.b(options);
        } catch (IllegalArgumentException e2) {
            IOException k2 = k(e2, i2, i3, str, options);
            Log.isLoggable("Downsampler", 3);
            Bitmap bitmap = options.inBitmap;
            if (bitmap != null) {
                try {
                    qeVar.d(bitmap);
                    options.inBitmap = null;
                    f2 = f(lhVar, options, bVar, qeVar);
                } catch (IOException unused) {
                    throw k2;
                }
            } else {
                throw k2;
            }
        } catch (Throwable th) {
            th.e().unlock();
            throw th;
        }
        th.e().unlock();
        return f2;
    }

    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    private static String g(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        StringBuilder q = ic.q(" (");
        q.append(bitmap.getAllocationByteCount());
        q.append(")");
        String sb = q.toString();
        StringBuilder q2 = ic.q("[");
        q2.append(bitmap.getWidth());
        q2.append("x");
        q2.append(bitmap.getHeight());
        q2.append("] ");
        q2.append(bitmap.getConfig());
        q2.append(sb);
        return q2.toString();
    }

    private static int h(double d2) {
        if (d2 > 1.0d) {
            d2 = 1.0d / d2;
        }
        return (int) Math.round(d2 * 2.147483647E9d);
    }

    private static int[] i(lh lhVar, BitmapFactory.Options options, b bVar, qe qeVar) {
        options.inJustDecodeBounds = true;
        f(lhVar, options, bVar, qeVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static boolean j(int i2) {
        return i2 == 90 || i2 == 270;
    }

    private static IOException k(IllegalArgumentException illegalArgumentException, int i2, int i3, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i2 + ", outHeight: " + i3 + ", outMimeType: " + str + ", inBitmap: " + g(options.inBitmap), illegalArgumentException);
    }

    private static void l(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    private static int m(double d2) {
        return (int) (d2 + 0.5d);
    }

    public he<Bitmap> a(ParcelFileDescriptor parcelFileDescriptor, int i2, int i3, i iVar) {
        return b(new lh.b(parcelFileDescriptor, this.d, this.c), i2, i3, iVar, k);
    }

    public he<Bitmap> c(InputStream inputStream, int i2, int i3, i iVar) {
        return d(inputStream, i2, i3, iVar, k);
    }

    public he<Bitmap> d(InputStream inputStream, int i2, int i3, i iVar, b bVar) {
        return b(new lh.a(inputStream, this.d, this.c), i2, i3, iVar, bVar);
    }
}
