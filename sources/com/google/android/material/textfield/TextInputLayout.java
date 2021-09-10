package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.o;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.i;
import com.google.android.material.internal.j;
import defpackage.qy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class TextInputLayout extends LinearLayout {
    private int A;
    private int B;
    private final Rect C;
    private final Rect D;
    private final RectF E;
    private final CheckableImageButton F;
    private ColorStateList G;
    private boolean H;
    private PorterDuff.Mode I;
    private boolean J;
    private Drawable K;
    private View.OnLongClickListener L;
    private final LinkedHashSet<e> M;
    private int N;
    private final SparseArray<n> O;
    private final CheckableImageButton P;
    private final LinkedHashSet<f> Q;
    private ColorStateList R;
    private boolean S;
    private PorterDuff.Mode T;
    private boolean U;
    private Drawable V;
    private Drawable W;
    private final CheckableImageButton a0;
    private final FrameLayout b;
    private View.OnLongClickListener b0;
    private final FrameLayout c;
    private ColorStateList c0;
    EditText d;
    private ColorStateList d0;
    private CharSequence e;
    private final int e0;
    private final o f;
    private final int f0;
    boolean g;
    private int g0;
    private int h;
    private int h0;
    private boolean i;
    private final int i0;
    private TextView j;
    private final int j0;
    private int k;
    private final int k0;
    private int l;
    private boolean l0;
    private ColorStateList m;
    final com.google.android.material.internal.a m0;
    private ColorStateList n;
    private boolean n0;
    private boolean o;
    private ValueAnimator o0;
    private CharSequence p;
    private boolean p0;
    private boolean q;
    private boolean q0;
    private my r;
    private my s;
    private qy t;
    private final int u;
    private int v;
    private final int w;
    private int x;
    private final int y;
    private final int z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        CharSequence d;
        boolean e;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder q = ic.q("TextInputLayout.SavedState{");
            q.append(Integer.toHexString(System.identityHashCode(this)));
            q.append(" error=");
            q.append((Object) this.d);
            q.append("}");
            return q.toString();
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.d, parcel, i);
            parcel.writeInt(this.e ? 1 : 0);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.e = parcel.readInt() != 1 ? false : true;
        }
    }

    class a implements Runnable {
        a() {
        }

        public void run() {
            TextInputLayout.this.P.performClick();
            TextInputLayout.this.P.jumpDrawablesToCurrentState();
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            TextInputLayout.this.d.requestLayout();
        }
    }

    /* access modifiers changed from: package-private */
    public class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.m0.E(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class d extends n2 {
        private final TextInputLayout d;

        public d(TextInputLayout textInputLayout) {
            this.d = textInputLayout;
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            EditText editText = this.d.d;
            Editable text = editText != null ? editText.getText() : null;
            CharSequence r = this.d.r();
            CharSequence q = this.d.q();
            CharSequence n = this.d.n();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(r);
            boolean z3 = !TextUtils.isEmpty(q);
            boolean z4 = false;
            boolean z5 = z3 || !TextUtils.isEmpty(n);
            if (z) {
                n3Var.p0(text);
            } else if (z2) {
                n3Var.p0(r);
            }
            if (z2) {
                n3Var.c0(r);
                if (!z && z2) {
                    z4 = true;
                }
                n3Var.m0(z4);
            }
            if (z5) {
                if (!z3) {
                    q = n;
                }
                n3Var.Y(q);
                n3Var.W(true);
            }
        }
    }

    public interface e {
        void a(TextInputLayout textInputLayout);
    }

    public interface f {
        void a(TextInputLayout textInputLayout, int i);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tl);
    }

    private void H(boolean z2) {
        int i2 = 0;
        this.a0.setVisibility(z2 ? 0 : 8);
        FrameLayout frameLayout = this.c;
        if (z2) {
            i2 = 8;
        }
        frameLayout.setVisibility(i2);
        if (!s()) {
            Q();
        }
    }

    private static void J(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        int i2 = c3.g;
        boolean hasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z2 = false;
        int i3 = 1;
        boolean z3 = onLongClickListener != null;
        if (hasOnClickListeners || z3) {
            z2 = true;
        }
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.k(hasOnClickListeners);
        checkableImageButton.setLongClickable(z3);
        if (!z2) {
            i3 = 2;
        }
        checkableImageButton.setImportantForAccessibility(i3);
    }

    private void M() {
        if (this.j != null) {
            EditText editText = this.d;
            N(editText == null ? 0 : editText.getText().length());
        }
    }

    private void O() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.j;
        if (textView != null) {
            L(textView, this.i ? this.k : this.l);
            if (!this.i && (colorStateList2 = this.m) != null) {
                this.j.setTextColor(colorStateList2);
            }
            if (this.i && (colorStateList = this.n) != null) {
                this.j.setTextColor(colorStateList);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0090  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00f3  */
    /* JADX WARNING: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean Q() {
        /*
        // Method dump skipped, instructions count: 274
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.Q():boolean");
    }

    private void R() {
        if (this.v != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.b.getLayoutParams();
            int i2 = i();
            if (i2 != layoutParams.topMargin) {
                layoutParams.topMargin = i2;
                this.b.requestLayout();
            }
        }
    }

    private void T(boolean z2, boolean z3) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.d;
        boolean z4 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.d;
        boolean z5 = editText2 != null && editText2.hasFocus();
        boolean h2 = this.f.h();
        ColorStateList colorStateList2 = this.c0;
        if (colorStateList2 != null) {
            this.m0.u(colorStateList2);
            this.m0.A(this.c0);
        }
        if (!isEnabled) {
            this.m0.u(ColorStateList.valueOf(this.k0));
            this.m0.A(ColorStateList.valueOf(this.k0));
        } else if (h2) {
            this.m0.u(this.f.l());
        } else if (this.i && (textView = this.j) != null) {
            this.m0.u(textView.getTextColors());
        } else if (z5 && (colorStateList = this.d0) != null) {
            this.m0.u(colorStateList);
        }
        if (z4 || (isEnabled() && (z5 || h2))) {
            if (z3 || this.l0) {
                ValueAnimator valueAnimator = this.o0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.o0.cancel();
                }
                if (!z2 || !this.n0) {
                    this.m0.E(1.0f);
                } else {
                    e(1.0f);
                }
                this.l0 = false;
                if (j()) {
                    w();
                }
            }
        } else if (z3 || !this.l0) {
            ValueAnimator valueAnimator2 = this.o0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.o0.cancel();
            }
            if (!z2 || !this.n0) {
                this.m0.E(0.0f);
            } else {
                e(0.0f);
            }
            if (j() && ((g) this.r).U() && j()) {
                ((g) this.r).V(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.l0 = true;
        }
    }

    private void f() {
        g(this.P, this.S, this.R, this.U, this.T);
    }

    private void g(CheckableImageButton checkableImageButton, boolean z2, ColorStateList colorStateList, boolean z3, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z2 || z3)) {
            drawable = androidx.core.graphics.drawable.a.j(drawable).mutate();
            if (z2) {
                androidx.core.graphics.drawable.a.g(drawable, colorStateList);
            }
            if (z3) {
                androidx.core.graphics.drawable.a.h(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    private void h() {
        g(this.F, this.H, this.G, this.J, this.I);
    }

    private int i() {
        float i2;
        if (!this.o) {
            return 0;
        }
        int i3 = this.v;
        if (i3 == 0 || i3 == 1) {
            i2 = this.m0.i();
        } else if (i3 != 2) {
            return 0;
        } else {
            i2 = this.m0.i() / 2.0f;
        }
        return (int) i2;
    }

    private boolean j() {
        return this.o && !TextUtils.isEmpty(this.p) && (this.r instanceof g);
    }

    private n o() {
        n nVar = this.O.get(this.N);
        return nVar != null ? nVar : this.O.get(0);
    }

    private boolean s() {
        return this.N != 0;
    }

    private void v() {
        int i2 = this.v;
        boolean z2 = true;
        if (i2 == 0) {
            this.r = null;
            this.s = null;
        } else if (i2 == 1) {
            this.r = new my(this.t);
            this.s = new my();
        } else if (i2 == 2) {
            if (!this.o || (this.r instanceof g)) {
                this.r = new my(this.t);
            } else {
                this.r = new g(this.t);
            }
            this.s = null;
        } else {
            throw new IllegalArgumentException(ic.k(new StringBuilder(), this.v, " is illegal; only @BoxBackgroundMode constants are supported."));
        }
        EditText editText = this.d;
        if (editText == null || this.r == null || editText.getBackground() != null || this.v == 0) {
            z2 = false;
        }
        if (z2) {
            EditText editText2 = this.d;
            my myVar = this.r;
            int i3 = c3.g;
            editText2.setBackground(myVar);
        }
        U();
        if (this.v != 0) {
            R();
        }
    }

    private void w() {
        if (j()) {
            RectF rectF = this.E;
            this.m0.g(rectF);
            float f2 = rectF.left;
            float f3 = (float) this.u;
            rectF.left = f2 - f3;
            rectF.top -= f3;
            rectF.right += f3;
            rectF.bottom += f3;
            rectF.offset((float) (-getPaddingLeft()), 0.0f);
            g gVar = (g) this.r;
            Objects.requireNonNull(gVar);
            gVar.V(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
    }

    private static void x(ViewGroup viewGroup, boolean z2) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z2);
            if (childAt instanceof ViewGroup) {
                x((ViewGroup) childAt, z2);
            }
        }
    }

    public void A(CharSequence charSequence) {
        if (this.P.getContentDescription() != charSequence) {
            this.P.setContentDescription(charSequence);
        }
    }

    public void B(Drawable drawable) {
        this.P.setImageDrawable(drawable);
    }

    public void C(int i2) {
        int i3 = this.N;
        this.N = i2;
        F(i2 != 0);
        if (o().b(this.v)) {
            o().a();
            f();
            Iterator<f> it = this.Q.iterator();
            while (it.hasNext()) {
                it.next().a(this, i3);
            }
            return;
        }
        StringBuilder q2 = ic.q("The current box background mode ");
        q2.append(this.v);
        q2.append(" is not supported by the end icon mode ");
        q2.append(i2);
        throw new IllegalStateException(q2.toString());
    }

    public void D(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.P;
        View.OnLongClickListener onLongClickListener = this.b0;
        checkableImageButton.setOnClickListener(onClickListener);
        J(checkableImageButton, onLongClickListener);
    }

    public void E(View.OnLongClickListener onLongClickListener) {
        this.b0 = null;
        CheckableImageButton checkableImageButton = this.P;
        checkableImageButton.setOnLongClickListener(null);
        J(checkableImageButton, null);
    }

    public void F(boolean z2) {
        if (t() != z2) {
            this.P.setVisibility(z2 ? 0 : 4);
            Q();
        }
    }

    public void G(Drawable drawable) {
        this.a0.setImageDrawable(drawable);
        H(drawable != null && this.f.n());
    }

    public void I(CharSequence charSequence) {
        if (this.o) {
            if (!TextUtils.equals(charSequence, this.p)) {
                this.p = charSequence;
                this.m0.I(charSequence);
                if (!this.l0) {
                    w();
                }
            }
            sendAccessibilityEvent(2048);
        }
    }

    public void K(boolean z2) {
        int i2 = 0;
        if ((this.F.getVisibility() == 0) != z2) {
            CheckableImageButton checkableImageButton = this.F;
            if (!z2) {
                i2 = 8;
            }
            checkableImageButton.setVisibility(i2);
            Q();
        }
    }

    /* access modifiers changed from: package-private */
    public void L(TextView textView, int i2) {
        boolean z2 = true;
        try {
            androidx.core.widget.c.h(textView, i2);
            if (Build.VERSION.SDK_INT < 23 || textView.getTextColors().getDefaultColor() != -65281) {
                z2 = false;
            }
        } catch (Exception unused) {
        }
        if (z2) {
            androidx.core.widget.c.h(textView, R.style.hm);
            textView.setTextColor(androidx.core.content.a.b(getContext(), R.color.cz));
        }
    }

    /* access modifiers changed from: package-private */
    public void N(int i2) {
        boolean z2 = this.i;
        if (this.h == -1) {
            this.j.setText(String.valueOf(i2));
            this.j.setContentDescription(null);
            this.i = false;
        } else {
            TextView textView = this.j;
            int i3 = c3.g;
            if (textView.getAccessibilityLiveRegion() == 1) {
                this.j.setAccessibilityLiveRegion(0);
            }
            this.i = i2 > this.h;
            Context context = getContext();
            this.j.setContentDescription(context.getString(this.i ? R.string.at : R.string.as, Integer.valueOf(i2), Integer.valueOf(this.h)));
            if (z2 != this.i) {
                O();
                if (this.i) {
                    this.j.setAccessibilityLiveRegion(1);
                }
            }
            this.j.setText(getContext().getString(R.string.au, Integer.valueOf(i2), Integer.valueOf(this.h)));
        }
        if (this.d != null && z2 != this.i) {
            T(false, false);
            U();
            P();
        }
    }

    /* access modifiers changed from: package-private */
    public void P() {
        Drawable background;
        TextView textView;
        EditText editText = this.d;
        if (editText != null && this.v == 0 && (background = editText.getBackground()) != null) {
            if (o.a(background)) {
                background = background.mutate();
            }
            if (this.f.h()) {
                background.setColorFilter(androidx.appcompat.widget.e.e(this.f.k(), PorterDuff.Mode.SRC_IN));
            } else if (!this.i || (textView = this.j) == null) {
                androidx.core.graphics.drawable.a.a(background);
                this.d.refreshDrawableState();
            } else {
                background.setColorFilter(androidx.appcompat.widget.e.e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void S(boolean z2) {
        T(z2, false);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x011e  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x012e  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x014f  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x015d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void U() {
        /*
        // Method dump skipped, instructions count: 376
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.U():void");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & -113) | 16;
            this.b.addView(view, layoutParams2);
            this.b.setLayoutParams(layoutParams);
            R();
            EditText editText = (EditText) view;
            if (this.d == null) {
                if (this.N != 3 && !(editText instanceof TextInputEditText)) {
                    Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
                }
                this.d = editText;
                v();
                d dVar = new d(this);
                EditText editText2 = this.d;
                if (editText2 != null) {
                    c3.u(editText2, dVar);
                }
                this.m0.K(this.d.getTypeface());
                this.m0.C(this.d.getTextSize());
                int gravity = this.d.getGravity();
                this.m0.v((gravity & -113) | 48);
                this.m0.B(gravity);
                this.d.addTextChangedListener(new r(this));
                if (this.c0 == null) {
                    this.c0 = this.d.getHintTextColors();
                }
                if (this.o) {
                    if (TextUtils.isEmpty(this.p)) {
                        CharSequence hint = this.d.getHint();
                        this.e = hint;
                        I(hint);
                        this.d.setHint((CharSequence) null);
                    }
                    this.q = true;
                }
                if (this.j != null) {
                    N(this.d.getText().length());
                }
                P();
                this.f.e();
                this.F.bringToFront();
                this.c.bringToFront();
                this.a0.bringToFront();
                Iterator<e> it = this.M.iterator();
                while (it.hasNext()) {
                    it.next().a(this);
                }
                T(false, true);
                return;
            }
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        super.addView(view, i2, layoutParams);
    }

    public void c(e eVar) {
        this.M.add(eVar);
        if (this.d != null) {
            eVar.a(this);
        }
    }

    public void d(f fVar) {
        this.Q.add(fVar);
    }

    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        EditText editText;
        if (this.e == null || (editText = this.d) == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
            return;
        }
        boolean z2 = this.q;
        this.q = false;
        CharSequence hint = editText.getHint();
        this.d.setHint(this.e);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
        } finally {
            this.d.setHint(hint);
            this.q = z2;
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.view.View, android.view.ViewGroup
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.q0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.q0 = false;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.o) {
            this.m0.f(canvas);
        }
        my myVar = this.s;
        if (myVar != null) {
            Rect bounds = myVar.getBounds();
            bounds.top = bounds.bottom - this.x;
            this.s.draw(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        if (!this.p0) {
            boolean z2 = true;
            this.p0 = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            com.google.android.material.internal.a aVar = this.m0;
            boolean H2 = aVar != null ? aVar.H(drawableState) | false : false;
            int i2 = c3.g;
            if (!isLaidOut() || !isEnabled()) {
                z2 = false;
            }
            T(z2, false);
            P();
            U();
            if (H2) {
                invalidate();
            }
            this.p0 = false;
        }
    }

    /* access modifiers changed from: package-private */
    public void e(float f2) {
        if (this.m0.l() != f2) {
            if (this.o0 == null) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.o0 = valueAnimator;
                valueAnimator.setInterpolator(jx.b);
                this.o0.setDuration(167L);
                this.o0.addUpdateListener(new c());
            }
            this.o0.setFloatValues(this.m0.l(), f2);
            this.o0.start();
        }
    }

    public int getBaseline() {
        EditText editText = this.d;
        if (editText == null) {
            return super.getBaseline();
        }
        return getPaddingTop() + editText.getBaseline() + i();
    }

    /* access modifiers changed from: package-private */
    public my k() {
        int i2 = this.v;
        if (i2 == 1 || i2 == 2) {
            return this.r;
        }
        throw new IllegalStateException();
    }

    public int l() {
        return this.B;
    }

    public int m() {
        return this.v;
    }

    /* access modifiers changed from: package-private */
    public CharSequence n() {
        TextView textView;
        if (!this.g || !this.i || (textView = this.j) == null) {
            return null;
        }
        return textView.getContentDescription();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        super.onLayout(z2, i2, i3, i4, i5);
        EditText editText = this.d;
        if (editText != null) {
            Rect rect = this.C;
            com.google.android.material.internal.b.a(this, editText, rect);
            my myVar = this.s;
            if (myVar != null) {
                int i8 = rect.bottom;
                myVar.setBounds(rect.left, i8 - this.z, rect.right, i8);
            }
            if (this.o) {
                com.google.android.material.internal.a aVar = this.m0;
                EditText editText2 = this.d;
                if (editText2 != null) {
                    Rect rect2 = this.D;
                    rect2.bottom = rect.bottom;
                    int i9 = this.v;
                    if (i9 == 1) {
                        rect2.left = editText2.getCompoundPaddingLeft() + rect.left;
                        rect2.top = rect.top + this.w;
                        rect2.right = rect.right - this.d.getCompoundPaddingRight();
                    } else if (i9 != 2) {
                        rect2.left = editText2.getCompoundPaddingLeft() + rect.left;
                        rect2.top = getPaddingTop();
                        rect2.right = rect.right - this.d.getCompoundPaddingRight();
                    } else {
                        rect2.left = editText2.getPaddingLeft() + rect.left;
                        rect2.top = rect.top - i();
                        rect2.right = rect.right - this.d.getPaddingRight();
                    }
                    aVar.s(rect2);
                    com.google.android.material.internal.a aVar2 = this.m0;
                    if (this.d != null) {
                        Rect rect3 = this.D;
                        float k2 = aVar2.k();
                        rect3.left = this.d.getCompoundPaddingLeft() + rect.left;
                        if (this.v == 1 && this.d.getMinLines() <= 1) {
                            i6 = (int) (((float) rect.centerY()) - (k2 / 2.0f));
                        } else {
                            i6 = rect.top + this.d.getCompoundPaddingTop();
                        }
                        rect3.top = i6;
                        rect3.right = rect.right - this.d.getCompoundPaddingRight();
                        if (this.v == 1) {
                            i7 = (int) (((float) rect3.top) + k2);
                        } else {
                            i7 = rect.bottom - this.d.getCompoundPaddingBottom();
                        }
                        rect3.bottom = i7;
                        aVar2.y(rect3);
                        this.m0.p();
                        if (j() && !this.l0) {
                            w();
                            return;
                        }
                        return;
                    }
                    throw new IllegalStateException();
                }
                throw new IllegalStateException();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int max;
        super.onMeasure(i2, i3);
        boolean z2 = false;
        if (this.d != null && this.d.getMeasuredHeight() < (max = Math.max(this.P.getMeasuredHeight(), this.F.getMeasuredHeight()))) {
            this.d.setMinimumHeight(max);
            z2 = true;
        }
        boolean Q2 = Q();
        if (z2 || Q2) {
            this.d.post(new b());
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x003d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onRestoreInstanceState(android.os.Parcelable r4) {
        /*
            r3 = this;
            boolean r0 = r4 instanceof com.google.android.material.textfield.TextInputLayout.SavedState
            if (r0 != 0) goto L_0x0008
            super.onRestoreInstanceState(r4)
            return
        L_0x0008:
            com.google.android.material.textfield.TextInputLayout$SavedState r4 = (com.google.android.material.textfield.TextInputLayout.SavedState) r4
            android.os.Parcelable r0 = r4.a()
            super.onRestoreInstanceState(r0)
            java.lang.CharSequence r0 = r4.d
            com.google.android.material.textfield.o r1 = r3.f
            boolean r1 = r1.n()
            if (r1 != 0) goto L_0x0028
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L_0x0022
            goto L_0x0039
        L_0x0022:
            r1 = 1
            com.google.android.material.textfield.o r2 = r3.f
            r2.q(r1)
        L_0x0028:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L_0x0034
            com.google.android.material.textfield.o r1 = r3.f
            r1.x(r0)
            goto L_0x0039
        L_0x0034:
            com.google.android.material.textfield.o r0 = r3.f
            r0.m()
        L_0x0039:
            boolean r4 = r4.e
            if (r4 == 0) goto L_0x0047
            com.google.android.material.internal.CheckableImageButton r4 = r3.P
            com.google.android.material.textfield.TextInputLayout$a r0 = new com.google.android.material.textfield.TextInputLayout$a
            r0.<init>()
            r4.post(r0)
        L_0x0047:
            r3.requestLayout()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.onRestoreInstanceState(android.os.Parcelable):void");
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f.h()) {
            savedState.d = this.f.n() ? this.f.j() : null;
        }
        savedState.e = s() && this.P.isChecked();
        return savedState;
    }

    /* access modifiers changed from: package-private */
    public CheckableImageButton p() {
        return this.P;
    }

    public CharSequence q() {
        if (this.f.n()) {
            return this.f.j();
        }
        return null;
    }

    public CharSequence r() {
        if (this.o) {
            return this.p;
        }
        return null;
    }

    public void setEnabled(boolean z2) {
        x(this, z2);
        super.setEnabled(z2);
    }

    public boolean t() {
        return this.c.getVisibility() == 0 && this.P.getVisibility() == 0;
    }

    /* access modifiers changed from: package-private */
    public boolean u() {
        return this.q;
    }

    public void y(boolean z2) {
        this.P.setActivated(z2);
    }

    public void z(boolean z2) {
        this.P.e(z2);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i2) {
        super(i.e(context, attributeSet, i2, R.style.ph), attributeSet, i2);
        boolean z2;
        PorterDuff.Mode d2;
        ColorStateList b2;
        PorterDuff.Mode d3;
        ColorStateList b3;
        ColorStateList c2;
        ColorStateList c3;
        ColorStateList c4;
        PorterDuff.Mode d4;
        ColorStateList b4;
        CharSequence p2;
        Drawable drawable;
        o oVar = new o(this);
        this.f = oVar;
        this.C = new Rect();
        this.D = new Rect();
        this.E = new RectF();
        this.M = new LinkedHashSet<>();
        this.N = 0;
        SparseArray<n> sparseArray = new SparseArray<>();
        this.O = sparseArray;
        this.Q = new LinkedHashSet<>();
        com.google.android.material.internal.a aVar = new com.google.android.material.internal.a(this);
        this.m0 = aVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.c = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 8388629));
        frameLayout.addView(frameLayout2);
        TimeInterpolator timeInterpolator = jx.a;
        aVar.J(timeInterpolator);
        aVar.G(timeInterpolator);
        aVar.v(8388659);
        i0 g2 = i.g(context2, attributeSet, R$styleable.J, i2, R.style.ph, 16, 14, 28, 32, 36);
        this.o = g2.a(35, true);
        I(g2.p(1));
        this.n0 = g2.a(34, true);
        this.t = qy.c(context2, attributeSet, i2, R.style.ph, new gy((float) 0)).m();
        this.u = context2.getResources().getDimensionPixelOffset(R.dimen.v7);
        this.w = g2.e(4, 0);
        int f2 = g2.f(10, context2.getResources().getDimensionPixelSize(R.dimen.v8));
        this.y = f2;
        this.z = g2.f(11, context2.getResources().getDimensionPixelSize(R.dimen.v9));
        this.x = f2;
        float d5 = g2.d(8, -1.0f);
        float d6 = g2.d(7, -1.0f);
        float d7 = g2.d(5, -1.0f);
        float d8 = g2.d(6, -1.0f);
        qy qyVar = this.t;
        Objects.requireNonNull(qyVar);
        qy.b bVar = new qy.b(qyVar);
        if (d5 >= 0.0f) {
            bVar.x(d5);
        }
        if (d6 >= 0.0f) {
            bVar.A(d6);
        }
        if (d7 >= 0.0f) {
            bVar.t(d7);
        }
        if (d8 >= 0.0f) {
            bVar.q(d8);
        }
        this.t = bVar.m();
        ColorStateList b5 = yx.b(context2, g2, 2);
        if (b5 != null) {
            int defaultColor = b5.getDefaultColor();
            this.h0 = defaultColor;
            this.B = defaultColor;
            if (b5.isStateful()) {
                this.i0 = b5.getColorForState(new int[]{-16842910}, -1);
                this.j0 = b5.getColorForState(new int[]{16843623}, -1);
            } else {
                ColorStateList a2 = defpackage.d.a(context2, R.color.fo);
                this.i0 = a2.getColorForState(new int[]{-16842910}, -1);
                this.j0 = a2.getColorForState(new int[]{16843623}, -1);
            }
        } else {
            this.B = 0;
            this.h0 = 0;
            this.i0 = 0;
            this.j0 = 0;
        }
        if (g2.r(0)) {
            ColorStateList c5 = g2.c(0);
            this.d0 = c5;
            this.c0 = c5;
        }
        ColorStateList b6 = yx.b(context2, g2, 9);
        if (b6 == null || !b6.isStateful()) {
            this.g0 = g2.b(9, 0);
            this.e0 = androidx.core.content.a.b(context2, R.color.g6);
            this.k0 = androidx.core.content.a.b(context2, R.color.g7);
            this.f0 = androidx.core.content.a.b(context2, R.color.g_);
        } else {
            this.e0 = b6.getDefaultColor();
            this.k0 = b6.getColorForState(new int[]{-16842910}, -1);
            this.f0 = b6.getColorForState(new int[]{16843623}, -1);
            this.g0 = b6.getColorForState(new int[]{16842908}, -1);
        }
        if (g2.n(36, -1) != -1) {
            aVar.t(g2.n(36, 0));
            this.d0 = aVar.h();
            if (this.d != null) {
                T(false, false);
                R();
            }
        }
        int n2 = g2.n(28, 0);
        boolean a3 = g2.a(24, false);
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.b1, (ViewGroup) frameLayout, false);
        this.a0 = checkableImageButton;
        frameLayout.addView(checkableImageButton);
        checkableImageButton.setVisibility(8);
        if (g2.r(25)) {
            G(g2.g(25));
        }
        if (g2.r(26)) {
            ColorStateList b7 = yx.b(context2, g2, 26);
            Drawable drawable2 = checkableImageButton.getDrawable();
            if (drawable2 != null) {
                drawable = androidx.core.graphics.drawable.a.j(drawable2).mutate();
                androidx.core.graphics.drawable.a.g(drawable, b7);
            } else {
                drawable = drawable2;
            }
            if (checkableImageButton.getDrawable() != drawable) {
                checkableImageButton.setImageDrawable(drawable);
            }
        }
        if (g2.r(27)) {
            PorterDuff.Mode d9 = j.d(g2.k(27, -1), null);
            Drawable drawable3 = checkableImageButton.getDrawable();
            if (drawable3 != null) {
                drawable3 = androidx.core.graphics.drawable.a.j(drawable3).mutate();
                androidx.core.graphics.drawable.a.h(drawable3, d9);
            }
            if (checkableImageButton.getDrawable() != drawable3) {
                checkableImageButton.setImageDrawable(drawable3);
            }
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.bu));
        int i3 = c3.g;
        checkableImageButton.setImportantForAccessibility(2);
        checkableImageButton.setClickable(false);
        checkableImageButton.k(false);
        checkableImageButton.setFocusable(false);
        int n3 = g2.n(32, 0);
        boolean a4 = g2.a(31, false);
        CharSequence p3 = g2.p(30);
        boolean a5 = g2.a(12, false);
        int k2 = g2.k(13, -1);
        if (this.h != k2) {
            if (k2 > 0) {
                this.h = k2;
            } else {
                this.h = -1;
            }
            if (this.g) {
                M();
            }
        }
        this.l = g2.n(16, 0);
        this.k = g2.n(14, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.b2, (ViewGroup) frameLayout, false);
        this.F = checkableImageButton2;
        frameLayout.addView(checkableImageButton2);
        checkableImageButton2.setVisibility(8);
        View.OnLongClickListener onLongClickListener = this.L;
        checkableImageButton2.setOnClickListener(null);
        J(checkableImageButton2, onLongClickListener);
        this.L = null;
        checkableImageButton2.setOnLongClickListener(null);
        J(checkableImageButton2, null);
        if (g2.r(47)) {
            Drawable g3 = g2.g(47);
            checkableImageButton2.setImageDrawable(g3);
            if (g3 != null) {
                K(true);
                h();
            } else {
                K(false);
                View.OnLongClickListener onLongClickListener2 = this.L;
                checkableImageButton2.setOnClickListener(null);
                J(checkableImageButton2, onLongClickListener2);
                this.L = null;
                checkableImageButton2.setOnLongClickListener(null);
                J(checkableImageButton2, null);
                if (checkableImageButton2.getContentDescription() != null) {
                    checkableImageButton2.setContentDescription(null);
                }
            }
            if (g2.r(46) && checkableImageButton2.getContentDescription() != (p2 = g2.p(46))) {
                checkableImageButton2.setContentDescription(p2);
            }
            z2 = true;
            checkableImageButton2.e(g2.a(45, true));
        } else {
            z2 = true;
        }
        if (g2.r(48) && this.G != (b4 = yx.b(context2, g2, 48))) {
            this.G = b4;
            this.H = z2;
            h();
        }
        if (g2.r(49) && this.I != (d4 = j.d(g2.k(49, -1), null))) {
            this.I = d4;
            this.J = true;
            h();
        }
        oVar.u(a4);
        if (!TextUtils.isEmpty(p3)) {
            if (!oVar.o()) {
                oVar.u(true);
            }
            oVar.y(p3);
        } else if (oVar.o()) {
            oVar.u(false);
        }
        oVar.t(n3);
        oVar.q(a3);
        oVar.r(n2);
        int i4 = this.l;
        if (i4 != i4) {
            this.l = i4;
            O();
        }
        int i5 = this.k;
        if (i5 != i5) {
            this.k = i5;
            O();
        }
        if (g2.r(29)) {
            oVar.s(g2.c(29));
        }
        if (g2.r(33)) {
            oVar.v(g2.c(33));
        }
        if (g2.r(37) && this.d0 != (c4 = g2.c(37))) {
            if (this.c0 == null) {
                aVar.u(c4);
            }
            this.d0 = c4;
            if (this.d != null) {
                T(false, false);
            }
        }
        if (g2.r(17) && this.m != (c3 = g2.c(17))) {
            this.m = c3;
            O();
        }
        if (g2.r(15) && this.n != (c2 = g2.c(15))) {
            this.n = c2;
            O();
        }
        if (this.g != a5) {
            if (a5) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.j = appCompatTextView;
                appCompatTextView.setId(R.id.s6);
                this.j.setMaxLines(1);
                oVar.d(this.j, 2);
                O();
                M();
            } else {
                oVar.p(this.j, 2);
                this.j = null;
            }
            this.g = a5;
        }
        int k3 = g2.k(3, 0);
        if (k3 != this.v) {
            this.v = k3;
            if (this.d != null) {
                v();
            }
        }
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.b1, (ViewGroup) frameLayout2, false);
        this.P = checkableImageButton3;
        frameLayout2.addView(checkableImageButton3);
        checkableImageButton3.setVisibility(8);
        sparseArray.append(-1, new f(this));
        sparseArray.append(0, new p(this));
        sparseArray.append(1, new q(this));
        sparseArray.append(2, new a(this));
        sparseArray.append(3, new h(this));
        if (g2.r(21)) {
            C(g2.k(21, 0));
            if (g2.r(20)) {
                checkableImageButton3.setImageDrawable(g2.g(20));
            }
            if (g2.r(19)) {
                A(g2.p(19));
            }
            checkableImageButton3.e(g2.a(18, true));
        } else if (g2.r(40)) {
            C(g2.a(40, false) ? 1 : 0);
            checkableImageButton3.setImageDrawable(g2.g(39));
            A(g2.p(38));
            if (g2.r(41) && this.R != (b3 = yx.b(context2, g2, 41))) {
                this.R = b3;
                this.S = true;
                f();
            }
            if (g2.r(42) && this.T != (d3 = j.d(g2.k(42, -1), null))) {
                this.T = d3;
                this.U = true;
                f();
            }
        }
        if (!g2.r(40)) {
            if (g2.r(22) && this.R != (b2 = yx.b(context2, g2, 22))) {
                this.R = b2;
                this.S = true;
                f();
            }
            if (g2.r(23) && this.T != (d2 = j.d(g2.k(23, -1), null))) {
                this.T = d2;
                this.U = true;
                f();
            }
        }
        g2.v();
        setImportantForAccessibility(2);
    }
}
