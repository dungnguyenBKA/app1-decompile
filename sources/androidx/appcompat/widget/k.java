package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.core.widget.b;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public class k {
    private final TextView a;
    private g0 b;
    private g0 c;
    private g0 d;
    private g0 e;
    private g0 f;
    private g0 g;
    private g0 h;
    private final l i;
    private int j = 0;
    private int k = -1;
    private Typeface l;
    private boolean m;

    /* access modifiers changed from: private */
    public static class a extends j1 {
        private final WeakReference<k> a;
        private final int b;
        private final int c;

        /* renamed from: androidx.appcompat.widget.k$a$a  reason: collision with other inner class name */
        private class RunnableC0004a implements Runnable {
            private final WeakReference<k> b;
            private final Typeface c;

            RunnableC0004a(a aVar, WeakReference<k> weakReference, Typeface typeface) {
                this.b = weakReference;
                this.c = typeface;
            }

            public void run() {
                k kVar = this.b.get();
                if (kVar != null) {
                    kVar.u(this.c);
                }
            }
        }

        a(k kVar, int i, int i2) {
            this.a = new WeakReference<>(kVar);
            this.b = i;
            this.c = i2;
        }

        @Override // defpackage.j1
        public void c(int i) {
        }

        @Override // defpackage.j1
        public void d(Typeface typeface) {
            int i;
            k kVar = this.a.get();
            if (kVar != null) {
                if (Build.VERSION.SDK_INT >= 28 && (i = this.b) != -1) {
                    typeface = Typeface.create(typeface, i, (this.c & 2) != 0);
                }
                kVar.n(new RunnableC0004a(this, this.a, typeface));
            }
        }
    }

    k(TextView textView) {
        this.a = textView;
        this.i = new l(textView);
    }

    private void a(Drawable drawable, g0 g0Var) {
        if (drawable != null && g0Var != null) {
            int[] drawableState = this.a.getDrawableState();
            int i2 = e.d;
            v.o(drawable, g0Var, drawableState);
        }
    }

    private static g0 d(Context context, e eVar, int i2) {
        ColorStateList f2 = eVar.f(context, i2);
        if (f2 == null) {
            return null;
        }
        g0 g0Var = new g0();
        g0Var.d = true;
        g0Var.a = f2;
        return g0Var;
    }

    private void v(Context context, i0 i0Var) {
        String o;
        this.j = i0Var.k(2, this.j);
        int i2 = Build.VERSION.SDK_INT;
        boolean z = false;
        if (i2 >= 28) {
            int k2 = i0Var.k(11, -1);
            this.k = k2;
            if (k2 != -1) {
                this.j = (this.j & 2) | 0;
            }
        }
        int i3 = 10;
        if (i0Var.r(10) || i0Var.r(12)) {
            this.l = null;
            if (i0Var.r(12)) {
                i3 = 12;
            }
            int i4 = this.k;
            int i5 = this.j;
            if (!context.isRestricted()) {
                try {
                    Typeface j2 = i0Var.j(i3, this.j, new a(this, i4, i5));
                    if (j2 != null) {
                        if (i2 < 28 || this.k == -1) {
                            this.l = j2;
                        } else {
                            this.l = Typeface.create(Typeface.create(j2, 0), this.k, (this.j & 2) != 0);
                        }
                    }
                    this.m = this.l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.l == null && (o = i0Var.o(i3)) != null) {
                if (Build.VERSION.SDK_INT < 28 || this.k == -1) {
                    this.l = Typeface.create(o, this.j);
                    return;
                }
                Typeface create = Typeface.create(o, 0);
                int i6 = this.k;
                if ((this.j & 2) != 0) {
                    z = true;
                }
                this.l = Typeface.create(create, i6, z);
            }
        } else if (i0Var.r(1)) {
            this.m = false;
            int k3 = i0Var.k(1, 1);
            if (k3 == 1) {
                this.l = Typeface.SANS_SERIF;
            } else if (k3 == 2) {
                this.l = Typeface.SERIF;
            } else if (k3 == 3) {
                this.l = Typeface.MONOSPACE;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b() {
        if (!(this.b == null && this.c == null && this.d == null && this.e == null)) {
            Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f != null || this.g != null) {
            Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f);
            a(compoundDrawablesRelative[2], this.g);
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        this.i.a();
    }

    /* access modifiers changed from: package-private */
    public int e() {
        return this.i.d();
    }

    /* access modifiers changed from: package-private */
    public int f() {
        return this.i.e();
    }

    /* access modifiers changed from: package-private */
    public int g() {
        return this.i.f();
    }

    /* access modifiers changed from: package-private */
    public int[] h() {
        return this.i.g();
    }

    /* access modifiers changed from: package-private */
    public int i() {
        return this.i.h();
    }

    /* access modifiers changed from: package-private */
    public boolean j() {
        return this.i.k();
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00e7  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00ee  */
    @android.annotation.SuppressLint({"NewApi"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void k(android.util.AttributeSet r26, int r27) {
        /*
        // Method dump skipped, instructions count: 898
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.k.k(android.util.AttributeSet, int):void");
    }

    /* access modifiers changed from: package-private */
    public void l() {
        if (!b.a) {
            this.i.a();
        }
    }

    /* access modifiers changed from: package-private */
    public void m(Context context, int i2) {
        String o;
        ColorStateList c2;
        i0 s = i0.s(context, i2, R$styleable.y);
        if (s.r(14)) {
            this.a.setAllCaps(s.a(14, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23 && s.r(3) && (c2 = s.c(3)) != null) {
            this.a.setTextColor(c2);
        }
        if (s.r(0) && s.f(0, -1) == 0) {
            this.a.setTextSize(0, 0.0f);
        }
        v(context, s);
        if (i3 >= 26 && s.r(13) && (o = s.o(13)) != null) {
            this.a.setFontVariationSettings(o);
        }
        s.v();
        Typeface typeface = this.l;
        if (typeface != null) {
            this.a.setTypeface(typeface, this.j);
        }
    }

    public void n(Runnable runnable) {
        this.a.post(runnable);
    }

    /* access modifiers changed from: package-private */
    public void o(int i2, int i3, int i4, int i5) {
        this.i.m(i2, i3, i4, i5);
    }

    /* access modifiers changed from: package-private */
    public void p(int[] iArr, int i2) {
        this.i.n(iArr, i2);
    }

    /* access modifiers changed from: package-private */
    public void q(int i2) {
        this.i.o(i2);
    }

    /* access modifiers changed from: package-private */
    public void r(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new g0();
        }
        g0 g0Var = this.h;
        g0Var.a = colorStateList;
        g0Var.d = colorStateList != null;
        this.b = g0Var;
        this.c = g0Var;
        this.d = g0Var;
        this.e = g0Var;
        this.f = g0Var;
        this.g = g0Var;
    }

    /* access modifiers changed from: package-private */
    public void s(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new g0();
        }
        g0 g0Var = this.h;
        g0Var.b = mode;
        g0Var.c = mode != null;
        this.b = g0Var;
        this.c = g0Var;
        this.d = g0Var;
        this.e = g0Var;
        this.f = g0Var;
        this.g = g0Var;
    }

    /* access modifiers changed from: package-private */
    public void t(int i2, float f2) {
        if (!b.a && !j()) {
            this.i.p(i2, f2);
        }
    }

    public void u(Typeface typeface) {
        if (this.m) {
            this.a.setTypeface(typeface);
            this.l = typeface;
        }
    }
}
