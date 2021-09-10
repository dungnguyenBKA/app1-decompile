package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.vungle.warren.error.VungleException;

/* access modifiers changed from: package-private */
public class c extends Drawable {
    private final ry a = new ry();
    private final Paint b;
    private final Path c = new Path();
    private final Rect d = new Rect();
    private final RectF e = new RectF();
    private final RectF f = new RectF();
    private final b g = new b(null);
    float h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private boolean n = true;
    private qy o;
    private ColorStateList p;

    private class b extends Drawable.ConstantState {
        b(a aVar) {
        }

        public int getChangingConfigurations() {
            return 0;
        }

        public Drawable newDrawable() {
            return c.this;
        }
    }

    c(qy qyVar) {
        this.o = qyVar;
        Paint paint = new Paint(1);
        this.b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    /* access modifiers changed from: protected */
    public RectF a() {
        this.f.set(getBounds());
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.m = colorStateList.getColorForState(getState(), this.m);
        }
        this.p = colorStateList;
        this.n = true;
        invalidateSelf();
    }

    public void c(float f2) {
        if (this.h != f2) {
            this.h = f2;
            this.b.setStrokeWidth(f2 * 1.3333f);
            this.n = true;
            invalidateSelf();
        }
    }

    /* access modifiers changed from: package-private */
    public void d(int i2, int i3, int i4, int i5) {
        this.i = i2;
        this.j = i3;
        this.k = i4;
        this.l = i5;
    }

    public void draw(Canvas canvas) {
        if (this.n) {
            Paint paint = this.b;
            Rect rect = this.d;
            copyBounds(rect);
            float height = this.h / ((float) rect.height());
            paint.setShader(new LinearGradient(0.0f, (float) rect.top, 0.0f, (float) rect.bottom, new int[]{k1.b(this.i, this.m), k1.b(this.j, this.m), k1.b(k1.d(this.j, 0), this.m), k1.b(k1.d(this.l, 0), this.m), k1.b(this.l, this.m), k1.b(this.k, this.m)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP));
            this.n = false;
        }
        float strokeWidth = this.b.getStrokeWidth() / 2.0f;
        copyBounds(this.d);
        this.e.set(this.d);
        float min = Math.min(this.o.k().a(a()), this.e.width() / 2.0f);
        if (this.o.n(a())) {
            this.e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.e, min, min, this.b);
        }
    }

    public void e(qy qyVar) {
        this.o = qyVar;
        invalidateSelf();
    }

    public Drawable.ConstantState getConstantState() {
        return this.g;
    }

    public int getOpacity() {
        return this.h > 0.0f ? -3 : -2;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public void getOutline(Outline outline) {
        if (this.o.n(a())) {
            outline.setRoundRect(getBounds(), this.o.k().a(a()));
            return;
        }
        copyBounds(this.d);
        this.e.set(this.d);
        this.a.a(this.o, 1.0f, this.e, null, this.c);
        if (this.c.isConvex()) {
            outline.setConvexPath(this.c);
        }
    }

    public boolean getPadding(Rect rect) {
        if (!this.o.n(a())) {
            return true;
        }
        int round = Math.round(this.h);
        rect.set(round, round, round, round);
        return true;
    }

    public boolean isStateful() {
        ColorStateList colorStateList = this.p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        this.n = true;
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.p;
        if (!(colorStateList == null || (colorForState = colorStateList.getColorForState(iArr, this.m)) == this.m)) {
            this.n = true;
            this.m = colorForState;
        }
        if (this.n) {
            invalidateSelf();
        }
        return this.n;
    }

    public void setAlpha(int i2) {
        this.b.setAlpha(i2);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
