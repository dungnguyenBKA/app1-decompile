package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.R$styleable;
import photoeditor.cutout.backgrounderaser.R;

public class ScrimInsetsFrameLayout extends FrameLayout {
    Drawable b;
    Rect c;
    private Rect d;
    private boolean e;
    private boolean f;

    class a implements y2 {
        a() {
        }

        @Override // defpackage.y2
        public l3 a(View view, l3 l3Var) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.c == null) {
                scrimInsetsFrameLayout.c = new Rect();
            }
            ScrimInsetsFrameLayout.this.c.set(l3Var.c(), l3Var.e(), l3Var.d(), l3Var.b());
            ScrimInsetsFrameLayout.this.a(l3Var);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!l3Var.f() || ScrimInsetsFrameLayout.this.b == null);
            ScrimInsetsFrameLayout scrimInsetsFrameLayout2 = ScrimInsetsFrameLayout.this;
            int i = c3.g;
            scrimInsetsFrameLayout2.postInvalidateOnAnimation();
            return l3Var.a();
        }
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* access modifiers changed from: protected */
    public void a(l3 l3Var) {
    }

    public void b(boolean z) {
        this.f = z;
    }

    public void c(boolean z) {
        this.e = z;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.c != null && this.b != null) {
            int save = canvas.save();
            canvas.translate((float) getScrollX(), (float) getScrollY());
            if (this.e) {
                this.d.set(0, 0, width, this.c.top);
                this.b.setBounds(this.d);
                this.b.draw(canvas);
            }
            if (this.f) {
                this.d.set(0, height - this.c.bottom, width, height);
                this.b.setBounds(this.d);
                this.b.draw(canvas);
            }
            Rect rect = this.d;
            Rect rect2 = this.c;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.b.setBounds(this.d);
            this.b.draw(canvas);
            Rect rect3 = this.d;
            Rect rect4 = this.c;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.b.setBounds(this.d);
            this.b.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new Rect();
        this.e = true;
        this.f = true;
        TypedArray f2 = i.f(context, attributeSet, R$styleable.B, i, R.style.pe, new int[0]);
        this.b = f2.getDrawable(0);
        f2.recycle();
        setWillNotDraw(true);
        c3.x(this, new a());
    }
}
