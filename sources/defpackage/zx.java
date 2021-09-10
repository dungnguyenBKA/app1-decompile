package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.google.android.material.R$styleable;

/* renamed from: zx  reason: default package */
public class zx {
    public final float a;
    public final ColorStateList b;
    public final int c;
    public final int d;
    public final String e;
    public final ColorStateList f;
    public final float g;
    public final float h;
    public final float i;
    private final int j;
    private boolean k = false;
    private Typeface l;

    /* access modifiers changed from: package-private */
    /* renamed from: zx$a */
    public class a extends j1 {
        final /* synthetic */ by a;

        a(by byVar) {
            this.a = byVar;
        }

        @Override // defpackage.j1
        public void c(int i) {
            zx.this.k = true;
            this.a.a(i);
        }

        @Override // defpackage.j1
        public void d(Typeface typeface) {
            zx zxVar = zx.this;
            zxVar.l = Typeface.create(typeface, zxVar.c);
            zx.this.k = true;
            this.a.b(zx.this.l, false);
        }
    }

    public zx(Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, R$styleable.I);
        this.a = obtainStyledAttributes.getDimension(0, 0.0f);
        this.b = yx.a(context, obtainStyledAttributes, 3);
        yx.a(context, obtainStyledAttributes, 4);
        yx.a(context, obtainStyledAttributes, 5);
        this.c = obtainStyledAttributes.getInt(2, 0);
        this.d = obtainStyledAttributes.getInt(1, 1);
        int i3 = !obtainStyledAttributes.hasValue(12) ? 10 : 12;
        this.j = obtainStyledAttributes.getResourceId(i3, 0);
        this.e = obtainStyledAttributes.getString(i3);
        obtainStyledAttributes.getBoolean(14, false);
        this.f = yx.a(context, obtainStyledAttributes, 6);
        this.g = obtainStyledAttributes.getFloat(7, 0.0f);
        this.h = obtainStyledAttributes.getFloat(8, 0.0f);
        this.i = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
    }

    private void d() {
        String str;
        if (this.l == null && (str = this.e) != null) {
            this.l = Typeface.create(str, this.c);
        }
        if (this.l == null) {
            int i2 = this.d;
            if (i2 == 1) {
                this.l = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                this.l = Typeface.SERIF;
            } else if (i2 != 3) {
                this.l = Typeface.DEFAULT;
            } else {
                this.l = Typeface.MONOSPACE;
            }
            this.l = Typeface.create(this.l, this.c);
        }
    }

    public Typeface e() {
        d();
        return this.l;
    }

    public void f(Context context, by byVar) {
        d();
        int i2 = this.j;
        if (i2 == 0) {
            this.k = true;
        }
        if (this.k) {
            byVar.b(this.l, true);
            return;
        }
        try {
            c1.e(context, i2, new a(byVar), null);
        } catch (Resources.NotFoundException unused) {
            this.k = true;
            byVar.a(1);
        } catch (Exception unused2) {
            this.k = true;
            byVar.a(-3);
        }
    }

    public void g(Context context, TextPaint textPaint, by byVar) {
        d();
        i(textPaint, this.l);
        f(context, new ay(this, textPaint, byVar));
        ColorStateList colorStateList = this.b;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f2 = this.i;
        float f3 = this.g;
        float f4 = this.h;
        ColorStateList colorStateList2 = this.f;
        textPaint.setShadowLayer(f2, f3, f4, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void h(Context context, TextPaint textPaint, by byVar) {
        d();
        i(textPaint, this.l);
        f(context, new ay(this, textPaint, byVar));
    }

    public void i(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ -1) & this.c;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.a);
    }
}
