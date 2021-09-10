package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.cardview.R$styleable;
import photoeditor.cutout.backgrounderaser.R;

public class CardView extends FrameLayout {
    private static final int[] i = {16842801};
    private static final e j;
    private boolean b;
    private boolean c;
    int d;
    int e;
    final Rect f;
    final Rect g;
    private final d h;

    public class a implements d {
        private Drawable a;

        a() {
            CardView.this = r1;
        }

        public Drawable a() {
            return this.a;
        }

        public boolean b() {
            return CardView.this.u();
        }

        public void c(Drawable drawable) {
            this.a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        public void d(int i, int i2, int i3, int i4) {
            CardView.this.g.set(i, i2, i3, i4);
            CardView cardView = CardView.this;
            Rect rect = cardView.f;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            j = new b();
        } else {
            j = new a();
        }
        j.g();
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ck);
    }

    public ColorStateList n() {
        return j.e(this.h);
    }

    public float o() {
        return j.b(this.h);
    }

    public void onMeasure(int i2, int i3) {
        e eVar = j;
        if (!(eVar instanceof b)) {
            int mode = View.MeasureSpec.getMode(i2);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil((double) eVar.i(this.h)), View.MeasureSpec.getSize(i2)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i3);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i3 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil((double) eVar.h(this.h)), View.MeasureSpec.getSize(i3)), mode2);
            }
            super.onMeasure(i2, i3);
            return;
        }
        super.onMeasure(i2, i3);
    }

    public int p() {
        return this.f.bottom;
    }

    public int q() {
        return this.f.left;
    }

    public int r() {
        return this.f.right;
    }

    public int s() {
        return this.f.top;
    }

    public void setMinimumHeight(int i2) {
        this.e = i2;
        super.setMinimumHeight(i2);
    }

    public void setMinimumWidth(int i2) {
        this.d = i2;
        super.setMinimumWidth(i2);
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
    }

    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
    }

    public float t() {
        return j.d(this.h);
    }

    public boolean u() {
        return this.c;
    }

    public float v() {
        return j.c(this.h);
    }

    public boolean w() {
        return this.b;
    }

    public void x(int i2, int i3, int i4, int i5) {
        this.f.set(i2, i3, i4, i5);
        j.f(this.h);
    }

    public CardView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.f = rect;
        this.g = new Rect();
        a aVar = new a();
        this.h = aVar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a, i2, R.style.fa);
        if (obtainStyledAttributes.hasValue(2)) {
            valueOf = obtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(i);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            if (fArr[2] > 0.5f) {
                i3 = getResources().getColor(R.color.bd);
            } else {
                i3 = getResources().getColor(R.color.bc);
            }
            valueOf = ColorStateList.valueOf(i3);
        }
        float dimension = obtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(5, 0.0f);
        this.b = obtainStyledAttributes.getBoolean(7, false);
        this.c = obtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        float f2 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.d = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        j.a(aVar, context, valueOf, dimension, dimension2, f2);
    }
}
