package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Log;
import defpackage.e2;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpStatus;

/* access modifiers changed from: package-private */
/* renamed from: s1  reason: default package */
public class s1 {
    private ConcurrentHashMap<Long, f1> a = new ConcurrentHashMap<>();

    /* access modifiers changed from: package-private */
    /* renamed from: s1$a */
    public class a implements b<e2.f> {
        a(s1 s1Var) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // defpackage.s1.b
        public int a(e2.f fVar) {
            return fVar.d();
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // defpackage.s1.b
        public boolean b(e2.f fVar) {
            return fVar.e();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: s1$b */
    public interface b<T> {
        int a(T t);

        boolean b(T t);
    }

    s1() {
    }

    private static <T> T e(T[] tArr, int i, b<T> bVar) {
        int i2 = (i & 1) == 0 ? HttpStatus.SC_BAD_REQUEST : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int abs = (Math.abs(bVar.a(t2) - i2) * 2) + (bVar.b(t2) == z ? 0 : 1);
            if (t == null || i3 > abs) {
                t = t2;
                i3 = abs;
            }
        }
        return t;
    }

    private static long h(Typeface typeface) {
        if (typeface == null) {
            return 0;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (NoSuchFieldException e) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
            return 0;
        } catch (IllegalAccessException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0;
        }
    }

    public Typeface a(Context context, f1 f1Var, Resources resources, int i) {
        g1 g1Var = (g1) e(f1Var.a(), i, new t1(this));
        if (g1Var == null) {
            return null;
        }
        Typeface d = m1.d(context, resources, g1Var.b(), g1Var.a(), i);
        long h = h(d);
        if (h != 0) {
            this.a.put(Long.valueOf(h), f1Var);
        }
        return d;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0026 A[SYNTHETIC, Splitter:B:17:0x0026] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x002d A[SYNTHETIC, Splitter:B:25:0x002d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface b(android.content.Context r3, android.os.CancellationSignal r4, defpackage.e2.f[] r5, int r6) {
        /*
            r2 = this;
            int r4 = r5.length
            r0 = 0
            r1 = 1
            if (r4 >= r1) goto L_0x0006
            return r0
        L_0x0006:
            e2$f r4 = r2.f(r5, r6)
            android.content.ContentResolver r5 = r3.getContentResolver()     // Catch:{ IOException -> 0x002a, all -> 0x0023 }
            android.net.Uri r4 = r4.c()     // Catch:{ IOException -> 0x002a, all -> 0x0023 }
            java.io.InputStream r4 = r5.openInputStream(r4)     // Catch:{ IOException -> 0x002a, all -> 0x0023 }
            android.graphics.Typeface r3 = r2.c(r3, r4)     // Catch:{ IOException -> 0x002b, all -> 0x0020 }
            if (r4 == 0) goto L_0x001f
            r4.close()     // Catch:{ IOException -> 0x001f }
        L_0x001f:
            return r3
        L_0x0020:
            r3 = move-exception
            r0 = r4
            goto L_0x0024
        L_0x0023:
            r3 = move-exception
        L_0x0024:
            if (r0 == 0) goto L_0x0029
            r0.close()     // Catch:{ IOException -> 0x0029 }
        L_0x0029:
            throw r3
        L_0x002a:
            r4 = r0
        L_0x002b:
            if (r4 == 0) goto L_0x0030
            r4.close()     // Catch:{ IOException -> 0x0030 }
        L_0x0030:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s1.b(android.content.Context, android.os.CancellationSignal, e2$f[], int):android.graphics.Typeface");
    }

    /* access modifiers changed from: protected */
    public Typeface c(Context context, InputStream inputStream) {
        File h = l1.h(context);
        if (h == null) {
            return null;
        }
        try {
            if (!l1.d(h, inputStream)) {
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(h.getPath());
            h.delete();
            return createFromFile;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            h.delete();
        }
    }

    public Typeface d(Context context, Resources resources, int i, String str, int i2) {
        File h = l1.h(context);
        if (h == null) {
            return null;
        }
        try {
            if (!l1.c(h, resources, i)) {
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(h.getPath());
            h.delete();
            return createFromFile;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            h.delete();
        }
    }

    /* access modifiers changed from: protected */
    public e2.f f(e2.f[] fVarArr, int i) {
        return (e2.f) e(fVarArr, i, new a(this));
    }

    /* access modifiers changed from: package-private */
    public f1 g(Typeface typeface) {
        long h = h(typeface);
        if (h == 0) {
            return null;
        }
        return this.a.get(Long.valueOf(h));
    }
}
