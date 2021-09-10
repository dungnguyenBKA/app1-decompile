package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import defpackage.e2;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* renamed from: o1  reason: default package */
class o1 extends s1 {
    private static final Class<?> b;
    private static final Constructor<?> c;
    private static final Method d;
    private static final Method e;

    static {
        Method method;
        Method method2;
        Class<?> cls;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method2 = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method2 = null;
            method = null;
        }
        c = constructor;
        b = cls;
        d = method;
        e = method2;
    }

    o1() {
    }

    private static boolean i(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface j(Object obj) {
        try {
            Object newInstance = Array.newInstance(b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean k() {
        Method method = d;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004d, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
        r9.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0053, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0054, code lost:
        r0.addSuppressed(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0058, code lost:
        throw r0;
     */
    @Override // defpackage.s1
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface a(android.content.Context r17, defpackage.f1 r18, android.content.res.Resources r19, int r20) {
        /*
        // Method dump skipped, instructions count: 128
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o1.a(android.content.Context, f1, android.content.res.Resources, int):android.graphics.Typeface");
    }

    @Override // defpackage.s1
    public Typeface b(Context context, CancellationSignal cancellationSignal, e2.f[] fVarArr, int i) {
        Object obj;
        try {
            obj = c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        e0 e0Var = new e0();
        for (e2.f fVar : fVarArr) {
            Uri c2 = fVar.c();
            ByteBuffer byteBuffer = (ByteBuffer) e0Var.get(c2);
            if (byteBuffer == null) {
                byteBuffer = l1.i(context, cancellationSignal, c2);
                e0Var.put(c2, byteBuffer);
            }
            if (byteBuffer == null || !i(obj, byteBuffer, fVar.b(), fVar.d(), fVar.e())) {
                return null;
            }
        }
        Typeface j = j(obj);
        if (j == null) {
            return null;
        }
        return Typeface.create(j, i);
    }
}
