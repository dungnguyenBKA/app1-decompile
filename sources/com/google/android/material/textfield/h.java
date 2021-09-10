package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.qy;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

class h extends n {
    private static final boolean o = (Build.VERSION.SDK_INT >= 21);
    private final TextWatcher d = new a();
    private final TextInputLayout.d e = new b(this.a);
    private final TextInputLayout.e f = new c();
    private boolean g = false;
    private boolean h = false;
    private long i = Long.MAX_VALUE;
    private StateListDrawable j;
    private my k;
    private AccessibilityManager l;
    private ValueAnimator m;
    private ValueAnimator n;

    class a implements TextWatcher {

        /* renamed from: com.google.android.material.textfield.h$a$a  reason: collision with other inner class name */
        class RunnableC0082a implements Runnable {
            final /* synthetic */ AutoCompleteTextView b;

            RunnableC0082a(AutoCompleteTextView autoCompleteTextView) {
                this.b = autoCompleteTextView;
            }

            public void run() {
                boolean isPopupShowing = this.b.isPopupShowing();
                h.e(h.this, isPopupShowing);
                h.this.g = isPopupShowing;
            }
        }

        a() {
        }

        public void afterTextChanged(Editable editable) {
            h hVar = h.this;
            AutoCompleteTextView d = h.d(hVar, hVar.a.d);
            d.post(new RunnableC0082a(d));
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class b extends TextInputLayout.d {
        b(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // defpackage.n2, com.google.android.material.textfield.TextInputLayout.d
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            n3Var.R(Spinner.class.getName());
            if (n3Var.C()) {
                n3Var.c0(null);
            }
        }

        @Override // defpackage.n2
        public void f(View view, AccessibilityEvent accessibilityEvent) {
            super.f(view, accessibilityEvent);
            h hVar = h.this;
            AutoCompleteTextView d = h.d(hVar, hVar.a.d);
            if (accessibilityEvent.getEventType() == 1 && h.this.l.isTouchExplorationEnabled()) {
                h.l(h.this, d);
            }
        }
    }

    class c implements TextInputLayout.e {
        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e
        public void a(TextInputLayout textInputLayout) {
            AutoCompleteTextView d = h.d(h.this, textInputLayout.d);
            h.m(h.this, d);
            h.n(h.this, d);
            h.o(h.this, d);
            d.setThreshold(0);
            d.removeTextChangedListener(h.this.d);
            d.addTextChangedListener(h.this.d);
            textInputLayout.G(null);
            TextInputLayout.d dVar = h.this.e;
            EditText editText = textInputLayout.d;
            if (editText != null) {
                c3.u(editText, dVar);
            }
            textInputLayout.F(true);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        public void onClick(View view) {
            h hVar = h.this;
            h.l(hVar, (AutoCompleteTextView) hVar.a.d);
        }
    }

    h(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    static AutoCompleteTextView d(h hVar, EditText editText) {
        Objects.requireNonNull(hVar);
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    static void e(h hVar, boolean z) {
        if (hVar.h != z) {
            hVar.h = z;
            hVar.n.cancel();
            hVar.m.start();
        }
    }

    static void l(h hVar, AutoCompleteTextView autoCompleteTextView) {
        Objects.requireNonNull(hVar);
        if (autoCompleteTextView != null) {
            if (hVar.s()) {
                hVar.g = false;
            }
            if (!hVar.g) {
                if (o) {
                    boolean z = hVar.h;
                    boolean z2 = !z;
                    if (z != z2) {
                        hVar.h = z2;
                        hVar.n.cancel();
                        hVar.m.start();
                    }
                } else {
                    hVar.h = !hVar.h;
                    hVar.c.toggle();
                }
                if (hVar.h) {
                    autoCompleteTextView.requestFocus();
                    autoCompleteTextView.showDropDown();
                    return;
                }
                autoCompleteTextView.dismissDropDown();
                return;
            }
            hVar.g = false;
        }
    }

    static void m(h hVar, AutoCompleteTextView autoCompleteTextView) {
        Objects.requireNonNull(hVar);
        if (o) {
            int m2 = hVar.a.m();
            if (m2 == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(hVar.k);
            } else if (m2 == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(hVar.j);
            }
        }
    }

    static void n(h hVar, AutoCompleteTextView autoCompleteTextView) {
        LayerDrawable layerDrawable;
        Objects.requireNonNull(hVar);
        if (autoCompleteTextView.getKeyListener() == null) {
            int m2 = hVar.a.m();
            my k2 = hVar.a.k();
            int H = androidx.core.app.b.H(autoCompleteTextView, R.attr.e2);
            int[][] iArr = {new int[]{16842919}, new int[0]};
            if (m2 == 2) {
                int H2 = androidx.core.app.b.H(autoCompleteTextView, R.attr.eh);
                my myVar = new my(k2.v());
                int g0 = androidx.core.app.b.g0(H, H2, 0.1f);
                myVar.F(new ColorStateList(iArr, new int[]{g0, 0}));
                if (o) {
                    myVar.setTint(H2);
                    ColorStateList colorStateList = new ColorStateList(iArr, new int[]{g0, H2});
                    my myVar2 = new my(k2.v());
                    myVar2.setTint(-1);
                    layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, myVar, myVar2), k2});
                } else {
                    layerDrawable = new LayerDrawable(new Drawable[]{myVar, k2});
                }
                int i2 = c3.g;
                autoCompleteTextView.setBackground(layerDrawable);
            } else if (m2 == 1) {
                int l2 = hVar.a.l();
                int[] iArr2 = {androidx.core.app.b.g0(H, l2, 0.1f), l2};
                if (o) {
                    RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(iArr, iArr2), k2, k2);
                    int i3 = c3.g;
                    autoCompleteTextView.setBackground(rippleDrawable);
                    return;
                }
                my myVar3 = new my(k2.v());
                myVar3.F(new ColorStateList(iArr, iArr2));
                LayerDrawable layerDrawable2 = new LayerDrawable(new Drawable[]{k2, myVar3});
                int i4 = c3.g;
                int paddingStart = autoCompleteTextView.getPaddingStart();
                int paddingTop = autoCompleteTextView.getPaddingTop();
                int paddingEnd = autoCompleteTextView.getPaddingEnd();
                int paddingBottom = autoCompleteTextView.getPaddingBottom();
                autoCompleteTextView.setBackground(layerDrawable2);
                autoCompleteTextView.setPaddingRelative(paddingStart, paddingTop, paddingEnd, paddingBottom);
            }
        }
    }

    static void o(h hVar, AutoCompleteTextView autoCompleteTextView) {
        Objects.requireNonNull(hVar);
        autoCompleteTextView.setOnTouchListener(new i(hVar, autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(new j(hVar));
        if (o) {
            autoCompleteTextView.setOnDismissListener(new k(hVar));
        }
    }

    private my r(float f2, float f3, float f4, int i2) {
        qy.b bVar = new qy.b();
        bVar.x(f2);
        bVar.A(f2);
        bVar.q(f3);
        bVar.t(f3);
        qy m2 = bVar.m();
        my j2 = my.j(this.b, f4);
        j2.e(m2);
        j2.H(0, i2, 0, i2);
        return j2;
    }

    /* access modifiers changed from: private */
    public boolean s() {
        long currentTimeMillis = System.currentTimeMillis() - this.i;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.n
    public void a() {
        float dimensionPixelOffset = (float) this.b.getResources().getDimensionPixelOffset(R.dimen.uz);
        float dimensionPixelOffset2 = (float) this.b.getResources().getDimensionPixelOffset(R.dimen.tu);
        int dimensionPixelOffset3 = this.b.getResources().getDimensionPixelOffset(R.dimen.tw);
        my r = r(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        my r2 = r(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.k = r;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.j = stateListDrawable;
        stateListDrawable.addState(new int[]{16842922}, r);
        this.j.addState(new int[0], r2);
        this.a.B(defpackage.d.b(this.b, o ? R.drawable.jq : R.drawable.jr));
        TextInputLayout textInputLayout = this.a;
        textInputLayout.A(textInputLayout.getResources().getText(R.string.bx));
        this.a.D(new d());
        this.a.c(this.f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = jx.a;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration((long) 67);
        ofFloat.addUpdateListener(new m(this));
        this.n = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration((long) 50);
        ofFloat2.addUpdateListener(new m(this));
        this.m = ofFloat2;
        ofFloat2.addListener(new l(this));
        CheckableImageButton checkableImageButton = this.c;
        int i2 = c3.g;
        checkableImageButton.setImportantForAccessibility(2);
        this.l = (AccessibilityManager) this.b.getSystemService("accessibility");
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.n
    public boolean b(int i2) {
        return i2 != 0;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.n
    public boolean c() {
        return true;
    }
}
