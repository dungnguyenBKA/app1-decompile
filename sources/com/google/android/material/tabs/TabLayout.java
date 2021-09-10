package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.l0;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.i;
import com.google.android.material.internal.j;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import org.apache.http.HttpStatus;
import photoeditor.cutout.backgrounderaser.R;

@ViewPager.c
public class TabLayout extends HorizontalScrollView {
    private static final k2<d> O = new m2(16);
    int A;
    boolean B;
    boolean C;
    boolean D;
    private final ArrayList<b> E;
    private b F;
    private ValueAnimator G;
    ViewPager H;
    private androidx.viewpager.widget.a I;
    private DataSetObserver J;
    private e K;
    private a L;
    private boolean M;
    private final k2<f> N;
    private final ArrayList<d> b;
    private d c;
    private final RectF d;
    private final c e;
    int f;
    int g;
    int h;
    int i;
    int j;
    ColorStateList k;
    ColorStateList l;
    ColorStateList m;
    Drawable n;
    PorterDuff.Mode o;
    float p;
    float q;
    final int r;
    int s;
    private final int t;
    private final int u;
    private final int v;
    private int w;
    int x;
    int y;
    int z;

    /* access modifiers changed from: private */
    public class a implements ViewPager.f {
        a(TabLayout tabLayout) {
        }
    }

    @Deprecated
    public interface b<T extends d> {
        void a(T t);

        void b(T t);

        void c(T t);
    }

    /* access modifiers changed from: private */
    public class c extends LinearLayout {
        private int b;
        private final Paint c;
        private final GradientDrawable d;
        int e = -1;
        float f;
        private int g = -1;
        private int h = -1;
        private int i = -1;
        private ValueAnimator j;

        /* access modifiers changed from: package-private */
        public class a implements ValueAnimator.AnimatorUpdateListener {
            final /* synthetic */ int a;
            final /* synthetic */ int b;
            final /* synthetic */ int c;
            final /* synthetic */ int d;

            a(int i, int i2, int i3, int i4) {
                this.a = i;
                this.b = i2;
                this.c = i3;
                this.d = i4;
            }

            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                c cVar = c.this;
                int i = this.a;
                int i2 = this.b;
                TimeInterpolator timeInterpolator = jx.a;
                int round = Math.round(((float) (i2 - i)) * animatedFraction) + i;
                int i3 = this.c;
                cVar.c(round, Math.round(animatedFraction * ((float) (this.d - i3))) + i3);
            }
        }

        /* access modifiers changed from: package-private */
        public class b extends AnimatorListenerAdapter {
            final /* synthetic */ int a;

            b(int i) {
                this.a = i;
            }

            public void onAnimationEnd(Animator animator) {
                c cVar = c.this;
                cVar.e = this.a;
                cVar.f = 0.0f;
            }
        }

        c(Context context) {
            super(context);
            setWillNotDraw(false);
            this.c = new Paint();
            this.d = new GradientDrawable();
        }

        private void b(f fVar, RectF rectF) {
            int a2 = f.a(fVar);
            int b2 = (int) j.b(getContext(), 24);
            if (a2 < b2) {
                a2 = b2;
            }
            int right = (fVar.getRight() + fVar.getLeft()) / 2;
            int i2 = a2 / 2;
            rectF.set((float) (right - i2), 0.0f, (float) (right + i2), 0.0f);
        }

        private void g() {
            int i2;
            int i3;
            View childAt = getChildAt(this.e);
            if (childAt == null || childAt.getWidth() <= 0) {
                i3 = -1;
                i2 = -1;
            } else {
                i3 = childAt.getLeft();
                i2 = childAt.getRight();
                TabLayout tabLayout = TabLayout.this;
                if (!tabLayout.C && (childAt instanceof f)) {
                    b((f) childAt, tabLayout.d);
                    i3 = (int) TabLayout.this.d.left;
                    i2 = (int) TabLayout.this.d.right;
                }
                if (this.f > 0.0f && this.e < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.e + 1);
                    int left = childAt2.getLeft();
                    int right = childAt2.getRight();
                    TabLayout tabLayout2 = TabLayout.this;
                    if (!tabLayout2.C && (childAt2 instanceof f)) {
                        b((f) childAt2, tabLayout2.d);
                        left = (int) TabLayout.this.d.left;
                        right = (int) TabLayout.this.d.right;
                    }
                    float f2 = this.f;
                    i3 = (int) (((1.0f - f2) * ((float) i3)) + (((float) left) * f2));
                    i2 = (int) (((1.0f - f2) * ((float) i2)) + (((float) right) * f2));
                }
            }
            if (i3 != this.h || i2 != this.i) {
                this.h = i3;
                this.i = i2;
                int i4 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, int i3) {
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.j.cancel();
            }
            View childAt = getChildAt(i2);
            if (childAt == null) {
                g();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            TabLayout tabLayout = TabLayout.this;
            if (!tabLayout.C && (childAt instanceof f)) {
                b((f) childAt, tabLayout.d);
                left = (int) TabLayout.this.d.left;
                right = (int) TabLayout.this.d.right;
            }
            int i4 = this.h;
            int i5 = this.i;
            if (i4 != left || i5 != right) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                this.j = valueAnimator2;
                valueAnimator2.setInterpolator(jx.b);
                valueAnimator2.setDuration((long) i3);
                valueAnimator2.setFloatValues(0.0f, 1.0f);
                valueAnimator2.addUpdateListener(new a(i4, left, i5, right));
                valueAnimator2.addListener(new b(i2));
                valueAnimator2.start();
            }
        }

        /* access modifiers changed from: package-private */
        public void c(int i2, int i3) {
            if (i2 != this.h || i3 != this.i) {
                this.h = i2;
                this.i = i3;
                int i4 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        /* access modifiers changed from: package-private */
        public void d(int i2, float f2) {
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.j.cancel();
            }
            this.e = i2;
            this.f = f2;
            g();
        }

        public void draw(Canvas canvas) {
            Drawable drawable = TabLayout.this.n;
            int i2 = 0;
            int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
            int i3 = this.b;
            if (i3 >= 0) {
                intrinsicHeight = i3;
            }
            int i4 = TabLayout.this.z;
            if (i4 == 0) {
                i2 = getHeight() - intrinsicHeight;
                intrinsicHeight = getHeight();
            } else if (i4 == 1) {
                i2 = (getHeight() - intrinsicHeight) / 2;
                intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
            } else if (i4 != 2) {
                if (i4 != 3) {
                    intrinsicHeight = 0;
                } else {
                    intrinsicHeight = getHeight();
                }
            }
            int i5 = this.h;
            if (i5 >= 0 && this.i > i5) {
                Drawable drawable2 = TabLayout.this.n;
                if (drawable2 == null) {
                    drawable2 = this.d;
                }
                Drawable j2 = androidx.core.graphics.drawable.a.j(drawable2);
                j2.setBounds(this.h, i2, this.i, intrinsicHeight);
                Paint paint = this.c;
                if (paint != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        j2.setColorFilter(paint.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        androidx.core.graphics.drawable.a.f(j2, paint.getColor());
                    }
                }
                j2.draw(canvas);
            }
            super.draw(canvas);
        }

        /* access modifiers changed from: package-private */
        public void e(int i2) {
            if (this.c.getColor() != i2) {
                this.c.setColor(i2);
                int i3 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        /* access modifiers changed from: package-private */
        public void f(int i2) {
            if (this.b != i2) {
                this.b = i2;
                int i3 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        /* access modifiers changed from: protected */
        public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                g();
                return;
            }
            this.j.cancel();
            a(this.e, Math.round((1.0f - this.j.getAnimatedFraction()) * ((float) this.j.getDuration())));
        }

        /* access modifiers changed from: protected */
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                TabLayout tabLayout = TabLayout.this;
                boolean z = true;
                if (tabLayout.x == 1 || tabLayout.A == 2) {
                    int childCount = getChildCount();
                    int i4 = 0;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        View childAt = getChildAt(i5);
                        if (childAt.getVisibility() == 0) {
                            i4 = Math.max(i4, childAt.getMeasuredWidth());
                        }
                    }
                    if (i4 > 0) {
                        if (i4 * childCount <= getMeasuredWidth() - (((int) j.b(getContext(), 16)) * 2)) {
                            boolean z2 = false;
                            for (int i6 = 0; i6 < childCount; i6++) {
                                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i6).getLayoutParams();
                                if (layoutParams.width != i4 || layoutParams.weight != 0.0f) {
                                    layoutParams.width = i4;
                                    layoutParams.weight = 0.0f;
                                    z2 = true;
                                }
                            }
                            z = z2;
                        } else {
                            TabLayout tabLayout2 = TabLayout.this;
                            tabLayout2.x = 0;
                            tabLayout2.r(false);
                        }
                        if (z) {
                            super.onMeasure(i2, i3);
                        }
                    }
                }
            }
        }

        public void onRtlPropertiesChanged(int i2) {
            super.onRtlPropertiesChanged(i2);
            if (Build.VERSION.SDK_INT < 23 && this.g != i2) {
                requestLayout();
                this.g = i2;
            }
        }
    }

    public static class d {
        private Drawable a;
        private CharSequence b;
        private CharSequence c;
        private int d = -1;
        private View e;
        public TabLayout f;
        public f g;

        public View c() {
            return this.e;
        }

        public Drawable d() {
            return this.a;
        }

        public int e() {
            return this.d;
        }

        public CharSequence f() {
            return this.b;
        }

        public boolean g() {
            TabLayout tabLayout = this.f;
            if (tabLayout != null) {
                return tabLayout.f() == this.d;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* access modifiers changed from: package-private */
        public void h() {
            this.f = null;
            this.g = null;
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = -1;
            this.e = null;
        }

        public d i(CharSequence charSequence) {
            this.c = charSequence;
            n();
            return this;
        }

        public d j(int i) {
            this.e = LayoutInflater.from(this.g.getContext()).inflate(i, (ViewGroup) this.g, false);
            n();
            return this;
        }

        public d k(Drawable drawable) {
            this.a = drawable;
            TabLayout tabLayout = this.f;
            if (tabLayout.x == 1 || tabLayout.A == 2) {
                tabLayout.r(true);
            }
            n();
            return this;
        }

        /* access modifiers changed from: package-private */
        public void l(int i) {
            this.d = i;
        }

        public d m(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.c) && !TextUtils.isEmpty(charSequence)) {
                this.g.setContentDescription(charSequence);
            }
            this.b = charSequence;
            n();
            return this;
        }

        /* access modifiers changed from: package-private */
        public void n() {
            f fVar = this.g;
            if (fVar != null) {
                fVar.e();
            }
        }
    }

    public static class e implements ViewPager.g {
        private final WeakReference<TabLayout> b;
        private int c;
        private int d;

        public e(TabLayout tabLayout) {
            this.b = new WeakReference<>(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void a(int i, float f, int i2) {
            TabLayout tabLayout = this.b.get();
            if (tabLayout != null) {
                int i3 = this.d;
                boolean z = false;
                boolean z2 = i3 != 2 || this.c == 1;
                if (!(i3 == 2 && this.c == 0)) {
                    z = true;
                }
                tabLayout.n(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void b(int i) {
            this.c = this.d;
            this.d = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void c(int i) {
            TabLayout tabLayout = this.b.get();
            if (tabLayout != null && tabLayout.f() != i && i < tabLayout.h()) {
                int i2 = this.d;
                tabLayout.l(tabLayout.g(i), i2 == 0 || (i2 == 2 && this.c == 0));
            }
        }

        /* access modifiers changed from: package-private */
        public void d() {
            this.d = 0;
            this.c = 0;
        }
    }

    public final class f extends LinearLayout {
        private d b;
        private TextView c;
        private ImageView d;
        private View e;
        private TextView f;
        private ImageView g;
        private Drawable h;
        private int i = 2;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0, types: [android.widget.LinearLayout, com.google.android.material.tabs.TabLayout$f, android.view.View] */
        /* JADX WARN: Type inference failed for: r5v4, types: [android.graphics.drawable.LayerDrawable] */
        /* JADX WARN: Type inference failed for: r0v4, types: [android.graphics.drawable.RippleDrawable] */
        /* JADX WARNING: Unknown variable types count: 2 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public f(android.content.Context r10) {
            /*
            // Method dump skipped, instructions count: 164
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.f.<init>(com.google.android.material.tabs.TabLayout, android.content.Context):void");
        }

        static int a(f fVar) {
            View[] viewArr = {fVar.c, fVar.d, fVar.e};
            int i2 = 0;
            int i3 = 0;
            boolean z = false;
            for (int i4 = 0; i4 < 3; i4++) {
                View view = viewArr[i4];
                if (view != null && view.getVisibility() == 0) {
                    i3 = z ? Math.min(i3, view.getLeft()) : view.getLeft();
                    i2 = z ? Math.max(i2, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return i2 - i3;
        }

        static void b(f fVar, Canvas canvas) {
            Drawable drawable = fVar.h;
            if (drawable != null) {
                drawable.setBounds(fVar.getLeft(), fVar.getTop(), fVar.getRight(), fVar.getBottom());
                fVar.h.draw(canvas);
            }
        }

        private void f(TextView textView, ImageView imageView) {
            d dVar = this.b;
            CharSequence charSequence = null;
            Drawable mutate = (dVar == null || dVar.d() == null) ? null : androidx.core.graphics.drawable.a.j(this.b.d()).mutate();
            d dVar2 = this.b;
            CharSequence f2 = dVar2 != null ? dVar2.f() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(f2);
            if (textView != null) {
                if (z) {
                    textView.setText(f2);
                    Objects.requireNonNull(this.b);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int b2 = (!z || imageView.getVisibility() != 0) ? 0 : (int) j.b(getContext(), 8);
                if (TabLayout.this.B) {
                    if (b2 != marginLayoutParams.getMarginEnd()) {
                        marginLayoutParams.setMarginEnd(b2);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (b2 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = b2;
                    marginLayoutParams.setMarginEnd(0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            d dVar3 = this.b;
            CharSequence charSequence2 = dVar3 != null ? dVar3.c : null;
            if (!z) {
                charSequence = charSequence2;
            }
            l0.b(this, charSequence);
        }

        /* access modifiers changed from: package-private */
        public void c() {
            if (this.b != null) {
                this.b = null;
                e();
            }
            setSelected(false);
        }

        /* access modifiers changed from: package-private */
        public void d(d dVar) {
            if (dVar != this.b) {
                this.b = dVar;
                e();
            }
        }

        /* access modifiers changed from: protected */
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.h;
            boolean z = false;
            if (drawable != null && drawable.isStateful()) {
                z = false | this.h.setState(drawableState);
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        /* access modifiers changed from: package-private */
        public final void e() {
            d dVar = this.b;
            Drawable drawable = null;
            View c2 = dVar != null ? dVar.c() : null;
            if (c2 != null) {
                ViewParent parent = c2.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(c2);
                    }
                    addView(c2);
                }
                this.e = c2;
                TextView textView = this.c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.d.setImageDrawable(null);
                }
                TextView textView2 = (TextView) c2.findViewById(16908308);
                this.f = textView2;
                if (textView2 != null) {
                    this.i = textView2.getMaxLines();
                }
                this.g = (ImageView) c2.findViewById(16908294);
            } else {
                View view = this.e;
                if (view != null) {
                    removeView(view);
                    this.e = null;
                }
                this.f = null;
                this.g = null;
            }
            boolean z = false;
            if (this.e == null) {
                if (this.d == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.as, (ViewGroup) this, false);
                    this.d = imageView2;
                    addView(imageView2, 0);
                }
                if (!(dVar == null || dVar.d() == null)) {
                    drawable = androidx.core.graphics.drawable.a.j(dVar.d()).mutate();
                }
                if (drawable != null) {
                    androidx.core.graphics.drawable.a.g(drawable, TabLayout.this.l);
                    PorterDuff.Mode mode = TabLayout.this.o;
                    if (mode != null) {
                        androidx.core.graphics.drawable.a.h(drawable, mode);
                    }
                }
                if (this.c == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.at, (ViewGroup) this, false);
                    this.c = textView3;
                    addView(textView3);
                    this.i = this.c.getMaxLines();
                }
                androidx.core.widget.c.h(this.c, TabLayout.this.j);
                ColorStateList colorStateList = TabLayout.this.k;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
                f(this.c, this.d);
                ImageView imageView3 = this.d;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new b(this, imageView3));
                }
                TextView textView4 = this.c;
                if (textView4 != null) {
                    textView4.addOnLayoutChangeListener(new b(this, textView4));
                }
            } else {
                TextView textView5 = this.f;
                if (!(textView5 == null && this.g == null)) {
                    f(textView5, this.g);
                }
            }
            if (dVar != null && !TextUtils.isEmpty(dVar.c)) {
                setContentDescription(dVar.c);
            }
            if (dVar != null && dVar.g()) {
                z = true;
            }
            setSelected(z);
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.b.class.getName());
        }

        @TargetApi(VungleException.SERVER_RETRY_ERROR)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.b.class.getName());
        }

        /* JADX WARNING: Code restructure failed: missing block: B:29:0x0090, code lost:
            if (((r0 / r2.getPaint().getTextSize()) * r2.getLineWidth(0)) > ((float) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()))) goto L_0x0092;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onMeasure(int r8, int r9) {
            /*
            // Method dump skipped, instructions count: 163
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.f.onMeasure(int, int):void");
        }

        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.b == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            d dVar = this.b;
            TabLayout tabLayout = dVar.f;
            if (tabLayout != null) {
                tabLayout.l(dVar, true);
                return true;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void setSelected(boolean z) {
            if (isSelected() != z) {
            }
            super.setSelected(z);
            TextView textView = this.c;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.d;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.e;
            if (view != null) {
                view.setSelected(z);
            }
        }
    }

    public static class g implements b {
        private final ViewPager a;

        public g(ViewPager viewPager) {
            this.a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.b
        public void a(d dVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.b
        public void b(d dVar) {
            this.a.x(dVar.e());
        }

        @Override // com.google.android.material.tabs.TabLayout.b
        public void c(d dVar) {
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ss);
    }

    private void c(View view) {
        if (view instanceof TabItem) {
            TabItem tabItem = (TabItem) view;
            d j2 = j();
            CharSequence charSequence = tabItem.b;
            if (charSequence != null) {
                j2.m(charSequence);
            }
            Drawable drawable = tabItem.c;
            if (drawable != null) {
                j2.k(drawable);
            }
            int i2 = tabItem.d;
            if (i2 != 0) {
                j2.j(i2);
            }
            if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
                j2.i(tabItem.getContentDescription());
            }
            b(j2, this.b.isEmpty());
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private void d(int i2) {
        boolean z2;
        if (i2 != -1) {
            if (getWindowToken() != null) {
                int i3 = c3.g;
                if (isLaidOut()) {
                    c cVar = this.e;
                    int childCount = cVar.getChildCount();
                    int i4 = 0;
                    while (true) {
                        if (i4 >= childCount) {
                            z2 = false;
                            break;
                        } else if (cVar.getChildAt(i4).getWidth() <= 0) {
                            z2 = true;
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (!z2) {
                        int scrollX = getScrollX();
                        int e2 = e(i2, 0.0f);
                        if (scrollX != e2) {
                            if (this.G == null) {
                                ValueAnimator valueAnimator = new ValueAnimator();
                                this.G = valueAnimator;
                                valueAnimator.setInterpolator(jx.b);
                                this.G.setDuration((long) this.y);
                                this.G.addUpdateListener(new a(this));
                            }
                            this.G.setIntValues(scrollX, e2);
                            this.G.start();
                        }
                        this.e.a(i2, this.y);
                        return;
                    }
                }
            }
            n(i2, 0.0f, true, true);
        }
    }

    private int e(int i2, float f2) {
        int i3 = this.A;
        int i4 = 0;
        if (i3 != 0 && i3 != 2) {
            return 0;
        }
        View childAt = this.e.getChildAt(i2);
        int i5 = i2 + 1;
        View childAt2 = i5 < this.e.getChildCount() ? this.e.getChildAt(i5) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i4 = childAt2.getWidth();
        }
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i6 = (int) (((float) (width + i4)) * 0.5f * f2);
        int i7 = c3.g;
        return getLayoutDirection() == 0 ? left + i6 : left - i6;
    }

    private int i() {
        int i2 = this.t;
        if (i2 != -1) {
            return i2;
        }
        int i3 = this.A;
        if (i3 == 0 || i3 == 2) {
            return this.v;
        }
        return 0;
    }

    private void o(int i2) {
        int childCount = this.e.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = this.e.getChildAt(i3);
                boolean z2 = true;
                childAt.setSelected(i3 == i2);
                if (i3 != i2) {
                    z2 = false;
                }
                childAt.setActivated(z2);
                i3++;
            }
        }
    }

    private void p(ViewPager viewPager, boolean z2, boolean z3) {
        ViewPager viewPager2 = this.H;
        if (viewPager2 != null) {
            e eVar = this.K;
            if (eVar != null) {
                viewPager2.t(eVar);
            }
            a aVar = this.L;
            if (aVar != null) {
                this.H.s(aVar);
            }
        }
        b bVar = this.F;
        if (bVar != null) {
            this.E.remove(bVar);
            this.F = null;
        }
        if (viewPager != null) {
            this.H = viewPager;
            if (this.K == null) {
                this.K = new e(this);
            }
            this.K.d();
            viewPager.b(this.K);
            g gVar = new g(viewPager);
            this.F = gVar;
            if (!this.E.contains(gVar)) {
                this.E.add(gVar);
            }
            if (this.L == null) {
                this.L = new a(this);
            }
            Objects.requireNonNull(this.L);
            viewPager.a(this.L);
            n(viewPager.i(), 0.0f, true, true);
        } else {
            this.H = null;
            m(null, false);
        }
        this.M = z3;
    }

    private void q(LinearLayout.LayoutParams layoutParams) {
        if (this.A == 1 && this.x == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    public void addView(View view) {
        c(view);
    }

    public void b(d dVar, boolean z2) {
        int size = this.b.size();
        if (dVar.f == this) {
            dVar.l(size);
            this.b.add(size, dVar);
            int size2 = this.b.size();
            while (true) {
                size++;
                if (size >= size2) {
                    break;
                }
                this.b.get(size).l(size);
            }
            f fVar = dVar.g;
            fVar.setSelected(false);
            fVar.setActivated(false);
            c cVar = this.e;
            int e2 = dVar.e();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            q(layoutParams);
            cVar.addView(fVar, e2, layoutParams);
            if (z2) {
                TabLayout tabLayout = dVar.f;
                if (tabLayout != null) {
                    tabLayout.l(dVar, true);
                    return;
                }
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    public int f() {
        d dVar = this.c;
        if (dVar != null) {
            return dVar.e();
        }
        return -1;
    }

    public d g(int i2) {
        if (i2 < 0 || i2 >= h()) {
            return null;
        }
        return this.b.get(i2);
    }

    public int h() {
        return this.b.size();
    }

    public d j() {
        d b2 = O.b();
        if (b2 == null) {
            b2 = new d();
        }
        b2.f = this;
        k2<f> k2Var = this.N;
        f b3 = k2Var != null ? k2Var.b() : null;
        if (b3 == null) {
            b3 = new f(getContext());
        }
        b3.d(b2);
        b3.setFocusable(true);
        b3.setMinimumWidth(i());
        if (TextUtils.isEmpty(b2.c)) {
            b3.setContentDescription(b2.b);
        } else {
            b3.setContentDescription(b2.c);
        }
        b2.g = b3;
        return b2;
    }

    /* access modifiers changed from: package-private */
    public void k() {
        int i2;
        int childCount = this.e.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            f fVar = (f) this.e.getChildAt(childCount);
            this.e.removeViewAt(childCount);
            if (fVar != null) {
                fVar.c();
                this.N.a(fVar);
            }
            requestLayout();
        }
        Iterator<d> it = this.b.iterator();
        while (it.hasNext()) {
            d next = it.next();
            it.remove();
            next.h();
            O.a(next);
        }
        this.c = null;
        androidx.viewpager.widget.a aVar = this.I;
        if (aVar != null) {
            int a2 = aVar.a();
            for (int i3 = 0; i3 < a2; i3++) {
                d j2 = j();
                Objects.requireNonNull(this.I);
                j2.m(null);
                b(j2, false);
            }
            ViewPager viewPager = this.H;
            if (viewPager != null && a2 > 0 && (i2 = viewPager.i()) != f() && i2 < h()) {
                l(g(i2), true);
            }
        }
    }

    public void l(d dVar, boolean z2) {
        d dVar2 = this.c;
        if (dVar2 != dVar) {
            int e2 = dVar != null ? dVar.e() : -1;
            if (z2) {
                if ((dVar2 == null || dVar2.e() == -1) && e2 != -1) {
                    n(e2, 0.0f, true, true);
                } else {
                    d(e2);
                }
                if (e2 != -1) {
                    o(e2);
                }
            }
            this.c = dVar;
            if (dVar2 != null) {
                for (int size = this.E.size() - 1; size >= 0; size--) {
                    this.E.get(size).c(dVar2);
                }
            }
            if (dVar != null) {
                for (int size2 = this.E.size() - 1; size2 >= 0; size2--) {
                    this.E.get(size2).b(dVar);
                }
            }
        } else if (dVar2 != null) {
            for (int size3 = this.E.size() - 1; size3 >= 0; size3--) {
                this.E.get(size3).a(dVar);
            }
            d(dVar.e());
        }
    }

    /* access modifiers changed from: package-private */
    public void m(androidx.viewpager.widget.a aVar, boolean z2) {
        DataSetObserver dataSetObserver;
        androidx.viewpager.widget.a aVar2 = this.I;
        if (!(aVar2 == null || (dataSetObserver = this.J) == null)) {
            aVar2.b(dataSetObserver);
        }
        this.I = null;
        k();
    }

    public void n(int i2, float f2, boolean z2, boolean z3) {
        int round = Math.round(((float) i2) + f2);
        if (round >= 0 && round < this.e.getChildCount()) {
            if (z3) {
                this.e.d(i2, f2);
            }
            ValueAnimator valueAnimator = this.G;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.G.cancel();
            }
            scrollTo(e(i2, f2), 0);
            if (z2) {
                o(round);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof my) {
            ny.b(this, (my) background);
        }
        if (this.H == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                p((ViewPager) parent, true, true);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.M) {
            p(null, true, false);
            this.M = false;
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        for (int i2 = 0; i2 < this.e.getChildCount(); i2++) {
            View childAt = this.e.getChildAt(i2);
            if (childAt instanceof f) {
                f.b((f) childAt, canvas);
            }
        }
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00a0, code lost:
        if (r0 != 2) goto L_0x00ba;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00ab, code lost:
        if (r8.getMeasuredWidth() != getMeasuredWidth()) goto L_0x00ad;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00ad, code lost:
        r2 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00b7, code lost:
        if (r8.getMeasuredWidth() < getMeasuredWidth()) goto L_0x00ad;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r8, int r9) {
        /*
        // Method dump skipped, instructions count: 219
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    /* access modifiers changed from: package-private */
    public void r(boolean z2) {
        for (int i2 = 0; i2 < this.e.getChildCount(); i2++) {
            View childAt = this.e.getChildAt(i2);
            childAt.setMinimumWidth(i());
            q((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z2) {
                childAt.requestLayout();
            }
        }
    }

    public void setElevation(float f2) {
        super.setElevation(f2);
        Drawable background = getBackground();
        if (background instanceof my) {
            ((my) background).E(f2);
        }
    }

    public boolean shouldDelayChildPressedState() {
        if (Math.max(0, ((this.e.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight()) > 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: finally extract failed */
    public TabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        this.b = new ArrayList<>();
        this.d = new RectF();
        this.s = Integer.MAX_VALUE;
        this.E = new ArrayList<>();
        this.N = new l2(12);
        setHorizontalScrollBarEnabled(false);
        c cVar = new c(context);
        this.e = cVar;
        super.addView(cVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray f2 = i.f(context, attributeSet, R$styleable.H, i2, R.style.pg, 22);
        if (getBackground() instanceof ColorDrawable) {
            my myVar = new my();
            myVar.F(ColorStateList.valueOf(((ColorDrawable) getBackground()).getColor()));
            myVar.A(context);
            myVar.E(c3.i(this));
            setBackground(myVar);
        }
        cVar.f(f2.getDimensionPixelSize(10, -1));
        cVar.e(f2.getColor(7, 0));
        Drawable c2 = yx.c(context, f2, 5);
        if (this.n != c2) {
            this.n = c2;
            int i4 = c3.g;
            cVar.postInvalidateOnAnimation();
        }
        int i5 = f2.getInt(9, 0);
        if (this.z != i5) {
            this.z = i5;
            int i6 = c3.g;
            cVar.postInvalidateOnAnimation();
        }
        this.C = f2.getBoolean(8, true);
        int i7 = c3.g;
        cVar.postInvalidateOnAnimation();
        int dimensionPixelSize = f2.getDimensionPixelSize(15, 0);
        this.i = dimensionPixelSize;
        this.h = dimensionPixelSize;
        this.g = dimensionPixelSize;
        this.f = dimensionPixelSize;
        this.f = f2.getDimensionPixelSize(18, dimensionPixelSize);
        this.g = f2.getDimensionPixelSize(19, this.g);
        this.h = f2.getDimensionPixelSize(17, this.h);
        this.i = f2.getDimensionPixelSize(16, this.i);
        int resourceId = f2.getResourceId(22, R.style.j_);
        this.j = resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(resourceId, androidx.appcompat.R$styleable.y);
        try {
            this.p = (float) obtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.k = yx.a(context, obtainStyledAttributes, 3);
            obtainStyledAttributes.recycle();
            if (f2.hasValue(23)) {
                this.k = yx.a(context, f2, 23);
            }
            if (f2.hasValue(21)) {
                int color = f2.getColor(21, 0);
                int defaultColor = this.k.getDefaultColor();
                this.k = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{color, defaultColor});
            }
            this.l = yx.a(context, f2, 3);
            this.o = j.d(f2.getInt(4, -1), null);
            this.m = yx.a(context, f2, 20);
            this.y = f2.getInt(6, HttpStatus.SC_MULTIPLE_CHOICES);
            this.t = f2.getDimensionPixelSize(13, -1);
            this.u = f2.getDimensionPixelSize(12, -1);
            this.r = f2.getResourceId(0, 0);
            this.w = f2.getDimensionPixelSize(1, 0);
            this.A = f2.getInt(14, 1);
            this.x = f2.getInt(2, 0);
            this.B = f2.getBoolean(11, false);
            this.D = f2.getBoolean(24, false);
            f2.recycle();
            Resources resources = getResources();
            this.q = (float) resources.getDimensionPixelSize(R.dimen.nr);
            this.v = resources.getDimensionPixelSize(R.dimen.np);
            int i8 = this.A;
            if (i8 == 0 || i8 == 2) {
                i3 = Math.max(0, this.w - this.f);
            } else {
                i3 = 0;
            }
            cVar.setPaddingRelative(i3, 0, 0, 0);
            int i9 = this.A;
            if (i9 == 0) {
                cVar.setGravity(8388611);
            } else if (i9 == 1 || i9 == 2) {
                cVar.setGravity(1);
            }
            r(true);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) {
        c(view);
    }

    @Override // android.widget.FrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        c(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        c(view);
    }
}
