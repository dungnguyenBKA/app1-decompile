package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import androidx.core.app.b;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class a {
    private static final boolean r = (Build.VERSION.SDK_INT >= 21);
    private final MaterialButton a;
    private qy b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private PorterDuff.Mode i;
    private ColorStateList j;
    private ColorStateList k;
    private ColorStateList l;
    private Drawable m;
    private boolean n = false;
    private boolean o = false;
    private boolean p;
    private LayerDrawable q;

    a(MaterialButton materialButton, qy qyVar) {
        this.a = materialButton;
        this.b = qyVar;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    private my c(boolean z) {
        LayerDrawable layerDrawable = this.q;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        if (r) {
            return (my) ((LayerDrawable) ((InsetDrawable) this.q.getDrawable(0)).getDrawable()).getDrawable(!z);
        }
        return (my) this.q.getDrawable(!z ? 1 : 0);
    }

    private my h() {
        return c(true);
    }

    public ty a() {
        LayerDrawable layerDrawable = this.q;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        if (this.q.getNumberOfLayers() > 2) {
            return (ty) this.q.getDrawable(2);
        }
        return (ty) this.q.getDrawable(1);
    }

    /* access modifiers changed from: package-private */
    public my b() {
        return c(false);
    }

    /* access modifiers changed from: package-private */
    public qy d() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public int e() {
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public ColorStateList f() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode g() {
        return this.i;
    }

    /* access modifiers changed from: package-private */
    public boolean i() {
        return this.o;
    }

    /* access modifiers changed from: package-private */
    public boolean j() {
        return this.p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v9, types: [android.graphics.drawable.LayerDrawable, android.graphics.drawable.RippleDrawable] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void k(android.content.res.TypedArray r24) {
        /*
        // Method dump skipped, instructions count: 384
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.a.k(android.content.res.TypedArray):void");
    }

    /* access modifiers changed from: package-private */
    public void l() {
        this.o = true;
        this.a.h(this.j);
        this.a.j(this.i);
    }

    /* access modifiers changed from: package-private */
    public void m(boolean z) {
        this.p = z;
    }

    /* access modifiers changed from: package-private */
    public void n(qy qyVar) {
        this.b = qyVar;
        if (b() != null) {
            b().e(qyVar);
        }
        if (h() != null) {
            h().e(qyVar);
        }
        if (a() != null) {
            a().e(qyVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void o(boolean z) {
        this.n = z;
        my b2 = b();
        my h2 = h();
        if (b2 != null) {
            b2.O((float) this.h, this.k);
            if (h2 != null) {
                h2.N((float) this.h, this.n ? b.H(this.a, R.attr.eh) : 0);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void p(ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            if (b() != null) {
                androidx.core.graphics.drawable.a.g(b(), this.j);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void q(PorterDuff.Mode mode) {
        if (this.i != mode) {
            this.i = mode;
            if (b() != null && this.i != null) {
                androidx.core.graphics.drawable.a.h(b(), this.i);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void r(int i2, int i3) {
        Drawable drawable = this.m;
        if (drawable != null) {
            drawable.setBounds(this.c, this.e, i3 - this.d, i2 - this.f);
        }
    }
}
