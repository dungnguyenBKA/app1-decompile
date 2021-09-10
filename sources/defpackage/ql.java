package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* renamed from: ql  reason: default package */
public class ql {
    private static final Bitmap.CompressFormat g = Bitmap.CompressFormat.JPEG;
    private nl a;
    private c0<String, BitmapDrawable> b;
    private a c;
    private final Object d = new Object();
    private boolean e = true;
    private Set<SoftReference<Bitmap>> f;

    private ql(a aVar) {
        this.c = aVar;
        if (aVar.f) {
            this.f = Collections.synchronizedSet(new HashSet());
            this.b = new pl(this, this.c.a);
        }
    }

    @TargetApi(8)
    public static File j(Context context) {
        try {
            Method method = Context.class.getMethod("getExternalCacheDir", new Class[0]);
            if (method != null) {
                File file = (File) method.invoke(context, null);
                if (file != null) {
                    return file;
                }
                return new File(Environment.getExternalStorageDirectory().getPath() + ("/Android/data/" + context.getPackageName() + "/cache/"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        StringBuilder q = ic.q("/Android/data/");
        q.append(context.getPackageName());
        q.append("/cache/");
        return new File(Environment.getExternalStorageDirectory().getPath() + q.toString());
    }

    public static ql k(a aVar) {
        return new ql(aVar);
    }

    @TargetApi(9)
    public static long l(File file) {
        try {
            Method method = File.class.getMethod("getUsableSpace", new Class[0]);
            if (method != null) {
                return ((Long) method.invoke(file, null)).longValue();
            }
            try {
                StatFs statFs = new StatFs(file.getPath());
                return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return 0;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            return 0;
        }
    }

    public static String m(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return String.valueOf(str.hashCode());
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0061, code lost:
        if (r1 != null) goto L_0x0099;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0097, code lost:
        if (0 == 0) goto L_0x00a3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(java.lang.String r5, android.graphics.drawable.BitmapDrawable r6) {
        /*
        // Method dump skipped, instructions count: 173
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ql.c(java.lang.String, android.graphics.drawable.BitmapDrawable):void");
    }

    public void d() {
        c0<String, BitmapDrawable> c0Var = this.b;
        if (c0Var != null) {
            c0Var.evictAll();
        }
        synchronized (this.d) {
            this.e = true;
            try {
                nl nlVar = this.a;
                if (nlVar != null && !nlVar.r0()) {
                    this.a.m0();
                    this.a = null;
                    n();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                em.h("ImageCache", "clearCache - " + e2);
            } catch (Throwable th) {
                this.e = false;
                throw th;
            }
            this.e = false;
        }
    }

    public void e() {
        try {
            c0<String, BitmapDrawable> c0Var = this.b;
            if (c0Var != null) {
                c0Var.evictAll();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void f() {
        synchronized (this.d) {
            nl nlVar = this.a;
            if (nlVar != null) {
                try {
                    nlVar.flush();
                } catch (IOException e2) {
                    em.h("ImageCache", "flush - " + e2);
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x0083 A[SYNTHETIC, Splitter:B:46:0x0083] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x008f A[SYNTHETIC, Splitter:B:52:0x008f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Bitmap g(java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 159
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ql.g(java.lang.String):android.graphics.Bitmap");
    }

    public BitmapDrawable h(String str) {
        c0<String, BitmapDrawable> c0Var = this.b;
        if (c0Var != null) {
            return c0Var.get(str);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public Bitmap i(BitmapFactory.Options options) {
        int i;
        Set<SoftReference<Bitmap>> set = this.f;
        Bitmap bitmap = null;
        if (set != null && !set.isEmpty()) {
            synchronized (this.f) {
                Iterator<SoftReference<Bitmap>> it = this.f.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Bitmap bitmap2 = it.next().get();
                    if (bitmap2 == null || !bitmap2.isMutable()) {
                        it.remove();
                    } else {
                        int i2 = options.outWidth;
                        int i3 = options.inSampleSize;
                        int i4 = (options.outHeight / i3) * (i2 / i3);
                        Bitmap.Config config = bitmap2.getConfig();
                        boolean z = true;
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
                            it.remove();
                            bitmap = bitmap2;
                            break;
                        }
                    }
                }
            }
        }
        return bitmap;
    }

    public void n() {
        synchronized (this.d) {
            nl nlVar = this.a;
            if (nlVar == null || nlVar.r0()) {
                a aVar = this.c;
                File file = aVar.c;
                if (aVar.g && file != null) {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    if (l(file) > ((long) this.c.b)) {
                        if (file.getAbsolutePath().startsWith("/data") && l(file) < 20971520) {
                            this.c.b = 5242880;
                        }
                        this.a = ol.b().a(file.getAbsolutePath(), 1, 1, (long) this.c.b);
                    } else {
                        em.o(5, "ImageCache", "Disk cache will not initialize, disk space is not enought, " + file);
                    }
                }
            }
            this.e = false;
            this.d.notifyAll();
        }
    }

    /* renamed from: ql$a */
    public static class a {
        public static boolean h = false;
        public int a;
        public int b;
        public File c;
        public Bitmap.CompressFormat d;
        public int e;
        public boolean f;
        public boolean g;

        /* JADX WARNING: Removed duplicated region for block: B:23:0x007d  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public a(android.content.Context r7, java.lang.String r8) {
            /*
            // Method dump skipped, instructions count: 133
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.ql.a.<init>(android.content.Context, java.lang.String):void");
        }

        public a(String str) {
            this.a = 5120;
            this.b = 104857600;
            this.d = ql.g;
            this.e = 70;
            this.f = true;
            this.g = true;
            if (TextUtils.isEmpty(str)) {
                em.h("ImageCache", "ImageCacheParams: crate cache dir failed-diskCacheDir" + str);
                return;
            }
            em.h("ImageCache", "ImageCacheParams: diskCacheDir=" + str);
            if (!bm.e(str)) {
                bm.g(str);
            }
            this.c = new File(str);
        }
    }
}
