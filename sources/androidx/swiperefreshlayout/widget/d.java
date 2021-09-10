package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.Objects;

public class d extends Drawable implements Animatable {
    private static final Interpolator h = new LinearInterpolator();
    private static final Interpolator i = new x3();
    private static final int[] j = {-16777216};
    private final a b;
    private float c;
    private Resources d;
    private Animator e;
    float f;
    boolean g;

    /* access modifiers changed from: private */
    public static class a {
        final RectF a = new RectF();
        final Paint b;
        final Paint c;
        final Paint d;
        float e;
        float f;
        float g;
        float h;
        int[] i;
        int j;
        float k;
        float l;
        float m;
        boolean n;
        Path o;
        float p;
        float q;
        int r;
        int s;
        int t;
        int u;

        a() {
            Paint paint = new Paint();
            this.b = paint;
            Paint paint2 = new Paint();
            this.c = paint2;
            Paint paint3 = new Paint();
            this.d = paint3;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 5.0f;
            this.p = 1.0f;
            this.t = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* access modifiers changed from: package-private */
        public void a(int i2) {
            this.j = i2;
            this.u = this.i[i2];
        }

        /* access modifiers changed from: package-private */
        public void b(boolean z) {
            if (this.n != z) {
                this.n = z;
            }
        }
    }

    public d(Context context) {
        Objects.requireNonNull(context);
        this.d = context.getResources();
        a aVar = new a();
        this.b = aVar;
        aVar.i = j;
        aVar.a(0);
        aVar.h = 2.5f;
        aVar.b.setStrokeWidth(2.5f);
        invalidateSelf();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new b(this, aVar));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(h);
        ofFloat.addListener(new c(this, aVar));
        this.e = ofFloat;
    }

    private void e(float f2, float f3, float f4, float f5) {
        a aVar = this.b;
        float f6 = this.d.getDisplayMetrics().density;
        float f7 = f3 * f6;
        aVar.h = f7;
        aVar.b.setStrokeWidth(f7);
        aVar.q = f2 * f6;
        aVar.a(0);
        aVar.r = (int) (f4 * f6);
        aVar.s = (int) (f5 * f6);
    }

    /* access modifiers changed from: package-private */
    public void a(float f2, a aVar, boolean z) {
        float f3;
        float f4;
        if (this.g) {
            h(f2, aVar);
            float floor = (float) (Math.floor((double) (aVar.m / 0.8f)) + 1.0d);
            float f5 = aVar.k;
            float f6 = aVar.l;
            aVar.e = (((f6 - 0.01f) - f5) * f2) + f5;
            aVar.f = f6;
            float f7 = aVar.m;
            aVar.g = ic.a(floor, f7, f2, f7);
        } else if (f2 != 1.0f || z) {
            float f8 = aVar.m;
            if (f2 < 0.5f) {
                f3 = aVar.k;
                f4 = (i.getInterpolation(f2 / 0.5f) * 0.79f) + 0.01f + f3;
            } else {
                float f9 = aVar.k + 0.79f;
                f3 = f9 - (((1.0f - i.getInterpolation((f2 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f4 = f9;
            }
            aVar.e = f3;
            aVar.f = f4;
            aVar.g = (0.20999998f * f2) + f8;
            this.c = (f2 + this.f) * 216.0f;
        }
    }

    public void b(boolean z) {
        a aVar = this.b;
        if (aVar.n != z) {
            aVar.n = z;
        }
        invalidateSelf();
    }

    public void c(float f2) {
        a aVar = this.b;
        if (f2 != aVar.p) {
            aVar.p = f2;
        }
        invalidateSelf();
    }

    public void d(float f2) {
        this.b.g = f2;
        invalidateSelf();
    }

    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.c, bounds.exactCenterX(), bounds.exactCenterY());
        a aVar = this.b;
        RectF rectF = aVar.a;
        float f2 = aVar.q;
        float f3 = (aVar.h / 2.0f) + f2;
        if (f2 <= 0.0f) {
            f3 = (((float) Math.min(bounds.width(), bounds.height())) / 2.0f) - Math.max((((float) aVar.r) * aVar.p) / 2.0f, aVar.h / 2.0f);
        }
        rectF.set(((float) bounds.centerX()) - f3, ((float) bounds.centerY()) - f3, ((float) bounds.centerX()) + f3, ((float) bounds.centerY()) + f3);
        float f4 = aVar.e;
        float f5 = aVar.g;
        float f6 = (f4 + f5) * 360.0f;
        float f7 = ((aVar.f + f5) * 360.0f) - f6;
        aVar.b.setColor(aVar.u);
        aVar.b.setAlpha(aVar.t);
        float f8 = aVar.h / 2.0f;
        rectF.inset(f8, f8);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, aVar.d);
        float f9 = -f8;
        rectF.inset(f9, f9);
        canvas.drawArc(rectF, f6, f7, false, aVar.b);
        if (aVar.n) {
            Path path = aVar.o;
            if (path == null) {
                Path path2 = new Path();
                aVar.o = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            aVar.o.moveTo(0.0f, 0.0f);
            aVar.o.lineTo(((float) aVar.r) * aVar.p, 0.0f);
            Path path3 = aVar.o;
            float f10 = aVar.p;
            path3.lineTo((((float) aVar.r) * f10) / 2.0f, ((float) aVar.s) * f10);
            aVar.o.offset((rectF.centerX() + (Math.min(rectF.width(), rectF.height()) / 2.0f)) - ((((float) aVar.r) * aVar.p) / 2.0f), (aVar.h / 2.0f) + rectF.centerY());
            aVar.o.close();
            aVar.c.setColor(aVar.u);
            aVar.c.setAlpha(aVar.t);
            canvas.save();
            canvas.rotate(f6 + f7, rectF.centerX(), rectF.centerY());
            canvas.drawPath(aVar.o, aVar.c);
            canvas.restore();
        }
        canvas.restore();
    }

    public void f(float f2, float f3) {
        a aVar = this.b;
        aVar.e = f2;
        aVar.f = f3;
        invalidateSelf();
    }

    public void g(int i2) {
        if (i2 == 0) {
            e(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            e(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public int getAlpha() {
        return this.b.t;
    }

    public int getOpacity() {
        return -3;
    }

    /* access modifiers changed from: package-private */
    public void h(float f2, a aVar) {
        if (f2 > 0.75f) {
            float f3 = (f2 - 0.75f) / 0.25f;
            int[] iArr = aVar.i;
            int i2 = aVar.j;
            int i3 = iArr[i2];
            int i4 = iArr[(i2 + 1) % iArr.length];
            int i5 = (i3 >> 24) & 255;
            int i6 = (i3 >> 16) & 255;
            int i7 = (i3 >> 8) & 255;
            int i8 = i3 & 255;
            aVar.u = ((i5 + ((int) (((float) (((i4 >> 24) & 255) - i5)) * f3))) << 24) | ((i6 + ((int) (((float) (((i4 >> 16) & 255) - i6)) * f3))) << 16) | ((i7 + ((int) (((float) (((i4 >> 8) & 255) - i7)) * f3))) << 8) | (i8 + ((int) (f3 * ((float) ((i4 & 255) - i8)))));
            return;
        }
        aVar.u = aVar.i[aVar.j];
    }

    public boolean isRunning() {
        return this.e.isRunning();
    }

    public void setAlpha(int i2) {
        this.b.t = i2;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.b.b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void start() {
        this.e.cancel();
        a aVar = this.b;
        float f2 = aVar.e;
        aVar.k = f2;
        float f3 = aVar.f;
        aVar.l = f3;
        aVar.m = aVar.g;
        if (f3 != f2) {
            this.g = true;
            this.e.setDuration(666);
            this.e.start();
            return;
        }
        aVar.a(0);
        a aVar2 = this.b;
        aVar2.k = 0.0f;
        aVar2.l = 0.0f;
        aVar2.m = 0.0f;
        aVar2.e = 0.0f;
        aVar2.f = 0.0f;
        aVar2.g = 0.0f;
        this.e.setDuration(1332);
        this.e.start();
    }

    public void stop() {
        this.e.cancel();
        this.c = 0.0f;
        this.b.b(false);
        this.b.a(0);
        a aVar = this.b;
        aVar.k = 0.0f;
        aVar.l = 0.0f;
        aVar.m = 0.0f;
        aVar.e = 0.0f;
        aVar.f = 0.0f;
        aVar.g = 0.0f;
        invalidateSelf();
    }
}
