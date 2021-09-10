package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;

/* access modifiers changed from: package-private */
public class c {
    private final View a;
    private final e b;
    private int c = -1;
    private g0 d;
    private g0 e;
    private g0 f;

    c(View view) {
        this.a = view;
        this.b = e.b();
    }

    /* access modifiers changed from: package-private */
    public void a() {
        Drawable background = this.a.getBackground();
        if (background != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 ? i == 21 : this.d != null) {
                if (this.f == null) {
                    this.f = new g0();
                }
                g0 g0Var = this.f;
                PorterDuff.Mode mode = null;
                g0Var.a = null;
                g0Var.d = false;
                g0Var.b = null;
                g0Var.c = false;
                ColorStateList h = c3.h(this.a);
                if (h != null) {
                    g0Var.d = true;
                    g0Var.a = h;
                }
                View view = this.a;
                if (i >= 21) {
                    mode = view.getBackgroundTintMode();
                } else if (view instanceof b3) {
                    mode = ((b3) view).g();
                }
                if (mode != null) {
                    g0Var.c = true;
                    g0Var.b = mode;
                }
                if (g0Var.d || g0Var.c) {
                    int[] drawableState = this.a.getDrawableState();
                    int i2 = e.d;
                    v.o(background, g0Var, drawableState);
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            g0 g0Var2 = this.e;
            if (g0Var2 != null) {
                int[] drawableState2 = this.a.getDrawableState();
                int i3 = e.d;
                v.o(background, g0Var2, drawableState2);
                return;
            }
            g0 g0Var3 = this.d;
            if (g0Var3 != null) {
                int[] drawableState3 = this.a.getDrawableState();
                int i4 = e.d;
                v.o(background, g0Var3, drawableState3);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public ColorStateList b() {
        g0 g0Var = this.e;
        if (g0Var != null) {
            return g0Var.a;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode c() {
        g0 g0Var = this.e;
        if (g0Var != null) {
            return g0Var.b;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0065 A[Catch:{ all -> 0x00c9 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void d(android.util.AttributeSet r7, int r8) {
        /*
        // Method dump skipped, instructions count: 206
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.c.d(android.util.AttributeSet, int):void");
    }

    /* access modifiers changed from: package-private */
    public void e() {
        this.c = -1;
        g(null);
        a();
    }

    /* access modifiers changed from: package-private */
    public void f(int i) {
        this.c = i;
        e eVar = this.b;
        g(eVar != null ? eVar.f(this.a.getContext(), i) : null);
        a();
    }

    /* access modifiers changed from: package-private */
    public void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new g0();
            }
            g0 g0Var = this.d;
            g0Var.a = colorStateList;
            g0Var.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    /* access modifiers changed from: package-private */
    public void h(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new g0();
        }
        g0 g0Var = this.e;
        g0Var.a = colorStateList;
        g0Var.d = true;
        a();
    }

    /* access modifiers changed from: package-private */
    public void i(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new g0();
        }
        g0 g0Var = this.e;
        g0Var.b = mode;
        g0Var.c = true;
        a();
    }
}
