package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: n1  reason: default package */
class n1 extends s1 {
    private static Class<?> b = null;
    private static Constructor<?> c = null;
    private static Method d = null;
    private static Method e = null;
    private static boolean f = false;

    n1() {
    }

    private static boolean i(Object obj, String str, int i, boolean z) {
        k();
        try {
            return ((Boolean) d.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private File j(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
            return null;
        } catch (ErrnoException unused) {
            return null;
        }
    }

    private static void k() {
        Method method;
        Class<?> cls;
        Method method2;
        if (!f) {
            f = true;
            Constructor<?> constructor = null;
            try {
                cls = Class.forName("android.graphics.FontFamily");
                Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
                method = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
                method2 = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
                constructor = constructor2;
            } catch (ClassNotFoundException | NoSuchMethodException e2) {
                Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
                method2 = null;
                cls = null;
                method = null;
            }
            c = constructor;
            b = cls;
            d = method;
            e = method2;
        }
    }

    @Override // defpackage.s1
    public Typeface a(Context context, f1 f1Var, Resources resources, int i) {
        k();
        try {
            Object newInstance = c.newInstance(new Object[0]);
            g1[] a = f1Var.a();
            for (g1 g1Var : a) {
                File h = l1.h(context);
                if (h == null) {
                    return null;
                }
                try {
                    if (!l1.c(h, resources, g1Var.b())) {
                        h.delete();
                        return null;
                    } else if (!i(newInstance, h.getPath(), g1Var.e(), g1Var.f())) {
                        return null;
                    } else {
                        h.delete();
                    }
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    h.delete();
                }
            }
            k();
            try {
                Object newInstance2 = Array.newInstance(b, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) e.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004b, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0050, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0051, code lost:
        r4.addSuppressed(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0054, code lost:
        throw r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0057, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x005c, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x005d, code lost:
        r4.addSuppressed(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0060, code lost:
        throw r6;
     */
    @Override // defpackage.s1
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface b(android.content.Context r4, android.os.CancellationSignal r5, defpackage.e2.f[] r6, int r7) {
        /*
            r3 = this;
            int r0 = r6.length
            r1 = 0
            r2 = 1
            if (r0 >= r2) goto L_0x0006
            return r1
        L_0x0006:
            e2$f r6 = r3.f(r6, r7)
            android.content.ContentResolver r7 = r4.getContentResolver()
            android.net.Uri r6 = r6.c()     // Catch:{ IOException -> 0x0061 }
            java.lang.String r0 = "r"
            android.os.ParcelFileDescriptor r5 = r7.openFileDescriptor(r6, r0, r5)     // Catch:{ IOException -> 0x0061 }
            if (r5 != 0) goto L_0x0020
            if (r5 == 0) goto L_0x001f
            r5.close()     // Catch:{ IOException -> 0x0061 }
        L_0x001f:
            return r1
        L_0x0020:
            java.io.File r6 = r3.j(r5)     // Catch:{ all -> 0x0055 }
            if (r6 == 0) goto L_0x0035
            boolean r7 = r6.canRead()     // Catch:{ all -> 0x0055 }
            if (r7 != 0) goto L_0x002d
            goto L_0x0035
        L_0x002d:
            android.graphics.Typeface r4 = android.graphics.Typeface.createFromFile(r6)     // Catch:{ all -> 0x0055 }
            r5.close()
            return r4
        L_0x0035:
            java.io.FileInputStream r6 = new java.io.FileInputStream
            java.io.FileDescriptor r7 = r5.getFileDescriptor()
            r6.<init>(r7)
            android.graphics.Typeface r4 = r3.c(r4, r6)     // Catch:{ all -> 0x0049 }
            r6.close()
            r5.close()
            return r4
        L_0x0049:
            r4 = move-exception
            throw r4     // Catch:{ all -> 0x004b }
        L_0x004b:
            r7 = move-exception
            r6.close()     // Catch:{ all -> 0x0050 }
            goto L_0x0054
        L_0x0050:
            r6 = move-exception
            r4.addSuppressed(r6)
        L_0x0054:
            throw r7
        L_0x0055:
            r4 = move-exception
            throw r4     // Catch:{ all -> 0x0057 }
        L_0x0057:
            r6 = move-exception
            r5.close()     // Catch:{ all -> 0x005c }
            goto L_0x0060
        L_0x005c:
            r5 = move-exception
            r4.addSuppressed(r5)
        L_0x0060:
            throw r6
        L_0x0061:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n1.b(android.content.Context, android.os.CancellationSignal, e2$f[], int):android.graphics.Typeface");
    }
}
