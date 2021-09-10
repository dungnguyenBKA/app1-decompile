package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import com.vungle.warren.error.VungleException;
import defpackage.ry;
import defpackage.sy;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: my  reason: default package */
public class my extends Drawable implements androidx.core.graphics.drawable.b, ty {
    private static final Paint w = new Paint(1);
    private b b;
    private final sy.g[] c;
    private final sy.g[] d;
    private boolean e;
    private final Matrix f;
    private final Path g;
    private final Path h;
    private final RectF i;
    private final RectF j;
    private final Region k;
    private final Region l;
    private qy m;
    private final Paint n;
    private final Paint o;
    private final ey p;
    private final ry.a q;
    private final ry r;
    private PorterDuffColorFilter s;
    private PorterDuffColorFilter t;
    private Rect u;
    private final RectF v;

    /* access modifiers changed from: package-private */
    /* renamed from: my$a */
    public class a implements ry.a {
        a() {
        }
    }

    /* synthetic */ my(b bVar, a aVar) {
        this(bVar);
    }

    private boolean R(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.b.d == null || color2 == (colorForState2 = this.b.d.getColorForState(iArr, (color2 = this.n.getColor())))) {
            z = false;
        } else {
            this.n.setColor(colorForState2);
            z = true;
        }
        if (this.b.e == null || color == (colorForState = this.b.e.getColorForState(iArr, (color = this.o.getColor())))) {
            return z;
        }
        this.o.setColor(colorForState);
        return true;
    }

    private boolean S() {
        PorterDuffColorFilter porterDuffColorFilter = this.s;
        PorterDuffColorFilter porterDuffColorFilter2 = this.t;
        b bVar = this.b;
        this.s = h(bVar.g, bVar.h, this.n, true);
        b bVar2 = this.b;
        this.t = h(bVar2.f, bVar2.h, this.o, false);
        b bVar3 = this.b;
        if (bVar3.u) {
            this.p.d(bVar3.g.getColorForState(getState(), 0));
        }
        if (!Objects.equals(porterDuffColorFilter, this.s) || !Objects.equals(porterDuffColorFilter2, this.t)) {
            return true;
        }
        return false;
    }

    private void T() {
        b bVar = this.b;
        float f2 = bVar.o + bVar.p;
        bVar.r = (int) Math.ceil((double) (0.75f * f2));
        this.b.s = (int) Math.ceil((double) (f2 * 0.25f));
        S();
        super.invalidateSelf();
    }

    private void f(RectF rectF, Path path) {
        g(rectF, path);
        if (this.b.j != 1.0f) {
            this.f.reset();
            Matrix matrix = this.f;
            float f2 = this.b.j;
            matrix.setScale(f2, f2, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f);
        }
        path.computeBounds(this.v, true);
    }

    private PorterDuffColorFilter h(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        int color;
        int i2;
        if (colorStateList == null || mode == null) {
            return (!z || (i2 = i((color = paint.getColor()))) == color) ? null : new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN);
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = i(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    private int i(int i2) {
        b bVar = this.b;
        float f2 = bVar.o + bVar.p + bVar.n;
        tx txVar = bVar.b;
        return txVar != null ? txVar.a(i2, f2) : i2;
    }

    public static my j(Context context, float f2) {
        int x0 = androidx.core.app.b.x0(context, R.attr.eh, my.class.getSimpleName());
        my myVar = new my();
        myVar.b.b = new tx(context);
        myVar.T();
        myVar.F(ColorStateList.valueOf(x0));
        b bVar = myVar.b;
        if (bVar.o != f2) {
            bVar.o = f2;
            myVar.T();
        }
        return myVar;
    }

    private void l(Canvas canvas, Paint paint, Path path, qy qyVar, RectF rectF) {
        if (qyVar.n(rectF)) {
            float a2 = qyVar.f.a(rectF);
            canvas.drawRoundRect(rectF, a2, a2, paint);
            return;
        }
        canvas.drawPath(path, paint);
    }

    private RectF p() {
        RectF o2 = o();
        float w2 = w();
        this.j.set(o2.left + w2, o2.top + w2, o2.right - w2, o2.bottom - w2);
        return this.j;
    }

    private float w() {
        if (z()) {
            return this.o.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private boolean z() {
        Paint.Style style = this.b.v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.o.getStrokeWidth() > 0.0f;
    }

    public void A(Context context) {
        this.b.b = new tx(context);
        T();
    }

    public boolean B() {
        tx txVar = this.b.b;
        return txVar != null && txVar.b();
    }

    public boolean C() {
        return this.b.a.n(o());
    }

    public void D(float f2) {
        this.b.a = this.b.a.o(f2);
        invalidateSelf();
    }

    public void E(float f2) {
        b bVar = this.b;
        if (bVar.o != f2) {
            bVar.o = f2;
            T();
        }
    }

    public void F(ColorStateList colorStateList) {
        b bVar = this.b;
        if (bVar.d != colorStateList) {
            bVar.d = colorStateList;
            onStateChange(getState());
        }
    }

    public void G(float f2) {
        b bVar = this.b;
        if (bVar.k != f2) {
            bVar.k = f2;
            this.e = true;
            invalidateSelf();
        }
    }

    public void H(int i2, int i3, int i4, int i5) {
        b bVar = this.b;
        if (bVar.i == null) {
            bVar.i = new Rect();
        }
        this.b.i.set(i2, i3, i4, i5);
        this.u = this.b.i;
        invalidateSelf();
    }

    public void I(Paint.Style style) {
        this.b.v = style;
        super.invalidateSelf();
    }

    public void J(float f2) {
        b bVar = this.b;
        if (bVar.n != f2) {
            bVar.n = f2;
            T();
        }
    }

    public void K(int i2) {
        this.p.d(i2);
        this.b.u = false;
        super.invalidateSelf();
    }

    public void L(int i2) {
        b bVar = this.b;
        if (bVar.t != i2) {
            bVar.t = i2;
            super.invalidateSelf();
        }
    }

    public void M(int i2) {
        b bVar = this.b;
        if (bVar.q != i2) {
            bVar.q = i2;
            super.invalidateSelf();
        }
    }

    public void N(float f2, int i2) {
        this.b.l = f2;
        invalidateSelf();
        P(ColorStateList.valueOf(i2));
    }

    public void O(float f2, ColorStateList colorStateList) {
        this.b.l = f2;
        invalidateSelf();
        P(colorStateList);
    }

    public void P(ColorStateList colorStateList) {
        b bVar = this.b;
        if (bVar.e != colorStateList) {
            bVar.e = colorStateList;
            onStateChange(getState());
        }
    }

    public void Q(float f2) {
        this.b.l = f2;
        invalidateSelf();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00e0, code lost:
        if ((android.os.Build.VERSION.SDK_INT < 21 || (!C() && !r13.g.isConvex())) != false) goto L_0x00e2;
     */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00e7  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x01e1  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x01f6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void draw(android.graphics.Canvas r14) {
        /*
        // Method dump skipped, instructions count: 528
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.my.draw(android.graphics.Canvas):void");
    }

    @Override // defpackage.ty
    public void e(qy qyVar) {
        this.b.a = qyVar;
        invalidateSelf();
    }

    /* access modifiers changed from: protected */
    public final void g(RectF rectF, Path path) {
        ry ryVar = this.r;
        b bVar = this.b;
        ryVar.a(bVar.a, bVar.k, rectF, this.q, path);
    }

    public Drawable.ConstantState getConstantState() {
        return this.b;
    }

    public int getOpacity() {
        return -3;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public void getOutline(Outline outline) {
        if (this.b.q != 2) {
            if (C()) {
                outline.setRoundRect(getBounds(), x());
                return;
            }
            f(o(), this.g);
            if (this.g.isConvex()) {
                outline.setConvexPath(this.g);
            }
        }
    }

    public boolean getPadding(Rect rect) {
        Rect rect2 = this.u;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    public Region getTransparentRegion() {
        this.k.set(getBounds());
        f(o(), this.g);
        this.l.setPath(this.g, this.k);
        this.k.op(this.l, Region.Op.DIFFERENCE);
        return this.k;
    }

    public void invalidateSelf() {
        this.e = true;
        super.invalidateSelf();
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.b.g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.b.f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.b.e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.b.d) != null && colorStateList4.isStateful())));
    }

    /* access modifiers changed from: protected */
    public void k(Canvas canvas, Paint paint, Path path, RectF rectF) {
        l(canvas, paint, path, this.b.a, rectF);
    }

    public float m() {
        return this.b.a.h.a(o());
    }

    public Drawable mutate() {
        this.b = new b(this.b);
        return this;
    }

    public float n() {
        return this.b.a.g.a(o());
    }

    /* access modifiers changed from: protected */
    public RectF o() {
        Rect bounds = getBounds();
        this.i.set((float) bounds.left, (float) bounds.top, (float) bounds.right, (float) bounds.bottom);
        return this.i;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        this.e = true;
        super.onBoundsChange(rect);
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        boolean z = R(iArr) || S();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public float q() {
        return this.b.o;
    }

    public ColorStateList r() {
        return this.b.d;
    }

    public int s() {
        b bVar = this.b;
        double d2 = (double) bVar.s;
        double sin = Math.sin(Math.toRadians((double) bVar.t));
        Double.isNaN(d2);
        return (int) (sin * d2);
    }

    public void setAlpha(int i2) {
        b bVar = this.b;
        if (bVar.m != i2) {
            bVar.m = i2;
            super.invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.b.c = colorFilter;
        super.invalidateSelf();
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.b.g = colorStateList;
        S();
        super.invalidateSelf();
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        b bVar = this.b;
        if (bVar.h != mode) {
            bVar.h = mode;
            S();
            super.invalidateSelf();
        }
    }

    public int t() {
        b bVar = this.b;
        double d2 = (double) bVar.s;
        double cos = Math.cos(Math.toRadians((double) bVar.t));
        Double.isNaN(d2);
        return (int) (cos * d2);
    }

    public int u() {
        return this.b.r;
    }

    public qy v() {
        return this.b.a;
    }

    public float x() {
        return this.b.a.e.a(o());
    }

    public float y() {
        return this.b.a.f.a(o());
    }

    public my() {
        this(new qy());
    }

    public my(qy qyVar) {
        this(new b(qyVar, null));
    }

    private my(b bVar) {
        this.c = new sy.g[4];
        this.d = new sy.g[4];
        this.f = new Matrix();
        this.g = new Path();
        this.h = new Path();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new Region();
        this.l = new Region();
        Paint paint = new Paint(1);
        this.n = paint;
        Paint paint2 = new Paint(1);
        this.o = paint2;
        this.p = new ey();
        this.r = new ry();
        this.v = new RectF();
        this.b = bVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = w;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        S();
        R(getState());
        this.q = new a();
    }

    /* access modifiers changed from: package-private */
    /* renamed from: my$b */
    public static final class b extends Drawable.ConstantState {
        public qy a;
        public tx b;
        public ColorFilter c;
        public ColorStateList d = null;
        public ColorStateList e = null;
        public ColorStateList f = null;
        public ColorStateList g = null;
        public PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;
        public Rect i = null;
        public float j = 1.0f;
        public float k = 1.0f;
        public float l;
        public int m = 255;
        public float n = 0.0f;
        public float o = 0.0f;
        public float p = 0.0f;
        public int q = 0;
        public int r = 0;
        public int s = 0;
        public int t = 0;
        public boolean u = false;
        public Paint.Style v = Paint.Style.FILL_AND_STROKE;

        public b(qy qyVar, tx txVar) {
            this.a = qyVar;
            this.b = null;
        }

        public int getChangingConfigurations() {
            return 0;
        }

        public Drawable newDrawable() {
            my myVar = new my(this, null);
            myVar.e = true;
            return myVar;
        }

        public b(b bVar) {
            this.a = bVar.a;
            this.b = bVar.b;
            this.l = bVar.l;
            this.c = bVar.c;
            this.d = bVar.d;
            this.e = bVar.e;
            this.h = bVar.h;
            this.g = bVar.g;
            this.m = bVar.m;
            this.j = bVar.j;
            this.s = bVar.s;
            this.q = bVar.q;
            this.u = bVar.u;
            this.k = bVar.k;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.r = bVar.r;
            this.t = bVar.t;
            this.f = bVar.f;
            this.v = bVar.v;
            if (bVar.i != null) {
                this.i = new Rect(bVar.i);
            }
        }
    }
}
