package defpackage;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Looper;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* renamed from: hl  reason: default package */
public final class hl {
    private static final char[] a = "0123456789abcdef".toCharArray();
    private static final char[] b = new char[64];
    public static final /* synthetic */ int c = 0;

    /* renamed from: hl$a */
    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|12) */
        /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0033 */
        static {
            /*
                android.graphics.Bitmap$Config[] r0 = android.graphics.Bitmap.Config.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                defpackage.hl.a.a = r0
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ALPHA_8     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = defpackage.hl.a.a     // Catch:{ NoSuchFieldError -> 0x001d }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.RGB_565     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = defpackage.hl.a.a     // Catch:{ NoSuchFieldError -> 0x0028 }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_4444     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = defpackage.hl.a.a     // Catch:{ NoSuchFieldError -> 0x0033 }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.RGBA_F16     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                int[] r0 = defpackage.hl.a.a     // Catch:{ NoSuchFieldError -> 0x003e }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ NoSuchFieldError -> 0x003e }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x003e }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x003e }
            L_0x003e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.hl.a.<clinit>():void");
        }
    }

    public static void a() {
        if (!h()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static int c(int i, int i2, Bitmap.Config config) {
        int i3 = i * i2;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i4 = a.a[config.ordinal()];
        int i5 = 4;
        if (i4 == 1) {
            i5 = 1;
        } else if (i4 == 2 || i4 == 3) {
            i5 = 2;
        } else if (i4 == 4) {
            i5 = 8;
        }
        return i3 * i5;
    }

    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    public static int d(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        } else {
            throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
        }
    }

    public static <T> List<T> e(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static int f(Object obj, int i) {
        return (i * 31) + (obj == null ? 0 : obj.hashCode());
    }

    public static boolean g() {
        return !h();
    }

    public static boolean h() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean i(int i, int i2) {
        if (i > 0 || i == Integer.MIN_VALUE) {
            if (i2 > 0 || i2 == Integer.MIN_VALUE) {
                return true;
            }
        }
        return false;
    }

    public static String j(byte[] bArr) {
        String str;
        char[] cArr = b;
        synchronized (cArr) {
            for (int i = 0; i < bArr.length; i++) {
                int i2 = bArr[i] & 255;
                int i3 = i * 2;
                char[] cArr2 = a;
                cArr[i3] = cArr2[i2 >>> 4];
                cArr[i3 + 1] = cArr2[i2 & 15];
            }
            str = new String(cArr);
        }
        return str;
    }
}
