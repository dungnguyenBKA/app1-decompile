package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.appcompat.widget.e;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import photoeditor.cutout.backgrounderaser.R;

public final class v {
    private static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;
    private static v i;
    private static final c j = new c(6);
    private WeakHashMap<Context, f0<ColorStateList>> a;
    private x<String, d> b;
    private f0<String> c;
    private final WeakHashMap<Context, b0<WeakReference<Drawable.ConstantState>>> d = new WeakHashMap<>(0);
    private TypedValue e;
    private boolean f;
    private e g;

    /* access modifiers changed from: package-private */
    public static class a implements d {
        a() {
        }

        @Override // androidx.appcompat.widget.v.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return defpackage.e.i(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* access modifiers changed from: private */
    public static class b implements d {
        b() {
        }

        @Override // androidx.appcompat.widget.v.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return s4.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* access modifiers changed from: private */
    public static class c extends c0<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }
    }

    /* access modifiers changed from: private */
    public interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* access modifiers changed from: package-private */
    public interface e {
    }

    /* access modifiers changed from: private */
    public static class f implements d {
        f() {
        }

        @Override // androidx.appcompat.widget.v.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return y4.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    private void a(String str, d dVar) {
        if (this.b == null) {
            this.b = new x<>();
        }
        this.b.put(str, dVar);
    }

    private synchronized boolean b(Context context, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        b0<WeakReference<Drawable.ConstantState>> b0Var = this.d.get(context);
        if (b0Var == null) {
            b0Var = new b0<>(10);
            this.d.put(context, b0Var);
        }
        b0Var.k(j2, new WeakReference<>(constantState));
        return true;
    }

    private Drawable c(Context context, int i2) {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        TypedValue typedValue = this.e;
        context.getResources().getValue(i2, typedValue, true);
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        Drawable e2 = e(context, j2);
        if (e2 != null) {
            return e2;
        }
        e eVar = this.g;
        LayerDrawable layerDrawable = null;
        if (eVar != null) {
            e.a aVar = (e.a) eVar;
            if (i2 == R.drawable.w) {
                layerDrawable = new LayerDrawable(new Drawable[]{f(context, R.drawable.v), f(context, R.drawable.x)});
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, j2, layerDrawable);
        }
        return layerDrawable;
    }

    public static synchronized v d() {
        v vVar;
        synchronized (v.class) {
            if (i == null) {
                v vVar2 = new v();
                i = vVar2;
                if (Build.VERSION.SDK_INT < 24) {
                    vVar2.a("vector", new f());
                    vVar2.a("animated-vector", new b());
                    vVar2.a("animated-selector", new a());
                }
            }
            vVar = i;
        }
        return vVar;
    }

    private synchronized Drawable e(Context context, long j2) {
        b0<WeakReference<Drawable.ConstantState>> b0Var = this.d.get(context);
        if (b0Var == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> h2 = b0Var.h(j2, null);
        if (h2 != null) {
            Drawable.ConstantState constantState = h2.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            b0Var.e(j2);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter h(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (v.class) {
            c cVar = j;
            Objects.requireNonNull(cVar);
            int i3 = (i2 + 31) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) cVar.get(Integer.valueOf(mode.hashCode() + i3));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
                Objects.requireNonNull(cVar);
                PorterDuffColorFilter porterDuffColorFilter2 = (PorterDuffColorFilter) cVar.put(Integer.valueOf(mode.hashCode() + i3), porterDuffColorFilter);
            }
        }
        return porterDuffColorFilter;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x007b A[Catch:{ Exception -> 0x00a9 }] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a1 A[Catch:{ Exception -> 0x00a9 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.drawable.Drawable j(android.content.Context r11, int r12) {
        /*
        // Method dump skipped, instructions count: 186
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.v.j(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    private Drawable n(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList i3 = i(context, i2);
        PorterDuff.Mode mode = null;
        if (i3 != null) {
            if (o.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable j2 = androidx.core.graphics.drawable.a.j(drawable);
            androidx.core.graphics.drawable.a.g(j2, i3);
            e eVar = this.g;
            if (eVar != null) {
                e.a aVar = (e.a) eVar;
                if (i2 == R.drawable.bb) {
                    mode = PorterDuff.Mode.MULTIPLY;
                }
            }
            if (mode == null) {
                return j2;
            }
            androidx.core.graphics.drawable.a.h(j2, mode);
            return j2;
        }
        e eVar2 = this.g;
        if (eVar2 != null && ((e.a) eVar2).e(context, i2, drawable)) {
            return drawable;
        }
        e eVar3 = this.g;
        if ((eVar3 != null && ((e.a) eVar3).f(context, i2, drawable)) || !z) {
            return drawable;
        }
        return null;
    }

    static void o(Drawable drawable, g0 g0Var, int[] iArr) {
        if (!o.a(drawable) || drawable.mutate() == drawable) {
            boolean z = g0Var.d;
            if (z || g0Var.c) {
                PorterDuffColorFilter porterDuffColorFilter = null;
                ColorStateList colorStateList = z ? g0Var.a : null;
                PorterDuff.Mode mode = g0Var.c ? g0Var.b : h;
                if (!(colorStateList == null || mode == null)) {
                    porterDuffColorFilter = h(colorStateList.getColorForState(iArr, 0), mode);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public synchronized Drawable f(Context context, int i2) {
        return g(context, i2, false);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
        if (r0 != false) goto L_0x002b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.graphics.drawable.Drawable g(android.content.Context r5, int r6, boolean r7) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r4.f     // Catch:{ all -> 0x0048 }
            if (r0 == 0) goto L_0x0006
            goto L_0x002b
        L_0x0006:
            r0 = 1
            r4.f = r0     // Catch:{ all -> 0x0048 }
            r1 = 2131165275(0x7f07005b, float:1.7944763E38)
            android.graphics.drawable.Drawable r1 = r4.f(r5, r1)     // Catch:{ all -> 0x0048 }
            r2 = 0
            if (r1 == 0) goto L_0x004a
            boolean r3 = r1 instanceof defpackage.y4     // Catch:{ all -> 0x0048 }
            if (r3 != 0) goto L_0x0029
            java.lang.String r3 = "android.graphics.drawable.VectorDrawable"
            java.lang.Class r1 = r1.getClass()     // Catch:{ all -> 0x0048 }
            java.lang.String r1 = r1.getName()     // Catch:{ all -> 0x0048 }
            boolean r1 = r3.equals(r1)     // Catch:{ all -> 0x0048 }
            if (r1 == 0) goto L_0x0028
            goto L_0x0029
        L_0x0028:
            r0 = 0
        L_0x0029:
            if (r0 == 0) goto L_0x004a
        L_0x002b:
            android.graphics.drawable.Drawable r0 = r4.j(r5, r6)     // Catch:{ all -> 0x0048 }
            if (r0 != 0) goto L_0x0035
            android.graphics.drawable.Drawable r0 = r4.c(r5, r6)     // Catch:{ all -> 0x0048 }
        L_0x0035:
            if (r0 != 0) goto L_0x003b
            android.graphics.drawable.Drawable r0 = androidx.core.content.a.c(r5, r6)     // Catch:{ all -> 0x0048 }
        L_0x003b:
            if (r0 == 0) goto L_0x0041
            android.graphics.drawable.Drawable r0 = r4.n(r5, r6, r7, r0)     // Catch:{ all -> 0x0048 }
        L_0x0041:
            if (r0 == 0) goto L_0x0046
            androidx.appcompat.widget.o.b(r0)     // Catch:{ all -> 0x0048 }
        L_0x0046:
            monitor-exit(r4)
            return r0
        L_0x0048:
            r5 = move-exception
            goto L_0x0054
        L_0x004a:
            r4.f = r2
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."
            r5.<init>(r6)
            throw r5
        L_0x0054:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.v.g(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    /* access modifiers changed from: package-private */
    public synchronized ColorStateList i(Context context, int i2) {
        ColorStateList colorStateList;
        f0<ColorStateList> f0Var;
        WeakHashMap<Context, f0<ColorStateList>> weakHashMap = this.a;
        ColorStateList colorStateList2 = null;
        if (weakHashMap == null || (f0Var = weakHashMap.get(context)) == null) {
            colorStateList = null;
        } else {
            colorStateList = f0Var.f(i2, null);
        }
        if (colorStateList == null) {
            e eVar = this.g;
            if (eVar != null) {
                colorStateList2 = ((e.a) eVar).c(context, i2);
            }
            if (colorStateList2 != null) {
                if (this.a == null) {
                    this.a = new WeakHashMap<>();
                }
                f0<ColorStateList> f0Var2 = this.a.get(context);
                if (f0Var2 == null) {
                    f0Var2 = new f0<>(10);
                    this.a.put(context, f0Var2);
                }
                f0Var2.a(i2, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    public synchronized void k(Context context) {
        b0<WeakReference<Drawable.ConstantState>> b0Var = this.d.get(context);
        if (b0Var != null) {
            b0Var.b();
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized Drawable l(Context context, o0 o0Var, int i2) {
        Drawable j2 = j(context, i2);
        if (j2 == null) {
            j2 = o0Var.c(i2);
        }
        if (j2 == null) {
            return null;
        }
        return n(context, i2, false, j2);
    }

    public synchronized void m(e eVar) {
        this.g = eVar;
    }

    /* access modifiers changed from: package-private */
    public boolean p(Context context, int i2, Drawable drawable) {
        e eVar = this.g;
        return eVar != null && ((e.a) eVar).f(context, i2, drawable);
    }
}
