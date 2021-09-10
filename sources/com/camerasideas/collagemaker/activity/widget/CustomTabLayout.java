package com.camerasideas.collagemaker.activity.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.viewpager.widget.ViewPager;
import com.camerasideas.collagemaker.R$styleable;
import com.camerasideas.collagemaker.activity.widget.n;
import com.facebook.ads.AdError;
import com.google.android.material.tabs.TabItem;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import org.apache.http.HttpStatus;
import photoeditor.cutout.backgrounderaser.R;

@ViewPager.c
public class CustomTabLayout extends HorizontalScrollView {
    private static final k2<d> E = new m2(16);
    private e A;
    private a B;
    private boolean C;
    private final k2<f> D;
    private final ArrayList<d> b;
    private d c;
    private final c d;
    int e;
    int f;
    int g;
    int h;
    int i;
    ColorStateList j;
    float k;
    float l;
    final int m;
    int n;
    private final int o;
    private final int p;
    private final int q;
    private int r;
    int s;
    int t;
    private final ArrayList<b> u;
    private b v;
    private n w;
    ViewPager x;
    private androidx.viewpager.widget.a y;
    private DataSetObserver z;

    /* access modifiers changed from: private */
    public class a implements ViewPager.f {
        a(CustomTabLayout customTabLayout) {
        }
    }

    public interface b {
        void a(d dVar);

        void b(d dVar);

        void c(d dVar);
    }

    /* access modifiers changed from: private */
    public class c extends LinearLayout {
        private int b;
        private int c;
        private final Paint d;
        int e = -1;
        float f;
        private int g = -1;
        private int h = -1;
        private n i;

        /* access modifiers changed from: package-private */
        public class a extends n.d {
            final /* synthetic */ int a;

            a(int i) {
                this.a = i;
            }
        }

        c(Context context) {
            super(context);
            setWillNotDraw(false);
            this.d = new Paint();
        }

        private void g() {
            int i2;
            View childAt = getChildAt(this.e);
            int i3 = -1;
            if (childAt == null || childAt.getWidth() <= 0) {
                i2 = -1;
            } else {
                int left = childAt.getLeft();
                i2 = childAt.getRight();
                if (this.f > 0.0f && this.e < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.e + 1);
                    float left2 = this.f * ((float) childAt2.getLeft());
                    float f2 = this.f;
                    left = (int) (((1.0f - f2) * ((float) left)) + left2);
                    i2 = (int) (((1.0f - this.f) * ((float) i2)) + (f2 * ((float) childAt2.getRight())));
                }
                i3 = left;
            }
            if (i3 != this.g || i2 != this.h) {
                this.g = i3;
                this.h = i2;
                int i4 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i2, int i3) {
            int i4;
            int i5;
            n nVar = this.i;
            if (nVar != null && nVar.g()) {
                this.i.c();
            }
            int i6 = c3.g;
            boolean z = getLayoutDirection() == 1;
            View childAt = getChildAt(i2);
            if (childAt == null) {
                g();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            if (Math.abs(i2 - this.e) <= 1) {
                i5 = this.g;
                i4 = this.h;
            } else {
                int d2 = CustomTabLayout.this.d(24);
                i5 = (i2 >= this.e ? !z : z) ? left - d2 : d2 + right;
                i4 = i5;
            }
            if (i5 != left || i4 != right) {
                n nVar2 = new n(new o());
                this.i = nVar2;
                nVar2.k(d.a);
                nVar2.h((long) i3);
                nVar2.i(0.0f, 1.0f);
                nVar2.b(new a(this, i5, left, i4, right));
                nVar2.a(new a(i2));
                nVar2.l();
            }
        }

        public void b(int i2, int i3, int i4, int i5, n nVar) {
            float d2 = nVar.d();
            Interpolator interpolator = d.a;
            int round = Math.round(((float) (i3 - i2)) * d2) + i2;
            int round2 = Math.round(d2 * ((float) (i5 - i4))) + i4;
            if (round != this.g || round2 != this.h) {
                this.g = round;
                this.h = round2;
                int i6 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        /* access modifiers changed from: package-private */
        public void c(int i2, float f2) {
            n nVar = this.i;
            if (nVar != null && nVar.g()) {
                this.i.c();
            }
            this.e = i2;
            this.f = f2;
            g();
        }

        /* access modifiers changed from: package-private */
        public void d(int i2) {
            if (this.d.getColor() != i2) {
                this.d.setColor(i2);
                int i3 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        public void draw(Canvas canvas) {
            int i2;
            super.draw(canvas);
            int i3 = this.g;
            if (i3 >= 0 && (i2 = this.h) > i3) {
                int i4 = i2 - i3;
                int i5 = 0;
                int i6 = this.c;
                if (i6 > 0 && i4 > i6) {
                    i5 = (i4 - i6) / 2;
                }
                canvas.drawRect((float) (i3 + i5), (float) (getHeight() - this.b), (float) (this.h - i5), (float) getHeight(), this.d);
            }
        }

        /* access modifiers changed from: package-private */
        public void e(int i2) {
            if (this.b != i2) {
                this.b = i2;
                int i3 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        /* access modifiers changed from: package-private */
        public void f(int i2) {
            if (this.c != i2) {
                this.c = i2;
                int i3 = c3.g;
                postInvalidateOnAnimation();
            }
        }

        /* access modifiers changed from: protected */
        public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            n nVar = this.i;
            if (nVar == null || !nVar.g()) {
                g();
                return;
            }
            this.i.c();
            a(this.e, Math.round((1.0f - this.i.d()) * ((float) this.i.f())));
        }

        /* access modifiers changed from: protected */
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                CustomTabLayout customTabLayout = CustomTabLayout.this;
                boolean z = true;
                if (customTabLayout.t == 1 && customTabLayout.s == 1) {
                    int childCount = getChildCount();
                    int i4 = 0;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        View childAt = getChildAt(i5);
                        if (childAt.getVisibility() == 0) {
                            i4 = Math.max(i4, childAt.getMeasuredWidth());
                        }
                    }
                    if (i4 > 0) {
                        if (i4 * childCount <= getMeasuredWidth() - (CustomTabLayout.this.d(16) * 2)) {
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
                            CustomTabLayout customTabLayout2 = CustomTabLayout.this;
                            customTabLayout2.s = 0;
                            customTabLayout2.o(false);
                        }
                        if (z) {
                            super.onMeasure(i2, i3);
                        }
                    }
                }
            }
        }
    }

    public static final class d {
        private CharSequence a;
        private int b = -1;
        CustomTabLayout c;
        f d;

        d() {
        }

        public int a() {
            return this.b;
        }

        public CharSequence b() {
            return this.a;
        }

        public boolean c() {
            CustomTabLayout customTabLayout = this.c;
            if (customTabLayout != null) {
                return customTabLayout.e() == this.b;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* access modifiers changed from: package-private */
        public void d() {
            this.c = null;
            this.d = null;
            this.a = null;
            this.b = -1;
        }

        /* access modifiers changed from: package-private */
        public void e(int i) {
            this.b = i;
        }

        public d f(CharSequence charSequence) {
            this.a = null;
            f fVar = this.d;
            if (fVar != null) {
                fVar.c();
            }
            return this;
        }
    }

    public static class e implements ViewPager.g {
        private final WeakReference<CustomTabLayout> b;
        private int c;
        private int d;

        public e(CustomTabLayout customTabLayout) {
            this.b = new WeakReference<>(customTabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void a(int i, float f, int i2) {
            CustomTabLayout customTabLayout = this.b.get();
            if (customTabLayout != null) {
                int i3 = this.d;
                boolean z = false;
                boolean z2 = i3 != 2 || this.c == 1;
                if (!(i3 == 2 && this.c == 0)) {
                    z = true;
                }
                customTabLayout.k(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void b(int i) {
            this.c = this.d;
            this.d = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void c(int i) {
            CustomTabLayout customTabLayout = this.b.get();
            if (customTabLayout != null && customTabLayout.e() != i && i < customTabLayout.g()) {
                int i2 = this.d;
                customTabLayout.i(customTabLayout.f(i), i2 == 0 || (i2 == 2 && this.c == 0));
            }
        }

        /* access modifiers changed from: package-private */
        public void d() {
            this.d = 0;
            this.c = 0;
        }
    }

    public class f extends LinearLayout implements View.OnLongClickListener {
        private d b;
        private TextView c;
        private ImageView d;
        private int e = 2;

        public f(Context context) {
            super(context);
            int i = CustomTabLayout.this.m;
            if (i != 0) {
                Drawable b2 = defpackage.d.b(context, i);
                int i2 = c3.g;
                setBackground(b2);
            }
            int i3 = CustomTabLayout.this.e;
            int i4 = CustomTabLayout.this.f;
            int i5 = CustomTabLayout.this.g;
            int i6 = CustomTabLayout.this.h;
            int i7 = c3.g;
            setPaddingRelative(i3, i4, i5, i6);
            setGravity(17);
            setOrientation(1);
            setClickable(true);
            c3.y(this, a3.b(getContext(), AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE));
        }

        private void d(TextView textView, ImageView imageView) {
            d dVar = this.b;
            if (dVar != null) {
                Objects.requireNonNull(dVar);
            }
            d dVar2 = this.b;
            CharSequence b2 = dVar2 != null ? dVar2.b() : null;
            d dVar3 = this.b;
            if (dVar3 != null) {
                Objects.requireNonNull(dVar3);
            }
            if (imageView != null) {
                imageView.setVisibility(8);
                imageView.setImageDrawable(null);
                imageView.setContentDescription(null);
            }
            boolean z = !TextUtils.isEmpty(b2);
            if (textView != null) {
                if (z) {
                    textView.setText(b2);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
                textView.setContentDescription(null);
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int d2 = (!z || imageView.getVisibility() != 0) ? 0 : CustomTabLayout.this.d(8);
                if (d2 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = d2;
                    imageView.requestLayout();
                }
            }
            if (z || TextUtils.isEmpty(null)) {
                setOnLongClickListener(null);
                setLongClickable(false);
                return;
            }
            setOnLongClickListener(this);
        }

        /* access modifiers changed from: package-private */
        public void a() {
            if (this.b != null) {
                this.b = null;
                c();
            }
            setSelected(false);
        }

        /* access modifiers changed from: package-private */
        public void b(d dVar) {
            if (dVar != this.b) {
                this.b = dVar;
                c();
            }
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            d dVar = this.b;
            boolean z = false;
            if (this.d == null) {
                ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.as, (ViewGroup) this, false);
                addView(imageView, 0);
                this.d = imageView;
            }
            if (this.c == null) {
                TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.at, (ViewGroup) this, false);
                addView(textView);
                this.c = textView;
                this.e = textView.getMaxLines();
            }
            androidx.core.widget.c.h(this.c, CustomTabLayout.this.i);
            ColorStateList colorStateList = CustomTabLayout.this.j;
            if (colorStateList != null) {
                this.c.setTextColor(colorStateList);
            }
            d(this.c, this.d);
            if (dVar != null && dVar.c()) {
                z = true;
            }
            setSelected(z);
        }

        @TargetApi(VungleException.SERVER_RETRY_ERROR)
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.b.class.getName());
        }

        @TargetApi(VungleException.SERVER_RETRY_ERROR)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.b.class.getName());
        }

        public boolean onLongClick(View view) {
            int[] iArr = new int[2];
            Rect rect = new Rect();
            getLocationOnScreen(iArr);
            getWindowVisibleDisplayFrame(rect);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int i = (height / 2) + iArr[1];
            int i2 = (width / 2) + iArr[0];
            int i3 = c3.g;
            if (view.getLayoutDirection() == 0) {
                i2 = context.getResources().getDisplayMetrics().widthPixels - i2;
            }
            try {
                Objects.requireNonNull(this.b);
                Toast makeText = m.makeText(context, (CharSequence) null, 0);
                if (i < rect.height()) {
                    makeText.setGravity(8388661, i2, (iArr[1] + height) - rect.top);
                } else {
                    makeText.setGravity(81, 0, height);
                }
                makeText.show();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return true;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:29:0x0093, code lost:
            if (((r0 / r2.getPaint().getTextSize()) * r2.getLineWidth(0)) > ((float) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()))) goto L_0x0095;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onMeasure(int r8, int r9) {
            /*
            // Method dump skipped, instructions count: 166
            */
            throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.CustomTabLayout.f.onMeasure(int, int):void");
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
            CustomTabLayout customTabLayout = dVar.c;
            if (customTabLayout != null) {
                customTabLayout.i(dVar, true);
                return true;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void setSelected(boolean z) {
            isSelected();
            super.setSelected(z);
            TextView textView = this.c;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.d;
            if (imageView != null) {
                imageView.setSelected(z);
            }
        }
    }

    static class g {
        private static final int[] a = {R.attr.ea};

        static void a(Context context) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(a);
            boolean z = !obtainStyledAttributes.hasValue(0);
            obtainStyledAttributes.recycle();
            if (z) {
                throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
            }
        }
    }

    public static class h implements b {
        private final ViewPager a;

        public h(ViewPager viewPager) {
            this.a = viewPager;
        }

        @Override // com.camerasideas.collagemaker.activity.widget.CustomTabLayout.b
        public void a(d dVar) {
        }

        @Override // com.camerasideas.collagemaker.activity.widget.CustomTabLayout.b
        public void b(d dVar) {
        }

        @Override // com.camerasideas.collagemaker.activity.widget.CustomTabLayout.b
        public void c(d dVar) {
            this.a.x(dVar.a());
        }
    }

    public CustomTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(View view) {
        if (view instanceof TabItem) {
            TabItem tabItem = (TabItem) view;
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private void b(int i2) {
        if (i2 != -1) {
            if (getWindowToken() != null) {
                int i3 = c3.g;
                if (isLaidOut()) {
                    c cVar = this.d;
                    int childCount = cVar.getChildCount();
                    boolean z2 = false;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= childCount) {
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
                        int c2 = c(i2, 0.0f);
                        if (scrollX != c2) {
                            if (this.w == null) {
                                n nVar = new n(new o());
                                this.w = nVar;
                                nVar.k(d.a);
                                this.w.h(300);
                                this.w.b(new b(this));
                            }
                            this.w.j(scrollX, c2);
                            this.w.l();
                        }
                        this.d.a(i2, HttpStatus.SC_MULTIPLE_CHOICES);
                        return;
                    }
                }
            }
            k(i2, 0.0f, true, true);
        }
    }

    private int c(int i2, float f2) {
        int i3 = 0;
        if (this.t != 0) {
            return 0;
        }
        View childAt = this.d.getChildAt(i2);
        int i4 = i2 + 1;
        View childAt2 = i4 < this.d.getChildCount() ? this.d.getChildAt(i4) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i3 = childAt2.getWidth();
        }
        return ((childAt.getWidth() / 2) + (childAt.getLeft() + ((int) ((((float) (width + i3)) * f2) * 0.5f)))) - (getWidth() / 2);
    }

    private void l(int i2) {
        int childCount = this.d.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                this.d.getChildAt(i3).setSelected(i3 == i2);
                i3++;
            }
        }
    }

    private void m(ViewPager viewPager, boolean z2, boolean z3) {
        ViewPager viewPager2 = this.x;
        if (viewPager2 != null) {
            e eVar = this.A;
            if (eVar != null) {
                viewPager2.t(eVar);
            }
            a aVar = this.B;
            if (aVar != null) {
                this.x.s(aVar);
            }
        }
        b bVar = this.v;
        if (bVar != null) {
            this.u.remove(bVar);
            this.v = null;
        }
        if (viewPager != null) {
            this.x = viewPager;
            if (this.A == null) {
                this.A = new e(this);
            }
            this.A.d();
            viewPager.b(this.A);
            h hVar = new h(viewPager);
            this.v = hVar;
            if (!this.u.contains(hVar)) {
                this.u.add(hVar);
            }
            if (this.B == null) {
                this.B = new a(this);
            }
            Objects.requireNonNull(this.B);
            viewPager.a(this.B);
            k(viewPager.i(), 0.0f, true, true);
        } else {
            this.x = null;
            j(null, false);
        }
        this.C = z3;
    }

    private void n(LinearLayout.LayoutParams layoutParams) {
        if (this.t == 1 && this.s == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    public void addView(View view) {
        a(view);
    }

    /* access modifiers changed from: package-private */
    public int d(int i2) {
        return Math.round(getResources().getDisplayMetrics().density * ((float) i2));
    }

    public int e() {
        d dVar = this.c;
        if (dVar != null) {
            return dVar.a();
        }
        return -1;
    }

    public d f(int i2) {
        if (i2 < 0 || i2 >= g()) {
            return null;
        }
        return this.b.get(i2);
    }

    public int g() {
        return this.b.size();
    }

    /* access modifiers changed from: package-private */
    public void h() {
        int i2;
        for (int childCount = this.d.getChildCount() - 1; childCount >= 0; childCount--) {
            f fVar = (f) this.d.getChildAt(childCount);
            this.d.removeViewAt(childCount);
            if (fVar != null) {
                fVar.a();
                this.D.a(fVar);
            }
            requestLayout();
        }
        Iterator<d> it = this.b.iterator();
        while (it.hasNext()) {
            d next = it.next();
            it.remove();
            next.d();
            E.a(next);
        }
        this.c = null;
        androidx.viewpager.widget.a aVar = this.y;
        if (aVar != null) {
            int a2 = aVar.a();
            for (int i3 = 0; i3 < a2; i3++) {
                d b2 = E.b();
                if (b2 == null) {
                    b2 = new d();
                }
                b2.c = this;
                k2<f> k2Var = this.D;
                f b3 = k2Var != null ? k2Var.b() : null;
                if (b3 == null) {
                    b3 = new f(getContext());
                }
                b3.b(b2);
                b3.setFocusable(true);
                int i4 = this.o;
                if (i4 == -1) {
                    i4 = this.t == 0 ? this.q : 0;
                }
                b3.setMinimumWidth(i4);
                b2.d = b3;
                Objects.requireNonNull(this.y);
                b2.f(null);
                int size = this.b.size();
                if (b2.c == this) {
                    b2.e(size);
                    this.b.add(size, b2);
                    int size2 = this.b.size();
                    while (true) {
                        size++;
                        if (size >= size2) {
                            break;
                        }
                        this.b.get(size).e(size);
                    }
                    f fVar2 = b2.d;
                    c cVar = this.d;
                    int a3 = b2.a();
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                    n(layoutParams);
                    cVar.addView(fVar2, a3, layoutParams);
                } else {
                    throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
                }
            }
            ViewPager viewPager = this.x;
            if (viewPager != null && a2 > 0 && (i2 = viewPager.i()) != e() && i2 < g()) {
                i(f(i2), true);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void i(d dVar, boolean z2) {
        d dVar2 = this.c;
        if (dVar2 != dVar) {
            int a2 = dVar != null ? dVar.a() : -1;
            if (z2) {
                if ((dVar2 == null || dVar2.a() == -1) && a2 != -1) {
                    k(a2, 0.0f, true, true);
                } else {
                    b(a2);
                }
                if (a2 != -1) {
                    l(a2);
                }
            }
            if (dVar2 != null) {
                for (int size = this.u.size() - 1; size >= 0; size--) {
                    this.u.get(size).a(dVar2);
                }
            }
            this.c = dVar;
            if (dVar != null) {
                for (int size2 = this.u.size() - 1; size2 >= 0; size2--) {
                    this.u.get(size2).c(dVar);
                }
            }
        } else if (dVar2 != null) {
            for (int size3 = this.u.size() - 1; size3 >= 0; size3--) {
                this.u.get(size3).b(dVar);
            }
            b(dVar.a());
        }
    }

    /* access modifiers changed from: package-private */
    public void j(androidx.viewpager.widget.a aVar, boolean z2) {
        DataSetObserver dataSetObserver;
        androidx.viewpager.widget.a aVar2 = this.y;
        if (!(aVar2 == null || (dataSetObserver = this.z) == null)) {
            aVar2.b(dataSetObserver);
        }
        this.y = null;
        h();
    }

    /* access modifiers changed from: package-private */
    public void k(int i2, float f2, boolean z2, boolean z3) {
        int round = Math.round(((float) i2) + f2);
        if (round >= 0 && round < this.d.getChildCount()) {
            if (z3) {
                this.d.c(i2, f2);
            }
            n nVar = this.w;
            if (nVar != null && nVar.g()) {
                this.w.c();
            }
            scrollTo(c(i2, f2), 0);
            if (z2) {
                l(round);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void o(boolean z2) {
        for (int i2 = 0; i2 < this.d.getChildCount(); i2++) {
            View childAt = this.d.getChildAt(i2);
            int i3 = this.o;
            if (i3 == -1) {
                i3 = this.t == 0 ? this.q : 0;
            }
            childAt.setMinimumWidth(i3);
            n((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z2) {
                childAt.requestLayout();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.x == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m((ViewPager) parent, true, true);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.C) {
            m(null, true, false);
            this.C = false;
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int size = this.b.size();
        boolean z2 = false;
        for (int i4 = 0; i4 < size; i4++) {
            this.b.get(i4);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop() + d(48);
        int mode = View.MeasureSpec.getMode(i3);
        if (mode == Integer.MIN_VALUE) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(paddingBottom, View.MeasureSpec.getSize(i3)), 1073741824);
        } else if (mode == 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824);
        }
        int size2 = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            int i5 = this.p;
            if (i5 <= 0) {
                i5 = size2 - d(56);
            }
            this.n = i5;
        }
        super.onMeasure(i2, i3);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i6 = this.t;
            if (i6 == 0 ? childAt.getMeasuredWidth() < getMeasuredWidth() : !(i6 != 1 || childAt.getMeasuredWidth() == getMeasuredWidth())) {
                z2 = true;
            }
            if (z2) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), HorizontalScrollView.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
            }
        }
    }

    public boolean shouldDelayChildPressedState() {
        if (Math.max(0, ((this.d.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight()) > 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: finally extract failed */
    public CustomTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = new ArrayList<>();
        this.n = Integer.MAX_VALUE;
        this.u = new ArrayList<>();
        this.D = new l2(12);
        g.a(context);
        setHorizontalScrollBarEnabled(false);
        c cVar = new c(context);
        this.d = cVar;
        super.addView(cVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.e, i2, R.style.pg);
        cVar.e(obtainStyledAttributes.getDimensionPixelSize(4, 0));
        cVar.f(obtainStyledAttributes.getDimensionPixelSize(5, 0));
        cVar.d(obtainStyledAttributes.getColor(3, 0));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(9, 0);
        this.h = dimensionPixelSize;
        this.g = dimensionPixelSize;
        this.f = dimensionPixelSize;
        this.e = dimensionPixelSize;
        this.e = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        this.f = obtainStyledAttributes.getDimensionPixelSize(13, this.f);
        this.g = obtainStyledAttributes.getDimensionPixelSize(11, this.g);
        this.h = obtainStyledAttributes.getDimensionPixelSize(10, this.h);
        int resourceId = obtainStyledAttributes.getResourceId(15, R.style.j_);
        this.i = resourceId;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, R$styleable.m);
        try {
            this.k = (float) obtainStyledAttributes2.getDimensionPixelSize(0, 0);
            this.j = obtainStyledAttributes2.getColorStateList(3);
            obtainStyledAttributes2.recycle();
            if (obtainStyledAttributes.hasValue(16)) {
                this.j = obtainStyledAttributes.getColorStateList(16);
            }
            if (obtainStyledAttributes.hasValue(14)) {
                this.j = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{obtainStyledAttributes.getColor(14, 0), this.j.getDefaultColor()});
            }
            this.o = obtainStyledAttributes.getDimensionPixelSize(7, -1);
            this.p = obtainStyledAttributes.getDimensionPixelSize(6, -1);
            this.m = obtainStyledAttributes.getResourceId(0, 0);
            this.r = obtainStyledAttributes.getDimensionPixelSize(1, 0);
            this.t = obtainStyledAttributes.getInt(8, 1);
            this.s = obtainStyledAttributes.getInt(2, 0);
            obtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.l = (float) resources.getDimensionPixelSize(R.dimen.nr);
            this.q = resources.getDimensionPixelSize(R.dimen.np);
            int max = this.t == 0 ? Math.max(0, this.r - this.e) : 0;
            int i3 = c3.g;
            cVar.setPaddingRelative(max, 0, 0, 0);
            int i4 = this.t;
            if (i4 == 0) {
                cVar.setGravity(8388611);
            } else if (i4 == 1) {
                cVar.setGravity(1);
            }
            o(true);
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) {
        a(view);
    }

    @Override // android.widget.FrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }
}
