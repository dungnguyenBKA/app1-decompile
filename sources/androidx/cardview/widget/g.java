package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class g extends Drawable {
    private static final double q = Math.cos(Math.toRadians(45.0d));
    static a r;
    private final int a;
    private Paint b;
    private Paint c;
    private Paint d;
    private final RectF e;
    private float f;
    private Path g;
    private float h;
    private float i;
    private float j;
    private ColorStateList k;
    private boolean l = true;
    private final int m;
    private final int n;
    private boolean o = true;
    private boolean p = false;

    interface a {
        void a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    g(Resources resources, ColorStateList colorStateList, float f2, float f3, float f4) {
        this.m = resources.getColor(R.color.bf);
        this.n = resources.getColor(R.color.be);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.br);
        this.a = dimensionPixelSize;
        this.b = new Paint(5);
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.k = colorStateList;
        this.b.setColor(colorStateList.getColorForState(getState(), this.k.getDefaultColor()));
        Paint paint = new Paint(5);
        this.c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f = (float) ((int) (f2 + 0.5f));
        this.e = new RectF();
        Paint paint2 = new Paint(this.c);
        this.d = paint2;
        paint2.setAntiAlias(false);
        if (f3 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f3 + ". Must be >= 0");
        } else if (f4 >= 0.0f) {
            int i2 = (int) (f3 + 0.5f);
            float f5 = (float) (i2 % 2 == 1 ? i2 - 1 : i2);
            int i3 = (int) (f4 + 0.5f);
            float f6 = (float) (i3 % 2 == 1 ? i3 - 1 : i3);
            if (f5 > f6) {
                if (!this.p) {
                    this.p = true;
                }
                f5 = f6;
            }
            if (this.j != f5 || this.h != f6) {
                this.j = f5;
                this.h = f6;
                this.i = (float) ((int) ((f5 * 1.5f) + ((float) dimensionPixelSize) + 0.5f));
                this.l = true;
                invalidateSelf();
            }
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f4 + ". Must be >= 0");
        }
    }

    static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = (double) f2;
        double d3 = (double) f3;
        Double.isNaN(d3);
        Double.isNaN(d2);
        return (float) (((1.0d - q) * d3) + d2);
    }

    static float b(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        double d2 = (double) (f2 * 1.5f);
        double d3 = (double) f3;
        Double.isNaN(d3);
        Double.isNaN(d2);
        return (float) (((1.0d - q) * d3) + d2);
    }

    /* access modifiers changed from: package-private */
    public ColorStateList c() {
        return this.k;
    }

    /* access modifiers changed from: package-private */
    public float d() {
        return this.f;
    }

    public void draw(Canvas canvas) {
        int i2;
        if (this.l) {
            Rect bounds = getBounds();
            float f2 = this.h;
            float f3 = 1.5f * f2;
            this.e.set(((float) bounds.left) + f2, ((float) bounds.top) + f3, ((float) bounds.right) - f2, ((float) bounds.bottom) - f3);
            float f4 = this.f;
            float f5 = -f4;
            RectF rectF = new RectF(f5, f5, f4, f4);
            RectF rectF2 = new RectF(rectF);
            float f6 = -this.i;
            rectF2.inset(f6, f6);
            Path path = this.g;
            if (path == null) {
                this.g = new Path();
            } else {
                path.reset();
            }
            this.g.setFillType(Path.FillType.EVEN_ODD);
            this.g.moveTo(-this.f, 0.0f);
            this.g.rLineTo(-this.i, 0.0f);
            this.g.arcTo(rectF2, 180.0f, 90.0f, false);
            this.g.arcTo(rectF, 270.0f, -90.0f, false);
            this.g.close();
            float f7 = this.f;
            float f8 = f7 / (this.i + f7);
            Paint paint = this.c;
            float f9 = this.f + this.i;
            int i3 = this.m;
            paint.setShader(new RadialGradient(0.0f, 0.0f, f9, new int[]{i3, i3, this.n}, new float[]{0.0f, f8, 1.0f}, Shader.TileMode.CLAMP));
            Paint paint2 = this.d;
            float f10 = -this.f;
            float f11 = this.i;
            float f12 = f10 + f11;
            float f13 = f10 - f11;
            int i4 = this.m;
            paint2.setShader(new LinearGradient(0.0f, f12, 0.0f, f13, new int[]{i4, i4, this.n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
            this.d.setAntiAlias(false);
            this.l = false;
        }
        canvas.translate(0.0f, this.j / 2.0f);
        float f14 = this.f;
        float f15 = (-f14) - this.i;
        float f16 = (this.j / 2.0f) + f14 + ((float) this.a);
        float f17 = f16 * 2.0f;
        boolean z = this.e.width() - f17 > 0.0f;
        boolean z2 = this.e.height() - f17 > 0.0f;
        int save = canvas.save();
        RectF rectF3 = this.e;
        canvas.translate(rectF3.left + f16, rectF3.top + f16);
        canvas.drawPath(this.g, this.c);
        if (z) {
            i2 = save;
            canvas.drawRect(0.0f, f15, this.e.width() - f17, -this.f, this.d);
        } else {
            i2 = save;
        }
        canvas.restoreToCount(i2);
        int save2 = canvas.save();
        RectF rectF4 = this.e;
        canvas.translate(rectF4.right - f16, rectF4.bottom - f16);
        canvas.rotate(180.0f);
        canvas.drawPath(this.g, this.c);
        if (z) {
            canvas.drawRect(0.0f, f15, this.e.width() - f17, (-this.f) + this.i, this.d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF5 = this.e;
        canvas.translate(rectF5.left + f16, rectF5.bottom - f16);
        canvas.rotate(270.0f);
        canvas.drawPath(this.g, this.c);
        if (z2) {
            canvas.drawRect(0.0f, f15, this.e.height() - f17, -this.f, this.d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF6 = this.e;
        canvas.translate(rectF6.right - f16, rectF6.top + f16);
        canvas.rotate(90.0f);
        canvas.drawPath(this.g, this.c);
        if (z2) {
            canvas.drawRect(0.0f, f15, this.e.height() - f17, -this.f, this.d);
        }
        canvas.restoreToCount(save4);
        canvas.translate(0.0f, (-this.j) / 2.0f);
        r.a(canvas, this.e, this.f, this.b);
    }

    /* access modifiers changed from: package-private */
    public float e() {
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public float f() {
        float f2 = this.h;
        float f3 = (f2 * 1.5f) / 2.0f;
        return (((this.h * 1.5f) + ((float) this.a)) * 2.0f) + (Math.max(f2, f3 + this.f + ((float) this.a)) * 2.0f);
    }

    /* access modifiers changed from: package-private */
    public float g() {
        float f2 = this.h;
        float f3 = f2 / 2.0f;
        return ((this.h + ((float) this.a)) * 2.0f) + (Math.max(f2, f3 + this.f + ((float) this.a)) * 2.0f);
    }

    public int getOpacity() {
        return -3;
    }

    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil((double) b(this.h, this.f, this.o));
        int ceil2 = (int) Math.ceil((double) a(this.h, this.f, this.o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* access modifiers changed from: package-private */
    public float h() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public void i(boolean z) {
        this.o = z;
        invalidateSelf();
    }

    public boolean isStateful() {
        ColorStateList colorStateList = this.k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.l = true;
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.b.getColor() == colorForState) {
            return false;
        }
        this.b.setColor(colorForState);
        this.l = true;
        invalidateSelf();
        return true;
    }

    public void setAlpha(int i2) {
        this.b.setAlpha(i2);
        this.c.setAlpha(i2);
        this.d.setAlpha(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
    }
}
