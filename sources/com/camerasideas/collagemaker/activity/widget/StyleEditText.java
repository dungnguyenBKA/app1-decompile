package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.app.b;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageTextFragment;
import com.camerasideas.collagemaker.photoproc.graphicsitems.j;
import com.camerasideas.collagemaker.photoproc.graphicsitems.k;

public class StyleEditText extends AppCompatEditText {
    private Context e;
    private k f;
    private RectF g;
    private int h;
    private int i;
    private BlurMaskFilter j;
    private Shader k;
    private Shader l;
    private Shader m;
    private Canvas n;
    private Bitmap o;
    private Canvas p;
    private Bitmap q;
    private Paint r;
    private Paint s;
    private Drawable t;
    private PaintFlagsDrawFilter u;
    private j v;
    private a w;

    public interface a {
    }

    public StyleEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void J() {
        float s2 = (((float) this.f.s()) / 100.0f) * 10.0f;
        if (s2 > 0.0f) {
            this.j = new BlurMaskFilter(s2, BlurMaskFilter.Blur.NORMAL);
        } else {
            this.j = null;
        }
    }

    private int c() {
        Layout layout;
        if (getPaint() == null || TextUtils.isEmpty(getText()) || (layout = getLayout()) == null) {
            return 0;
        }
        return layout.getHeight();
    }

    private float f(TextPaint textPaint, String str) {
        String[] split = str.split(System.getProperty("line.separator", "\n"));
        float f2 = 0.0f;
        for (String str2 : split) {
            if (str2 != null) {
                float measureText = textPaint.measureText(str2);
                if (measureText > f2) {
                    f2 = measureText;
                }
            }
        }
        return f2;
    }

    private int i() {
        if (getPaint() == null || TextUtils.isEmpty(getText())) {
            return 0;
        }
        Layout layout = getLayout();
        if (layout != null) {
            return layout.getWidth();
        }
        return (int) f(getPaint(), getText().toString());
    }

    public void A(Layout.Alignment alignment) {
        this.f.E(alignment);
        invalidate();
    }

    public void B(float f2) {
        this.f.X(f2);
        invalidate();
    }

    public void C(boolean z) {
        this.f.I(z);
        invalidate();
    }

    public void D(String str) {
        try {
            int parseColor = Color.parseColor(str);
            this.f.Y(parseColor);
            this.k = null;
            setTextColor(parseColor);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void E(int i2) {
        this.f.Z(i2);
        Bitmap q2 = cm.q(this.e, i(), c(), b.T(this.e, i2));
        if (cm.l(q2)) {
            Shader.TileMode tileMode = Shader.TileMode.MIRROR;
            this.k = new BitmapShader(q2, tileMode, tileMode);
        }
        float x = this.f.x();
        float f2 = x - 0.1f;
        if (f2 <= 0.0f) {
            f2 = x + 0.1f;
        }
        B(f2);
        post(new c(this, x));
    }

    public void F(boolean z) {
        this.f.N(z);
        invalidate();
    }

    public void G(j jVar) {
        this.v = jVar;
    }

    public void H(boolean z) {
        this.f.b0(z);
        invalidate();
    }

    public void I(a aVar) {
        this.w = aVar;
    }

    public void a(k kVar) {
        if (kVar != null) {
            k.a(this.f, kVar);
            if (!TextUtils.isEmpty(kVar.w())) {
                setText(kVar.w());
            }
            setTypeface(mm.a(this.e, kVar.l()));
            if (kVar.A() == 0) {
                setTextSize(28.666666f);
            } else {
                setTextSize((float) kVar.A());
            }
            this.k = null;
            if (kVar.z() != 0) {
                Bitmap q2 = cm.q(this.e, i(), c(), b.T(this.e, kVar.z()));
                if (cm.l(q2)) {
                    Shader.TileMode tileMode = Shader.TileMode.MIRROR;
                    this.k = new BitmapShader(q2, tileMode, tileMode);
                }
            }
            this.l = null;
            if (kVar.t() != 0) {
                Bitmap q3 = cm.q(this.e, i(), c(), b.T(this.e, kVar.t()));
                if (cm.l(q3)) {
                    Shader.TileMode tileMode2 = Shader.TileMode.MIRROR;
                    this.l = new BitmapShader(q3, tileMode2, tileMode2);
                }
            }
            this.m = null;
            if (kVar.j() != 0) {
                Bitmap q4 = cm.q(this.e, i(), c(), b.T(this.e, kVar.j()));
                if (cm.l(q4)) {
                    Shader.TileMode tileMode3 = Shader.TileMode.MIRROR;
                    this.m = new BitmapShader(q4, tileMode3, tileMode3);
                }
            }
            this.t = null;
            if (kVar.h() != 0) {
                n(kVar.h());
            }
            J();
            invalidate();
        }
    }

    public k b() {
        return this.f;
    }

    public j e() {
        return this.v;
    }

    public void k(float f2) {
        this.f.X(f2);
        invalidate();
    }

    public void l(float f2) {
        this.f.F((int) f2);
        invalidate();
    }

    public void m(String str) {
        int i2;
        try {
            if (TextUtils.isEmpty(str)) {
                i2 = 0;
            } else {
                i2 = Color.parseColor(str);
            }
            this.f.G(i2);
            this.t = null;
            invalidate();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:25:0x005f */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.graphics.drawable.GradientDrawable] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void n(int r7) {
        /*
        // Method dump skipped, instructions count: 101
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.StyleEditText.n(int):void");
    }

    public void o(String str) {
        try {
            int i2 = 0;
            if (TextUtils.isEmpty(str)) {
                this.f.L(0);
            } else {
                i2 = Color.parseColor(str);
            }
            this.f.J(i2);
            this.m = null;
            invalidate();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        canvas.setDrawFilter(this.u);
        TextPaint paint = getPaint();
        paint.setAntiAlias(true);
        if (getText() != null) {
            this.f.u();
            this.f.A();
            this.f.v();
            this.f.A();
            float A = (float) this.f.A();
            float height = ((float) ((getHeight() - c()) / 2)) - A;
            float height2 = ((float) ((getHeight() + c()) / 2)) + A;
            if (c() > getHeight()) {
                height = -A;
                height2 = ((float) c()) + A;
            }
            if (this.f.e() == Layout.Alignment.ALIGN_NORMAL) {
                setGravity(19);
                this.g.set(Math.max(-A, 0.0f), height, Math.min((A * 2.0f) + f(paint, getText().toString()) + ((float) (this.i * 2)), (float) getWidth()), height2);
            } else if (this.f.e() == Layout.Alignment.ALIGN_CENTER) {
                setGravity(17);
                this.g.set(Math.max((((((float) getWidth()) - f(paint, getText().toString())) / 2.0f) - ((float) this.i)) - A, 0.0f), height, Math.min(((((float) getWidth()) + f(paint, getText().toString())) / 2.0f) + ((float) this.i) + A, (float) getWidth()), height2);
            } else if (this.f.e() == Layout.Alignment.ALIGN_OPPOSITE) {
                setGravity(21);
                this.g.set(Math.max(((((float) getWidth()) - f(paint, getText().toString())) - ((float) (this.i * 2))) - (2.0f * A), 0.0f), height, Math.min(((float) getWidth()) + A, (float) getWidth()), height2);
            }
        }
        if (this.f.D()) {
            setPaintFlags(getPaintFlags() | 8);
        } else {
            setPaintFlags((getPaintFlags() & -9) | 0);
        }
        if (this.f.C() && this.f.B()) {
            setTypeface(getTypeface(), 3);
        } else if (this.f.C()) {
            setTypeface(getTypeface(), 2);
        } else if (this.f.B()) {
            setTypeface(getTypeface(), 1);
        } else {
            setTypeface(Typeface.create(getTypeface(), 0));
        }
        if (this.f.c() && !TextUtils.isEmpty(getText())) {
            Drawable drawable = this.t;
            if (drawable != null) {
                RectF rectF = this.g;
                drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                this.t.setAlpha((int) ((((float) this.f.f()) / 100.0f) * 255.0f));
                this.t.draw(canvas);
            } else {
                this.r.setStyle(Paint.Style.FILL);
                this.r.setColor(this.f.g());
                this.r.setAlpha((int) ((((float) this.f.f()) / 100.0f) * 255.0f));
                if (Build.VERSION.SDK_INT >= 21) {
                    RectF rectF2 = this.g;
                    int i2 = this.h;
                    canvas.drawRoundRect(rectF2, (float) i2, (float) i2, this.r);
                } else {
                    canvas.drawRect(this.g, this.r);
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            setLetterSpacing(this.f.m());
        }
        setLineSpacing(0.0f, this.f.o());
        if (this.f.d() && !TextUtils.isEmpty(getText())) {
            if (!cm.l(this.q)) {
                Bitmap d = cm.d(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
                this.q = d;
                if (cm.l(d)) {
                    this.p = new Canvas(this.q);
                }
            }
            if (getHeight() < c()) {
                Bitmap d2 = cm.d(getWidth(), c(), Bitmap.Config.ARGB_8888);
                this.q = d2;
                if (cm.l(d2)) {
                    this.p = new Canvas(this.q);
                }
            }
            if (cm.l(this.q)) {
                this.q.eraseColor(0);
                if (this.f.s() <= 100) {
                    paint.setMaskFilter(this.j);
                } else {
                    paint.setMaskFilter(null);
                }
                paint.setStyle(Paint.Style.FILL);
                paint.setShader(this.l);
                this.s.setAlpha((int) (this.f.q() * 255.0f));
                if (this.l == null) {
                    setTextColor(this.f.r());
                    setAlpha(this.f.q());
                }
                canvas.translate((((float) this.f.u()) / 50.0f) * ((float) this.f.A()), (((float) this.f.v()) / 50.0f) * ((float) this.f.A()));
                setCursorVisible(false);
                super.onDraw(this.p);
                setCursorVisible(true);
                paint.setMaskFilter(null);
                canvas.drawBitmap(this.q, 0.0f, 0.0f, this.s);
                canvas.translate((((float) (-this.f.u())) / 50.0f) * ((float) this.f.A()), (((float) (-this.f.v())) / 50.0f) * ((float) this.f.A()));
            }
        }
        if (this.f.b() && !TextUtils.isEmpty(getText())) {
            if (!cm.l(this.o)) {
                Bitmap d3 = cm.d(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
                this.o = d3;
                if (cm.l(d3)) {
                    this.n = new Canvas(this.o);
                }
            }
            if (getHeight() < c()) {
                Bitmap d4 = cm.d(getWidth(), c(), Bitmap.Config.ARGB_8888);
                this.o = d4;
                if (cm.l(d4)) {
                    this.n = new Canvas(this.o);
                }
            }
            if (cm.l(this.o)) {
                this.o.eraseColor(0);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth((float) c2.b(this.e, (((float) this.f.k()) / 100.0f) * 10.0f));
                paint.setStrokeJoin(Paint.Join.ROUND);
                paint.setShader(this.m);
                if (this.m == null) {
                    setTextColor(this.f.i());
                }
                setAlpha(1.0f);
                super.onDraw(this.n);
                canvas.drawBitmap(this.o, 0.0f, 0.0f, (Paint) null);
            }
        }
        setAlpha(1.0f);
        paint.setStyle(Paint.Style.FILL);
        paint.setShader(this.k);
        setTextColor((this.f.y() & 16777215) | (((int) (this.f.x() * 255.0f)) << 24));
        super.onDraw(canvas);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        a aVar = this.w;
        if (aVar != null) {
            ((ImageTextFragment) aVar).G1(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void p(int i2) {
        this.f.K(i2);
        Bitmap q2 = cm.q(this.e, i(), c(), b.T(this.e, i2));
        if (cm.l(q2)) {
            Shader.TileMode tileMode = Shader.TileMode.MIRROR;
            this.m = new BitmapShader(q2, tileMode, tileMode);
        }
        invalidate();
    }

    public void q(int i2) {
        this.f.L(i2);
        invalidate();
    }

    public void r(String str) {
        em.h("StyleEditText", "fontPath = " + str);
        if (!TextUtils.equals(str, this.f.l())) {
            this.f.M(str);
            Typeface a2 = mm.a(this.e, str);
            if (a2 != null) {
                StringBuilder q2 = ic.q("typeface = ");
                q2.append(a2.isItalic());
                em.h("StyleEditText", q2.toString());
                setTypeface(a2);
                return;
            }
            em.h("StyleEditText", "typeface is null ");
        }
    }

    public void s(int i2) {
        this.f.O(i2);
        invalidate();
    }

    public void setTextSize(float f2) {
        this.f.a0((int) f2);
        int A = this.f.A() + this.i;
        int i2 = this.i;
        setPadding(A, i2, this.f.A() + i2, this.i);
        super.setTextSize((float) this.f.A());
    }

    public void t(int i2) {
        this.f.P(i2);
        invalidate();
    }

    public void u(float f2) {
        this.f.Q(f2);
        invalidate();
    }

    public void v(int i2) {
        this.f.S(i2);
        J();
        invalidate();
    }

    public void w(String str) {
        int i2;
        try {
            if (TextUtils.isEmpty(str)) {
                i2 = 0;
            } else {
                i2 = Color.parseColor(str);
            }
            this.f.R(i2);
            this.l = null;
            J();
            invalidate();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void x(int i2) {
        this.f.T(i2);
        Bitmap q2 = cm.q(this.e, i(), c(), b.T(this.e, i2));
        if (cm.l(q2)) {
            Shader.TileMode tileMode = Shader.TileMode.MIRROR;
            this.l = new BitmapShader(q2, tileMode, tileMode);
        }
        invalidate();
    }

    public void y(int i2) {
        this.f.U(i2);
        invalidate();
    }

    public void z(int i2) {
        this.f.V(i2);
        invalidate();
    }

    public StyleEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.g = new RectF();
        this.e = context;
        this.f = new k();
        this.u = new PaintFlagsDrawFilter(0, 3);
        this.h = c2.b(this.e, 5.0f);
        this.i = c2.b(this.e, 10.0f);
        Paint paint = new Paint(3);
        this.r = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint(3);
        this.s = paint2;
        paint2.setAntiAlias(true);
        int i3 = this.i;
        setPadding(i3, i3, i3, i3);
        this.f.M("Roboto-Medium.ttf");
        setTypeface(mm.a(this.e, "Roboto-Medium.ttf"));
    }
}
