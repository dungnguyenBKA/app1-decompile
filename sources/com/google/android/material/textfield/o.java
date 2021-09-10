package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.b;
import androidx.core.widget.c;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public final class o {
    private final Context a;
    private final TextInputLayout b;
    private LinearLayout c;
    private int d;
    private FrameLayout e;
    private int f;
    private Animator g;
    private final float h;
    private int i;
    private int j;
    private CharSequence k;
    private boolean l;
    private TextView m;
    private int n;
    private ColorStateList o;
    private CharSequence p;
    private boolean q;
    private TextView r;
    private int s;
    private ColorStateList t;

    /* access modifiers changed from: package-private */
    public class a extends AnimatorListenerAdapter {
        final /* synthetic */ int a;
        final /* synthetic */ TextView b;
        final /* synthetic */ int c;
        final /* synthetic */ TextView d;

        a(int i, TextView textView, int i2, TextView textView2) {
            this.a = i;
            this.b = textView;
            this.c = i2;
            this.d = textView2;
        }

        public void onAnimationEnd(Animator animator) {
            o.this.i = this.a;
            o.this.g = null;
            TextView textView = this.b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.c == 1 && o.this.m != null) {
                    o.this.m.setText((CharSequence) null);
                }
                TextView textView2 = this.d;
                if (textView2 != null) {
                    textView2.setTranslationY(0.0f);
                    this.d.setAlpha(1.0f);
                }
            }
        }

        public void onAnimationStart(Animator animator) {
            TextView textView = this.d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public o(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.a = context;
        this.b = textInputLayout;
        this.h = (float) context.getResources().getDimensionPixelSize(R.dimen.ns);
    }

    private void g(List<Animator> list, boolean z, TextView textView, int i2, int i3, int i4) {
        if (textView != null && z) {
            if (i2 == i4 || i2 == i3) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, i4 == i2 ? 1.0f : 0.0f);
                ofFloat.setDuration(167L);
                ofFloat.setInterpolator(jx.a);
                list.add(ofFloat);
                if (i4 == i2) {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.h, 0.0f);
                    ofFloat2.setDuration(217L);
                    ofFloat2.setInterpolator(jx.d);
                    list.add(ofFloat2);
                }
            }
        }
    }

    private TextView i(int i2) {
        if (i2 == 1) {
            return this.m;
        }
        if (i2 != 2) {
            return null;
        }
        return this.r;
    }

    private boolean w(TextView textView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.b;
        int i2 = c3.g;
        return textInputLayout.isLaidOut() && this.b.isEnabled() && (this.j != this.i || textView == null || !TextUtils.equals(textView.getText(), charSequence));
    }

    private void z(int i2, int i3, boolean z) {
        TextView i4;
        TextView i5;
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.g = animatorSet;
            ArrayList arrayList = new ArrayList();
            g(arrayList, this.q, this.r, 2, i2, i3);
            g(arrayList, this.l, this.m, 1, i2, i3);
            b.p0(animatorSet, arrayList);
            animatorSet.addListener(new a(i3, i(i2), i2, i(i3)));
            animatorSet.start();
        } else if (i2 != i3) {
            if (!(i3 == 0 || (i5 = i(i3)) == null)) {
                i5.setVisibility(0);
                i5.setAlpha(1.0f);
            }
            if (!(i2 == 0 || (i4 = i(i2)) == null)) {
                i4.setVisibility(4);
                if (i2 == 1) {
                    i4.setText((CharSequence) null);
                }
            }
            this.i = i3;
        }
        this.b.P();
        this.b.S(z);
        this.b.U();
    }

    /* access modifiers changed from: package-private */
    public void d(TextView textView, int i2) {
        if (this.c == null && this.e == null) {
            LinearLayout linearLayout = new LinearLayout(this.a);
            this.c = linearLayout;
            linearLayout.setOrientation(0);
            this.b.addView(this.c, -1, -2);
            FrameLayout frameLayout = new FrameLayout(this.a);
            this.e = frameLayout;
            this.c.addView(frameLayout, -1, new FrameLayout.LayoutParams(-2, -2));
            this.c.addView(new Space(this.a), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.b.d != null) {
                e();
            }
        }
        if (i2 == 0 || i2 == 1) {
            this.e.setVisibility(0);
            this.e.addView(textView);
            this.f++;
        } else {
            this.c.addView(textView, i2);
        }
        this.c.setVisibility(0);
        this.d++;
    }

    /* access modifiers changed from: package-private */
    public void e() {
        LinearLayout linearLayout = this.c;
        if ((linearLayout == null || this.b.d == null) ? false : true) {
            EditText editText = this.b.d;
            int i2 = c3.g;
            linearLayout.setPaddingRelative(editText.getPaddingStart(), 0, this.b.d.getPaddingEnd(), 0);
        }
    }

    /* access modifiers changed from: package-private */
    public void f() {
        Animator animator = this.g;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean h() {
        if (this.j != 1 || this.m == null || TextUtils.isEmpty(this.k)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public CharSequence j() {
        return this.k;
    }

    /* access modifiers changed from: package-private */
    public int k() {
        TextView textView = this.m;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public ColorStateList l() {
        TextView textView = this.m;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void m() {
        this.k = null;
        f();
        if (this.i == 1) {
            if (!this.q || TextUtils.isEmpty(this.p)) {
                this.j = 0;
            } else {
                this.j = 2;
            }
        }
        z(this.i, this.j, w(this.m, null));
    }

    /* access modifiers changed from: package-private */
    public boolean n() {
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public boolean o() {
        return this.q;
    }

    /* access modifiers changed from: package-private */
    public void p(TextView textView, int i2) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.c;
        if (linearLayout != null) {
            if (!(i2 == 0 || i2 == 1) || (frameLayout = this.e) == null) {
                linearLayout.removeView(textView);
            } else {
                int i3 = this.f - 1;
                this.f = i3;
                if (i3 == 0) {
                    frameLayout.setVisibility(8);
                }
                this.e.removeView(textView);
            }
            int i4 = this.d - 1;
            this.d = i4;
            LinearLayout linearLayout2 = this.c;
            if (i4 == 0) {
                linearLayout2.setVisibility(8);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void q(boolean z) {
        if (this.l != z) {
            f();
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(this.a, null);
                this.m = appCompatTextView;
                appCompatTextView.setId(R.id.s7);
                int i2 = this.n;
                this.n = i2;
                TextView textView = this.m;
                if (textView != null) {
                    this.b.L(textView, i2);
                }
                ColorStateList colorStateList = this.o;
                this.o = colorStateList;
                TextView textView2 = this.m;
                if (!(textView2 == null || colorStateList == null)) {
                    textView2.setTextColor(colorStateList);
                }
                this.m.setVisibility(4);
                TextView textView3 = this.m;
                int i3 = c3.g;
                textView3.setAccessibilityLiveRegion(1);
                d(this.m, 0);
            } else {
                m();
                p(this.m, 0);
                this.m = null;
                this.b.P();
                this.b.U();
            }
            this.l = z;
        }
    }

    /* access modifiers changed from: package-private */
    public void r(int i2) {
        this.n = i2;
        TextView textView = this.m;
        if (textView != null) {
            this.b.L(textView, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void s(ColorStateList colorStateList) {
        this.o = colorStateList;
        TextView textView = this.m;
        if (textView != null && colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* access modifiers changed from: package-private */
    public void t(int i2) {
        this.s = i2;
        TextView textView = this.r;
        if (textView != null) {
            c.h(textView, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void u(boolean z) {
        if (this.q != z) {
            f();
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(this.a, null);
                this.r = appCompatTextView;
                appCompatTextView.setId(R.id.s8);
                this.r.setVisibility(4);
                TextView textView = this.r;
                int i2 = c3.g;
                textView.setAccessibilityLiveRegion(1);
                int i3 = this.s;
                this.s = i3;
                TextView textView2 = this.r;
                if (textView2 != null) {
                    c.h(textView2, i3);
                }
                ColorStateList colorStateList = this.t;
                this.t = colorStateList;
                TextView textView3 = this.r;
                if (!(textView3 == null || colorStateList == null)) {
                    textView3.setTextColor(colorStateList);
                }
                d(this.r, 1);
            } else {
                f();
                int i4 = this.i;
                if (i4 == 2) {
                    this.j = 0;
                }
                z(i4, this.j, w(this.r, null));
                p(this.r, 1);
                this.r = null;
                this.b.P();
                this.b.U();
            }
            this.q = z;
        }
    }

    /* access modifiers changed from: package-private */
    public void v(ColorStateList colorStateList) {
        this.t = colorStateList;
        TextView textView = this.r;
        if (textView != null && colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* access modifiers changed from: package-private */
    public void x(CharSequence charSequence) {
        f();
        this.k = charSequence;
        this.m.setText(charSequence);
        int i2 = this.i;
        if (i2 != 1) {
            this.j = 1;
        }
        z(i2, this.j, w(this.m, charSequence));
    }

    /* access modifiers changed from: package-private */
    public void y(CharSequence charSequence) {
        f();
        this.p = charSequence;
        this.r.setText(charSequence);
        int i2 = this.i;
        if (i2 != 2) {
            this.j = 2;
        }
        z(i2, this.j, w(this.r, charSequence));
    }
}
