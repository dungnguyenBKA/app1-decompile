package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.appcompat.R$styleable;
import androidx.core.widget.c;
import photoeditor.cutout.backgrounderaser.R;

public class SwitchCompat extends CompoundButton {
    private static final Property<SwitchCompat, Float> O = new a(Float.class, "thumbPos");
    private static final int[] P = {16842912};
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private final TextPaint G;
    private ColorStateList H;
    private Layout I;
    private Layout J;
    private TransformationMethod K;
    ObjectAnimator L;
    private final k M;
    private final Rect N;
    private Drawable b;
    private ColorStateList c;
    private PorterDuff.Mode d;
    private boolean e;
    private boolean f;
    private Drawable g;
    private ColorStateList h;
    private PorterDuff.Mode i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private CharSequence p;
    private CharSequence q;
    private boolean r;
    private int s;
    private int t;
    private float u;
    private float v;
    private VelocityTracker w;
    private int x;
    float y;
    private int z;

    static class a extends Property<SwitchCompat, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.y);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(SwitchCompat switchCompat, Float f) {
            SwitchCompat switchCompat2 = switchCompat;
            switchCompat2.y = f.floatValue();
            switchCompat2.invalidate();
        }
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.rz);
    }

    private void a() {
        Drawable drawable = this.b;
        if (drawable == null) {
            return;
        }
        if (this.e || this.f) {
            Drawable mutate = androidx.core.graphics.drawable.a.j(drawable).mutate();
            this.b = mutate;
            if (this.e) {
                androidx.core.graphics.drawable.a.g(mutate, this.c);
            }
            if (this.f) {
                androidx.core.graphics.drawable.a.h(this.b, this.d);
            }
            if (this.b.isStateful()) {
                this.b.setState(getDrawableState());
            }
        }
    }

    private void b() {
        Drawable drawable = this.g;
        if (drawable == null) {
            return;
        }
        if (this.j || this.k) {
            Drawable mutate = androidx.core.graphics.drawable.a.j(drawable).mutate();
            this.g = mutate;
            if (this.j) {
                androidx.core.graphics.drawable.a.g(mutate, this.h);
            }
            if (this.k) {
                androidx.core.graphics.drawable.a.h(this.g, this.i);
            }
            if (this.g.isStateful()) {
                this.g.setState(getDrawableState());
            }
        }
    }

    private void c() {
        ObjectAnimator objectAnimator = this.L;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private int d() {
        float f2;
        if (p0.b(this)) {
            f2 = 1.0f - this.y;
        } else {
            f2 = this.y;
        }
        return (int) ((f2 * ((float) e())) + 0.5f);
    }

    private int e() {
        Rect rect;
        Drawable drawable = this.g;
        if (drawable == null) {
            return 0;
        }
        Rect rect2 = this.N;
        drawable.getPadding(rect2);
        Drawable drawable2 = this.b;
        if (drawable2 != null) {
            rect = o.c(drawable2);
        } else {
            rect = o.c;
        }
        return ((((this.z - this.B) - rect2.left) - rect2.right) - rect.left) - rect.right;
    }

    private Layout h(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.K;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.G;
        return new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil((double) Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    public void draw(Canvas canvas) {
        Rect rect;
        int i2;
        int i3;
        Rect rect2 = this.N;
        int i4 = this.C;
        int i5 = this.D;
        int i6 = this.E;
        int i7 = this.F;
        int d2 = d() + i4;
        Drawable drawable = this.b;
        if (drawable != null) {
            rect = o.c(drawable);
        } else {
            rect = o.c;
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.getPadding(rect2);
            int i8 = rect2.left;
            d2 += i8;
            if (rect != null) {
                int i9 = rect.left;
                if (i9 > i8) {
                    i4 += i9 - i8;
                }
                int i10 = rect.top;
                int i11 = rect2.top;
                i2 = i10 > i11 ? (i10 - i11) + i5 : i5;
                int i12 = rect.right;
                int i13 = rect2.right;
                if (i12 > i13) {
                    i6 -= i12 - i13;
                }
                int i14 = rect.bottom;
                int i15 = rect2.bottom;
                if (i14 > i15) {
                    i3 = i7 - (i14 - i15);
                    this.g.setBounds(i4, i2, i6, i3);
                }
            } else {
                i2 = i5;
            }
            i3 = i7;
            this.g.setBounds(i4, i2, i6, i3);
        }
        Drawable drawable3 = this.b;
        if (drawable3 != null) {
            drawable3.getPadding(rect2);
            int i16 = d2 - rect2.left;
            int i17 = d2 + this.B + rect2.right;
            this.b.setBounds(i16, i5, i17, i7);
            Drawable background = getBackground();
            if (background != null) {
                androidx.core.graphics.drawable.a.d(background, i16, i5, i17, i7);
            }
        }
        super.draw(canvas);
    }

    public void drawableHotspotChanged(float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
        }
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.c(drawable, f2, f3);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            androidx.core.graphics.drawable.a.c(drawable2, f2, f3);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.b;
        boolean z2 = false;
        if (drawable != null && drawable.isStateful()) {
            z2 = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null && drawable2.isStateful()) {
            z2 |= drawable2.setState(drawableState);
        }
        if (z2) {
            invalidate();
        }
    }

    public ColorStateList f() {
        return this.c;
    }

    public ColorStateList g() {
        return this.h;
    }

    public int getCompoundPaddingLeft() {
        if (!p0.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.z;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.n : compoundPaddingLeft;
    }

    public int getCompoundPaddingRight() {
        if (p0.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.z;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.n : compoundPaddingRight;
    }

    public void i(Typeface typeface) {
        if ((this.G.getTypeface() != null && !this.G.getTypeface().equals(typeface)) || (this.G.getTypeface() == null && typeface != null)) {
            this.G.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public void j(float f2) {
        this.y = f2;
        invalidate();
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.L;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.L.end();
            this.L = null;
        }
    }

    public void k(ColorStateList colorStateList) {
        this.c = colorStateList;
        this.e = true;
        a();
    }

    public void l(ColorStateList colorStateList) {
        this.h = colorStateList;
        this.j = true;
        b();
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, P);
        }
        return onCreateDrawableState;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        super.onDraw(canvas);
        Rect rect = this.N;
        Drawable drawable = this.g;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i3 = this.D;
        int i4 = this.F;
        int i5 = i3 + rect.top;
        int i6 = i4 - rect.bottom;
        Drawable drawable2 = this.b;
        if (drawable != null) {
            if (!this.o || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect c2 = o.c(drawable2);
                drawable2.copyBounds(rect);
                rect.left += c2.left;
                rect.right -= c2.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = (this.y > 0.5f ? 1 : (this.y == 0.5f ? 0 : -1)) > 0 ? this.I : this.J;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.H;
            if (colorStateList != null) {
                this.G.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.G.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                i2 = bounds.left + bounds.right;
            } else {
                i2 = getWidth();
            }
            canvas.translate((float) ((i2 / 2) - (layout.getWidth() / 2)), (float) (((i5 + i6) / 2) - (layout.getHeight() / 2)));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.p : this.q;
        if (!TextUtils.isEmpty(charSequence)) {
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        super.onLayout(z2, i2, i3, i4, i5);
        int i11 = 0;
        if (this.b != null) {
            Rect rect = this.N;
            Drawable drawable = this.g;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect c2 = o.c(this.b);
            i6 = Math.max(0, c2.left - rect.left);
            i11 = Math.max(0, c2.right - rect.right);
        } else {
            i6 = 0;
        }
        if (p0.b(this)) {
            i8 = getPaddingLeft() + i6;
            i7 = ((this.z + i8) - i6) - i11;
        } else {
            i7 = (getWidth() - getPaddingRight()) - i11;
            i8 = (i7 - this.z) + i6 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = getPaddingTop();
            int i12 = this.A;
            int height = (((getHeight() + paddingTop) - getPaddingBottom()) / 2) - (i12 / 2);
            i9 = i12 + height;
            i10 = height;
        } else if (gravity != 80) {
            i10 = getPaddingTop();
            i9 = this.A + i10;
        } else {
            i9 = getHeight() - getPaddingBottom();
            i10 = i9 - this.A;
        }
        this.C = i8;
        this.D = i10;
        this.F = i9;
        this.E = i7;
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        if (this.r) {
            if (this.I == null) {
                this.I = h(this.p);
            }
            if (this.J == null) {
                this.J = h(this.q);
            }
        }
        Rect rect = this.N;
        Drawable drawable = this.b;
        int i7 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i5 = (this.b.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.b.getIntrinsicHeight();
        } else {
            i5 = 0;
            i4 = 0;
        }
        if (this.r) {
            i6 = (this.l * 2) + Math.max(this.I.getWidth(), this.J.getWidth());
        } else {
            i6 = 0;
        }
        this.B = Math.max(i6, i5);
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i7 = this.g.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i8 = rect.left;
        int i9 = rect.right;
        Drawable drawable3 = this.b;
        if (drawable3 != null) {
            Rect c2 = o.c(drawable3);
            i8 = Math.max(i8, c2.left);
            i9 = Math.max(i9, c2.right);
        }
        int max = Math.max(this.m, (this.B * 2) + i8 + i9);
        int max2 = Math.max(i7, i4);
        this.z = max;
        this.A = max2;
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.p : this.q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 != 3) goto L_0x0159;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
        // Method dump skipped, instructions count: 350
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setChecked(boolean z2) {
        super.setChecked(z2);
        boolean isChecked = isChecked();
        float f2 = 1.0f;
        if (getWindowToken() != null) {
            int i2 = c3.g;
            if (isLaidOut()) {
                if (!isChecked) {
                    f2 = 0.0f;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, O, f2);
                this.L = ofFloat;
                ofFloat.setDuration(250L);
                this.L.setAutoCancel(true);
                this.L.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.L;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        if (!isChecked) {
            f2 = 0.0f;
        }
        this.y = f2;
        invalidate();
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(c.j(this, callback));
    }

    public void toggle() {
        setChecked(!isChecked());
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.b || drawable == this.g;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Typeface typeface;
        Typeface typeface2;
        this.c = null;
        this.d = null;
        this.e = false;
        this.f = false;
        this.h = null;
        this.i = null;
        this.j = false;
        this.k = false;
        this.w = VelocityTracker.obtain();
        this.N = new Rect();
        boolean z2 = true;
        TextPaint textPaint = new TextPaint(1);
        this.G = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        i0 u2 = i0.u(context, attributeSet, R$styleable.x, i2, 0);
        Drawable g2 = u2.g(2);
        this.b = g2;
        if (g2 != null) {
            g2.setCallback(this);
        }
        Drawable g3 = u2.g(11);
        this.g = g3;
        if (g3 != null) {
            g3.setCallback(this);
        }
        this.p = u2.p(0);
        this.q = u2.p(1);
        this.r = u2.a(3, true);
        this.l = u2.f(8, 0);
        this.m = u2.f(5, 0);
        this.n = u2.f(6, 0);
        this.o = u2.a(4, false);
        ColorStateList c2 = u2.c(9);
        if (c2 != null) {
            this.c = c2;
            this.e = true;
        }
        PorterDuff.Mode d2 = o.d(u2.k(10, -1), null);
        if (this.d != d2) {
            this.d = d2;
            this.f = true;
        }
        if (this.e || this.f) {
            a();
        }
        ColorStateList c3 = u2.c(12);
        if (c3 != null) {
            this.h = c3;
            this.j = true;
        }
        PorterDuff.Mode d3 = o.d(u2.k(13, -1), null);
        if (this.i != d3) {
            this.i = d3;
            this.k = true;
        }
        if (this.j || this.k) {
            b();
        }
        int n2 = u2.n(7, 0);
        if (n2 != 0) {
            i0 s2 = i0.s(context, n2, R$styleable.y);
            ColorStateList c4 = s2.c(3);
            if (c4 != null) {
                this.H = c4;
            } else {
                this.H = getTextColors();
            }
            int f2 = s2.f(0, 0);
            if (f2 != 0) {
                float f3 = (float) f2;
                if (f3 != textPaint.getTextSize()) {
                    textPaint.setTextSize(f3);
                    requestLayout();
                }
            }
            int k2 = s2.k(1, -1);
            int k3 = s2.k(2, -1);
            if (k2 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (k2 == 2) {
                typeface = Typeface.SERIF;
            } else if (k2 != 3) {
                typeface = null;
            } else {
                typeface = Typeface.MONOSPACE;
            }
            float f4 = 0.0f;
            if (k3 > 0) {
                if (typeface == null) {
                    typeface2 = Typeface.defaultFromStyle(k3);
                } else {
                    typeface2 = Typeface.create(typeface, k3);
                }
                i(typeface2);
                int style = ((typeface2 != null ? typeface2.getStyle() : 0) ^ -1) & k3;
                textPaint.setFakeBoldText((style & 1) == 0 ? false : z2);
                textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : f4);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                i(typeface);
            }
            if (s2.a(14, false)) {
                this.K = new i(getContext());
            } else {
                this.K = null;
            }
            s2.v();
        }
        k kVar = new k(this);
        this.M = kVar;
        kVar.k(attributeSet, i2);
        u2.v();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.t = viewConfiguration.getScaledTouchSlop();
        this.x = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }
}
