package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.core.app.b;
import com.bumptech.glide.c;
import com.bumptech.glide.load.m;
import defpackage.ni;
import java.nio.ByteBuffer;

/* renamed from: ji  reason: default package */
public class ji extends Drawable implements ni.b, Animatable {
    private final a b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f = true;
    private int g;
    private int h = -1;
    private boolean i;
    private Paint j;
    private Rect k;

    /* access modifiers changed from: package-private */
    /* renamed from: ji$a */
    public static final class a extends Drawable.ConstantState {
        final ni a;

        a(ni niVar) {
            this.a = niVar;
        }

        public int getChangingConfigurations() {
            return 0;
        }

        public Drawable newDrawable() {
            return new ji(this);
        }

        public Drawable newDrawable(Resources resources) {
            return new ji(this);
        }
    }

    public ji(Context context, mc mcVar, m<Bitmap> mVar, int i2, int i3, Bitmap bitmap) {
        a aVar = new a(new ni(c.c(context), mcVar, i2, i3, mVar, bitmap));
        this.b = aVar;
    }

    private Paint d() {
        if (this.j == null) {
            this.j = new Paint(2);
        }
        return this.j;
    }

    private void h() {
        b.i(!this.e, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.b.a.f() == 1) {
            invalidateSelf();
        } else if (!this.c) {
            this.c = true;
            this.b.a.m(this);
            invalidateSelf();
        }
    }

    @Override // defpackage.ni.b
    public void a() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (this.b.a.d() == this.b.a.f() - 1) {
            this.g++;
        }
        int i2 = this.h;
        if (i2 != -1 && this.g >= i2) {
            stop();
        }
    }

    public ByteBuffer b() {
        return this.b.a.b();
    }

    public Bitmap c() {
        return this.b.a.e();
    }

    public void draw(Canvas canvas) {
        if (!this.e) {
            if (this.i) {
                int intrinsicWidth = getIntrinsicWidth();
                int intrinsicHeight = getIntrinsicHeight();
                Rect bounds = getBounds();
                if (this.k == null) {
                    this.k = new Rect();
                }
                Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.k);
                this.i = false;
            }
            Bitmap c2 = this.b.a.c();
            if (this.k == null) {
                this.k = new Rect();
            }
            canvas.drawBitmap(c2, (Rect) null, this.k, d());
        }
    }

    public int e() {
        return this.b.a.h();
    }

    public void f() {
        this.e = true;
        this.b.a.a();
    }

    public void g(m<Bitmap> mVar, Bitmap bitmap) {
        this.b.a.l(mVar, bitmap);
    }

    public Drawable.ConstantState getConstantState() {
        return this.b;
    }

    public int getIntrinsicHeight() {
        return this.b.a.g();
    }

    public int getIntrinsicWidth() {
        return this.b.a.i();
    }

    public int getOpacity() {
        return -2;
    }

    public boolean isRunning() {
        return this.c;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.i = true;
    }

    public void setAlpha(int i2) {
        d().setAlpha(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        d().setColorFilter(colorFilter);
    }

    public boolean setVisible(boolean z, boolean z2) {
        b.i(!this.e, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f = z;
        if (!z) {
            this.c = false;
            this.b.a.n(this);
        } else if (this.d) {
            h();
        }
        return super.setVisible(z, z2);
    }

    public void start() {
        this.d = true;
        this.g = 0;
        if (this.f) {
            h();
        }
    }

    public void stop() {
        this.d = false;
        this.c = false;
        this.b.a.n(this);
    }

    ji(a aVar) {
        this.b = aVar;
    }
}
