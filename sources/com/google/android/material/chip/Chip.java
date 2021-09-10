package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.google.ads.ADRequestList;
import com.google.android.material.R$styleable;
import com.google.android.material.chip.b;
import com.google.android.material.internal.i;
import com.google.android.material.internal.j;
import defpackage.n3;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class Chip extends AppCompatCheckBox implements b.a, ty {
    private static final Rect t = new Rect();
    private static final int[] u = {16842913};
    private static final int[] v = {16842911};
    private b e;
    private InsetDrawable f;
    private RippleDrawable g;
    private CompoundButton.OnCheckedChangeListener h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private final b p;
    private final Rect q;
    private final RectF r;
    private final by s;

    /* access modifiers changed from: package-private */
    public class a extends by {
        a() {
            Chip.this = r1;
        }

        @Override // defpackage.by
        public void a(int i) {
        }

        @Override // defpackage.by
        public void b(Typeface typeface, boolean z) {
            Chip chip = Chip.this;
            chip.setText(chip.e.F0() ? Chip.this.e.j0() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    public class b extends s3 {
        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        b(Chip chip) {
            super(chip);
            Chip.this = r1;
        }

        @Override // defpackage.s3
        public int r(float f, float f2) {
            return (!Chip.this.u() || !Chip.this.s().contains(f, f2)) ? 0 : 1;
        }

        @Override // defpackage.s3
        public void s(List<Integer> list) {
            list.add(0);
            if (Chip.this.u() && Chip.this.w()) {
                list.add(1);
            }
        }

        @Override // defpackage.s3
        public boolean w(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                if (i == 0) {
                    return Chip.this.performClick();
                }
                if (i == 1) {
                    Chip.this.x();
                }
            }
            return false;
        }

        @Override // defpackage.s3
        public void x(n3 n3Var) {
            n3Var.P(Chip.this.v());
            n3Var.S(Chip.this.isClickable());
            if (Chip.this.v() || Chip.this.isClickable()) {
                n3Var.R(Chip.this.v() ? "android.widget.CompoundButton" : "android.widget.Button");
            } else {
                n3Var.R("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                n3Var.p0(text);
            } else {
                n3Var.V(text);
            }
        }

        @Override // defpackage.s3
        public void y(int i, n3 n3Var) {
            CharSequence charSequence = "";
            if (i == 1) {
                Chip.this.r();
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                Object[] objArr = new Object[1];
                if (!TextUtils.isEmpty(text)) {
                    charSequence = text;
                }
                objArr[0] = charSequence;
                n3Var.V(context.getString(R.string.dc, objArr).trim());
                n3Var.M(Chip.this.t());
                n3Var.b(n3.a.g);
                n3Var.X(Chip.this.isEnabled());
                return;
            }
            n3Var.V(charSequence);
            n3Var.M(Chip.t);
        }

        @Override // defpackage.s3
        public void z(int i, boolean z) {
            if (i == 1) {
                Chip.this.l = z;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.de);
    }

    private void B() {
        if (dy.a) {
            this.g = new RippleDrawable(dy.c(this.e.i0()), q(), null);
            this.e.E0(false);
            RippleDrawable rippleDrawable = this.g;
            int i2 = c3.g;
            setBackground(rippleDrawable);
            return;
        }
        this.e.E0(true);
        Drawable q2 = q();
        int i3 = c3.g;
        setBackground(q2);
        if (q() == this.f && this.e.getCallback() == null) {
            this.e.setCallback(this.f);
        }
    }

    private void C() {
        b bVar;
        if (!TextUtils.isEmpty(getText()) && (bVar = this.e) != null) {
            int l0 = (int) (this.e.l0() + bVar.c0() + this.e.Z());
            int m0 = (int) (this.e.m0() + this.e.e0() + this.e.W());
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int i2 = c3.g;
            setPaddingRelative(m0, paddingTop, l0, paddingBottom);
        }
    }

    private void D() {
        TextPaint paint = getPaint();
        b bVar = this.e;
        if (bVar != null) {
            paint.drawableState = bVar.getState();
        }
        b bVar2 = this.e;
        zx k0 = bVar2 != null ? bVar2.k0() : null;
        if (k0 != null) {
            k0.g(getContext(), paint, this.s);
        }
    }

    private RectF s() {
        this.r.setEmpty();
        if (u()) {
            this.e.g0(this.r);
        }
        return this.r;
    }

    private Rect t() {
        RectF s2 = s();
        this.q.set((int) s2.left, (int) s2.top, (int) s2.right, (int) s2.bottom);
        return this.q;
    }

    private boolean u() {
        b bVar = this.e;
        return (bVar == null || bVar.f0() == null) ? false : true;
    }

    private void y() {
        if (this.f != null) {
            this.f = null;
            setMinWidth(0);
            b bVar = this.e;
            setMinHeight((int) (bVar != null ? bVar.d0() : 0.0f));
            B();
        }
    }

    private void z(boolean z) {
        if (this.j != z) {
            this.j = z;
            refreshDrawableState();
        }
    }

    public void A(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.h = onCheckedChangeListener;
    }

    @Override // com.google.android.material.chip.b.a
    public void a() {
        p(this.o);
        B();
        C();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        boolean z;
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = s3.class.getDeclaredField(ADRequestList.ORDER_M);
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.p)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = s3.class.getDeclaredMethod("D", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.p, Integer.valueOf((int) RecyclerView.UNDEFINED_DURATION));
                    z = true;
                    if (!z || this.p.n(motionEvent) || super.dispatchHoverEvent(motionEvent)) {
                        return true;
                    }
                    return false;
                }
            } catch (NoSuchMethodException e2) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e2);
            } catch (IllegalAccessException e3) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            } catch (InvocationTargetException e4) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            } catch (NoSuchFieldException e5) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e5);
            }
        }
        z = false;
        return !z ? true : true;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.p.o(keyEvent) || this.p.q() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [int, boolean] */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // androidx.appcompat.widget.AppCompatCheckBox
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void drawableStateChanged() {
        /*
        // Method dump skipped, instructions count: 114
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.drawableStateChanged():void");
    }

    @Override // defpackage.ty
    public void e(qy qyVar) {
        this.e.e(qyVar);
    }

    public TextUtils.TruncateAt getEllipsize() {
        b bVar = this.e;
        if (bVar != null) {
            return bVar.h0();
        }
        return null;
    }

    public void getFocusedRect(Rect rect) {
        if (this.p.q() == 1 || this.p.p() == 1) {
            rect.set(t());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ny.b(this, this.e);
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, u);
        }
        if (v()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, v);
        }
        return onCreateDrawableState;
    }

    public void onFocusChanged(boolean z, int i2, Rect rect) {
        super.onFocusChanged(z, i2, rect);
        this.p.v(z, i2, rect);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            boolean contains = s().contains(motionEvent.getX(), motionEvent.getY());
            if (this.k != contains) {
                this.k = contains;
                refreshDrawableState();
            }
        } else if (actionMasked == 10 && this.k) {
            this.k = false;
            refreshDrawableState();
        }
        return super.onHoverEvent(motionEvent);
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (v() || isClickable()) {
            accessibilityNodeInfo.setClassName(v() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(v());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        if (!s().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
    }

    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        if (this.n != i2) {
            this.n = i2;
            C();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001e, code lost:
        if (r0 != 3) goto L_0x0045;
     */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0048  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.s()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L_0x003e
            if (r0 == r3) goto L_0x002b
            r4 = 2
            if (r0 == r4) goto L_0x0021
            r1 = 3
            if (r0 == r1) goto L_0x0039
            goto L_0x0045
        L_0x0021:
            boolean r0 = r5.j
            if (r0 == 0) goto L_0x0045
            if (r1 != 0) goto L_0x0043
            r5.z(r2)
            goto L_0x0043
        L_0x002b:
            boolean r0 = r5.j
            if (r0 == 0) goto L_0x0039
            r5.playSoundEffect(r2)
            com.google.android.material.chip.Chip$b r0 = r5.p
            r0.C(r3, r3)
            r0 = 1
            goto L_0x003a
        L_0x0039:
            r0 = 0
        L_0x003a:
            r5.z(r2)
            goto L_0x0046
        L_0x003e:
            if (r1 == 0) goto L_0x0045
            r5.z(r3)
        L_0x0043:
            r0 = 1
            goto L_0x0046
        L_0x0045:
            r0 = 0
        L_0x0046:
            if (r0 != 0) goto L_0x004e
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L_0x004f
        L_0x004e:
            r2 = 1
        L_0x004f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean p(int i2) {
        this.o = i2;
        if (!this.m) {
            y();
            return false;
        }
        int max = Math.max(0, i2 - this.e.getIntrinsicHeight());
        int max2 = Math.max(0, i2 - this.e.getIntrinsicWidth());
        if (max2 > 0 || max > 0) {
            int i3 = max2 > 0 ? max2 / 2 : 0;
            int i4 = max > 0 ? max / 2 : 0;
            if (this.f != null) {
                Rect rect = new Rect();
                this.f.getPadding(rect);
                if (rect.top == i4 && rect.bottom == i4 && rect.left == i3 && rect.right == i3) {
                    return true;
                }
            }
            if (getMinHeight() != i2) {
                setMinHeight(i2);
            }
            if (getMinWidth() != i2) {
                setMinWidth(i2);
            }
            this.f = new InsetDrawable((Drawable) this.e, i3, i4, i3, i4);
            return true;
        }
        y();
        return false;
    }

    public Drawable q() {
        InsetDrawable insetDrawable = this.f;
        return insetDrawable == null ? this.e : insetDrawable;
    }

    public CharSequence r() {
        b bVar = this.e;
        if (bVar == null) {
            return null;
        }
        Objects.requireNonNull(bVar);
        return null;
    }

    public void setBackground(Drawable drawable) {
        if (drawable == q() || drawable == this.g) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    public void setBackgroundColor(int i2) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == q() || drawable == this.g) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox
    public void setBackgroundResource(int i2) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        b bVar = this.e;
        if (bVar == null) {
            this.i = z;
        } else if (bVar.n0()) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked != z && (onCheckedChangeListener = this.h) != null) {
                onCheckedChangeListener.onCheckedChanged(this, z);
            }
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i4 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i3, i4, i5);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i4 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i2, i3, i4, i5);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setElevation(float f2) {
        super.setElevation(f2);
        b bVar = this.e;
        if (bVar != null) {
            bVar.E(f2);
        }
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.e != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                b bVar = this.e;
                if (bVar != null) {
                    bVar.z0(truncateAt);
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    public void setGravity(int i2) {
        if (i2 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i2);
        }
    }

    public void setLayoutDirection(int i2) {
        if (this.e != null) {
            super.setLayoutDirection(i2);
        }
    }

    public void setLines(int i2) {
        if (i2 <= 1) {
            super.setLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMaxLines(int i2) {
        if (i2 <= 1) {
            super.setMaxLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMaxWidth(int i2) {
        super.setMaxWidth(i2);
        b bVar = this.e;
        if (bVar != null) {
            bVar.A0(i2);
        }
    }

    public void setMinLines(int i2) {
        if (i2 <= 1) {
            super.setMinLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        b bVar = this.e;
        if (bVar != null) {
            if (charSequence == null) {
                charSequence = "";
            }
            super.setText(bVar.F0() ? null : charSequence, bufferType);
            b bVar2 = this.e;
            if (bVar2 != null) {
                bVar2.C0(charSequence);
            }
        }
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        b bVar = this.e;
        if (bVar != null) {
            bVar.D0(i2);
        }
        D();
    }

    public boolean v() {
        b bVar = this.e;
        return bVar != null && bVar.n0();
    }

    public boolean w() {
        b bVar = this.e;
        return bVar != null && bVar.p0();
    }

    public boolean x() {
        playSoundEffect(0);
        this.p.C(1, 1);
        return false;
    }

    public Chip(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.q = new Rect();
        this.r = new RectF();
        this.s = new a();
        boolean z = true;
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            } else if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        b a0 = b.a0(context, attributeSet, i2, R.style.qf);
        int[] iArr = R$styleable.g;
        TypedArray f2 = i.f(context, attributeSet, iArr, i2, R.style.qf, new int[0]);
        this.m = f2.getBoolean(30, false);
        this.o = (int) Math.ceil((double) f2.getDimension(18, (float) Math.ceil((double) j.b(getContext(), 48))));
        f2.recycle();
        b bVar = this.e;
        if (bVar != a0) {
            if (bVar != null) {
                bVar.y0(null);
            }
            this.e = a0;
            a0.B0(false);
            this.e.y0(this);
            p(this.o);
            B();
        }
        a0.E(c3.i(this));
        TypedArray f3 = i.f(context, attributeSet, iArr, i2, R.style.qf, new int[0]);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            setTextColor(yx.a(context, f3, 1));
        }
        boolean hasValue = f3.hasValue(35);
        f3.recycle();
        b bVar2 = new b(this);
        this.p = bVar2;
        if (i3 >= 24) {
            c3.u(this, bVar2);
        } else if (i3 < 24) {
            if (u()) {
                b bVar3 = this.e;
                if ((bVar3 == null || !bVar3.p0()) ? false : z) {
                    c3.u(this, bVar2);
                }
            }
            c3.u(this, null);
        }
        if (!hasValue && i3 >= 21) {
            setOutlineProvider(new a(this));
        }
        setChecked(this.i);
        setText(a0.j0());
        setEllipsize(a0.h0());
        setIncludeFontPadding(false);
        D();
        if (!this.e.F0()) {
            setSingleLine();
        }
        setGravity(8388627);
        C();
        if (this.m) {
            setMinHeight(this.o);
        }
        this.n = getLayoutDirection();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
    }

    public void setTextAppearance(int i2) {
        super.setTextAppearance(i2);
        b bVar = this.e;
        if (bVar != null) {
            bVar.D0(i2);
        }
        D();
    }
}
