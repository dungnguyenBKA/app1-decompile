package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.core.widget.h;

public class f {
    private final ImageView a;
    private g0 b;
    private g0 c;

    public f(ImageView imageView) {
        this.a = imageView;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        ColorStateList colorStateList;
        Drawable drawable = this.a.getDrawable();
        if (drawable != null) {
            o.b(drawable);
        }
        if (drawable != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 && i == 21) {
                if (this.c == null) {
                    this.c = new g0();
                }
                g0 g0Var = this.c;
                PorterDuff.Mode mode = null;
                g0Var.a = null;
                g0Var.d = false;
                g0Var.b = null;
                g0Var.c = false;
                ImageView imageView = this.a;
                if (i >= 21) {
                    colorStateList = imageView.getImageTintList();
                } else {
                    colorStateList = imageView instanceof h ? ((h) imageView).a() : null;
                }
                if (colorStateList != null) {
                    g0Var.d = true;
                    g0Var.a = colorStateList;
                }
                ImageView imageView2 = this.a;
                if (i >= 21) {
                    mode = imageView2.getImageTintMode();
                } else if (imageView2 instanceof h) {
                    mode = ((h) imageView2).c();
                }
                if (mode != null) {
                    g0Var.c = true;
                    g0Var.b = mode;
                }
                if (g0Var.d || g0Var.c) {
                    int[] drawableState = this.a.getDrawableState();
                    int i2 = e.d;
                    v.o(drawable, g0Var, drawableState);
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            g0 g0Var2 = this.b;
            if (g0Var2 != null) {
                int[] drawableState2 = this.a.getDrawableState();
                int i3 = e.d;
                v.o(drawable, g0Var2, drawableState2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public ColorStateList b() {
        g0 g0Var = this.b;
        if (g0Var != null) {
            return g0Var.a;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public PorterDuff.Mode c() {
        g0 g0Var = this.b;
        if (g0Var != null) {
            return g0Var.b;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public boolean d() {
        return Build.VERSION.SDK_INT < 21 || !(this.a.getBackground() instanceof RippleDrawable);
    }

    public void e(AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable drawable2;
        int n;
        i0 u = i0.u(this.a.getContext(), attributeSet, R$styleable.g, i, 0);
        try {
            Drawable drawable3 = this.a.getDrawable();
            if (!(drawable3 != null || (n = u.n(1, -1)) == -1 || (drawable3 = d.b(this.a.getContext(), n)) == null)) {
                this.a.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                o.b(drawable3);
            }
            if (u.r(2)) {
                ImageView imageView = this.a;
                ColorStateList c2 = u.c(2);
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 21) {
                    imageView.setImageTintList(c2);
                    if (!(i2 != 21 || (drawable2 = imageView.getDrawable()) == null || imageView.getImageTintList() == null)) {
                        if (drawable2.isStateful()) {
                            drawable2.setState(imageView.getDrawableState());
                        }
                        imageView.setImageDrawable(drawable2);
                    }
                } else if (imageView instanceof h) {
                    ((h) imageView).f(c2);
                }
            }
            if (u.r(3)) {
                ImageView imageView2 = this.a;
                PorterDuff.Mode d = o.d(u.k(3, -1), null);
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 21) {
                    imageView2.setImageTintMode(d);
                    if (!(i3 != 21 || (drawable = imageView2.getDrawable()) == null || imageView2.getImageTintList() == null)) {
                        if (drawable.isStateful()) {
                            drawable.setState(imageView2.getDrawableState());
                        }
                        imageView2.setImageDrawable(drawable);
                    }
                } else if (imageView2 instanceof h) {
                    ((h) imageView2).i(d);
                }
            }
        } finally {
            u.v();
        }
    }

    public void f(int i) {
        if (i != 0) {
            Drawable b2 = d.b(this.a.getContext(), i);
            if (b2 != null) {
                o.b(b2);
            }
            this.a.setImageDrawable(b2);
        } else {
            this.a.setImageDrawable(null);
        }
        a();
    }

    /* access modifiers changed from: package-private */
    public void g(ColorStateList colorStateList) {
        if (this.b == null) {
            this.b = new g0();
        }
        g0 g0Var = this.b;
        g0Var.a = colorStateList;
        g0Var.d = true;
        a();
    }

    /* access modifiers changed from: package-private */
    public void h(PorterDuff.Mode mode) {
        if (this.b == null) {
            this.b = new g0();
        }
        g0 g0Var = this.b;
        g0Var.b = mode;
        g0Var.c = true;
        a();
    }
}
