package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R$styleable;
import androidx.core.graphics.drawable.a;

/* access modifiers changed from: package-private */
public class h extends g {
    private final SeekBar d;
    private Drawable e;
    private ColorStateList f = null;
    private PorterDuff.Mode g = null;
    private boolean h = false;
    private boolean i = false;

    h(SeekBar seekBar) {
        super(seekBar);
        this.d = seekBar;
    }

    private void d() {
        Drawable drawable = this.e;
        if (drawable == null) {
            return;
        }
        if (this.h || this.i) {
            Drawable j = a.j(drawable.mutate());
            this.e = j;
            if (this.h) {
                a.g(j, this.f);
            }
            if (this.i) {
                a.h(this.e, this.g);
            }
            if (this.e.isStateful()) {
                this.e.setState(this.d.getDrawableState());
            }
        }
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.appcompat.widget.g
    public void b(AttributeSet attributeSet, int i2) {
        super.b(attributeSet, i2);
        i0 u = i0.u(this.d.getContext(), attributeSet, R$styleable.h, i2, 0);
        Drawable h2 = u.h(0);
        if (h2 != null) {
            this.d.setThumb(h2);
        }
        Drawable g2 = u.g(1);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.e = g2;
        if (g2 != null) {
            g2.setCallback(this.d);
            SeekBar seekBar = this.d;
            int i3 = c3.g;
            a.e(g2, seekBar.getLayoutDirection());
            if (g2.isStateful()) {
                g2.setState(this.d.getDrawableState());
            }
            d();
        }
        this.d.invalidate();
        if (u.r(3)) {
            this.g = o.d(u.k(3, -1), this.g);
            this.i = true;
        }
        if (u.r(2)) {
            this.f = u.c(2);
            this.h = true;
        }
        u.v();
        d();
    }

    /* access modifiers changed from: package-private */
    public void e(Canvas canvas) {
        if (this.e != null) {
            int max = this.d.getMax();
            int i2 = 1;
            if (max > 1) {
                int intrinsicWidth = this.e.getIntrinsicWidth();
                int intrinsicHeight = this.e.getIntrinsicHeight();
                int i3 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                if (intrinsicHeight >= 0) {
                    i2 = intrinsicHeight / 2;
                }
                this.e.setBounds(-i3, -i2, i3, i2);
                float width = ((float) ((this.d.getWidth() - this.d.getPaddingLeft()) - this.d.getPaddingRight())) / ((float) max);
                int save = canvas.save();
                canvas.translate((float) this.d.getPaddingLeft(), (float) (this.d.getHeight() / 2));
                for (int i4 = 0; i4 <= max; i4++) {
                    this.e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void f() {
        Drawable drawable = this.e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.d.getDrawableState())) {
            this.d.invalidateDrawable(drawable);
        }
    }

    /* access modifiers changed from: package-private */
    public void g() {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }
}
