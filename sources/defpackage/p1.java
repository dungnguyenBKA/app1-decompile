package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* renamed from: p1  reason: default package */
public class p1 extends n1 {
    protected final Class<?> g;
    protected final Constructor<?> h;
    protected final Method i;
    protected final Method j;
    protected final Method k;
    protected final Method l;
    protected final Method m;

    public p1() {
        Method method;
        Method method2;
        Method method3;
        Constructor<?> constructor;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(new Class[0]);
            method3 = r(cls2);
            method2 = s(cls2);
            method = cls2.getMethod("freeze", new Class[0]);
            method4 = cls2.getMethod("abortCreation", new Class[0]);
            method5 = t(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            StringBuilder q = ic.q("Unable to collect necessary methods for class ");
            q.append(e.getClass().getName());
            Log.e("TypefaceCompatApi26Impl", q.toString(), e);
            method5 = null;
            method4 = null;
            constructor = null;
            method3 = null;
            method2 = null;
            method = null;
        }
        this.g = cls;
        this.h = constructor;
        this.i = method3;
        this.j = method2;
        this.k = method;
        this.l = method4;
        this.m = method5;
    }

    private void l(Object obj) {
        try {
            this.l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    private boolean m(Context context, Object obj, String str, int i2, int i3, int i4, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean o(Object obj) {
        try {
            return ((Boolean) this.k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean p() {
        if (this.i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.i != null;
    }

    private Object q() {
        try {
            return this.h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // defpackage.n1, defpackage.s1
    public Typeface a(Context context, f1 f1Var, Resources resources, int i2) {
        if (!p()) {
            return super.a(context, f1Var, resources, i2);
        }
        Object q = q();
        if (q == null) {
            return null;
        }
        g1[] a = f1Var.a();
        for (g1 g1Var : a) {
            if (!m(context, q, g1Var.a(), g1Var.c(), g1Var.e(), g1Var.f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(g1Var.d()))) {
                l(q);
                return null;
            }
        }
        if (!o(q)) {
            return null;
        }
        return n(q);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0049, code lost:
        r14 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        r12.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x004e, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x004f, code lost:
        r13.addSuppressed(r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0052, code lost:
        throw r14;
     */
    @Override // defpackage.n1, defpackage.s1
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface b(android.content.Context r12, android.os.CancellationSignal r13, defpackage.e2.f[] r14, int r15) {
        /*
        // Method dump skipped, instructions count: 246
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p1.b(android.content.Context, android.os.CancellationSignal, e2$f[], int):android.graphics.Typeface");
    }

    @Override // defpackage.s1
    public Typeface d(Context context, Resources resources, int i2, String str, int i3) {
        if (!p()) {
            return super.d(context, resources, i2, str, i3);
        }
        Object q = q();
        if (q == null) {
            return null;
        }
        if (!m(context, q, str, 0, -1, -1, null)) {
            l(q);
            return null;
        } else if (!o(q)) {
            return null;
        } else {
            return n(q);
        }
    }

    /* access modifiers changed from: protected */
    public Typeface n(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public Method r(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    /* access modifiers changed from: protected */
    public Method s(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    /* access modifiers changed from: protected */
    public Method t(Class<?> cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
