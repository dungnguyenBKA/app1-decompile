package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.core.widget.c;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.Objects;

@ViewPager.c
public class PagerTitleStrip extends ViewGroup {
    private static final int[] p = {16842804, 16842901, 16842904, 16842927};
    private static final int[] q = {16843660};
    ViewPager b;
    TextView c;
    TextView d;
    TextView e;
    private int f = -1;
    float g = -1.0f;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private final a l = new a();
    private WeakReference<a> m;
    private int n;
    int o;

    /* access modifiers changed from: private */
    public class a extends DataSetObserver implements ViewPager.g, ViewPager.f {
        private int b;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void a(int i, float f, int i2) {
            if (f > 0.5f) {
                i++;
            }
            PagerTitleStrip.this.g(i, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void b(int i) {
            this.b = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.g
        public void c(int i) {
            if (this.b == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                ViewPager viewPager = pagerTitleStrip.b;
                int i2 = viewPager.e;
                Objects.requireNonNull(viewPager);
                pagerTitleStrip.f(i2, null);
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                float f = pagerTitleStrip2.g;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                pagerTitleStrip2.g(pagerTitleStrip2.b.e, f, true);
            }
        }

        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            ViewPager viewPager = pagerTitleStrip.b;
            int i = viewPager.e;
            Objects.requireNonNull(viewPager);
            pagerTitleStrip.f(i, null);
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            float f = pagerTitleStrip2.g;
            if (f < 0.0f) {
                f = 0.0f;
            }
            pagerTitleStrip2.g(pagerTitleStrip2.b.e, f, true);
        }
    }

    /* access modifiers changed from: private */
    public static class b extends SingleLineTransformationMethod {
        private Locale b;

        b(Context context) {
            this.b = context.getResources().getConfiguration().locale;
        }

        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.b);
            }
            return null;
        }
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TextView textView = new TextView(context);
        this.c = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.d = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.e = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            c.h(this.c, resourceId);
            c.h(this.d, resourceId);
            c.h(this.e, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            float f2 = (float) dimensionPixelSize;
            this.c.setTextSize(0, f2);
            this.d.setTextSize(0, f2);
            this.e.setTextSize(0, f2);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.c.setTextColor(color);
            this.d.setTextColor(color);
            this.e.setTextColor(color);
        }
        this.i = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        int defaultColor = this.d.getTextColors().getDefaultColor();
        this.o = defaultColor;
        int i2 = ((int) 153.0f) & 255;
        this.n = i2;
        int i3 = (defaultColor & 16777215) | (i2 << 24);
        this.c.setTextColor(i3);
        this.e.setTextColor(i3);
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        this.d.setEllipsize(TextUtils.TruncateAt.END);
        this.e.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, q);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            c(this.c);
            c(this.d);
            c(this.e);
        } else {
            this.c.setSingleLine();
            this.d.setSingleLine();
            this.e.setSingleLine();
        }
        this.h = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void c(TextView textView) {
        textView.setTransformationMethod(new b(textView.getContext()));
    }

    /* access modifiers changed from: package-private */
    public int a() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int b() {
        return this.h;
    }

    public void d(int i2) {
        this.h = i2;
        requestLayout();
    }

    /* access modifiers changed from: package-private */
    public void e(a aVar, a aVar2) {
        if (aVar != null) {
            aVar.b(this.l);
            this.m = null;
        }
        ViewPager viewPager = this.b;
        if (viewPager != null) {
            this.f = -1;
            this.g = -1.0f;
            f(viewPager.e, null);
            requestLayout();
        }
    }

    /* access modifiers changed from: package-private */
    public void f(int i2, a aVar) {
        if (aVar != null) {
            aVar.a();
        }
        this.j = true;
        this.c.setText((CharSequence) null);
        this.d.setText((CharSequence) null);
        int i3 = i2 + 1;
        this.e.setText((CharSequence) null);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((float) ((getWidth() - getPaddingLeft()) - getPaddingRight())) * 0.8f)), RecyclerView.UNDEFINED_DURATION);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), RecyclerView.UNDEFINED_DURATION);
        this.c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.e.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f = i2;
        if (!this.k) {
            g(i2, this.g, false);
        }
        this.j = false;
    }

    /* access modifiers changed from: package-private */
    public void g(int i2, float f2, boolean z) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (i2 != this.f) {
            Objects.requireNonNull(this.b);
            f(i2, null);
        } else if (!z && f2 == this.g) {
            return;
        }
        this.k = true;
        int measuredWidth = this.c.getMeasuredWidth();
        int measuredWidth2 = this.d.getMeasuredWidth();
        int measuredWidth3 = this.e.getMeasuredWidth();
        int i7 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i8 = paddingRight + i7;
        int i9 = (width - (paddingLeft + i7)) - i8;
        float f3 = 0.5f + f2;
        if (f3 > 1.0f) {
            f3 -= 1.0f;
        }
        int i10 = ((width - i8) - ((int) (((float) i9) * f3))) - i7;
        int i11 = measuredWidth2 + i10;
        int baseline = this.c.getBaseline();
        int baseline2 = this.d.getBaseline();
        int baseline3 = this.e.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i12 = max - baseline;
        int i13 = max - baseline2;
        int i14 = max - baseline3;
        int max2 = Math.max(Math.max(this.c.getMeasuredHeight() + i12, this.d.getMeasuredHeight() + i13), this.e.getMeasuredHeight() + i14);
        int i15 = this.i & 112;
        if (i15 == 16) {
            i6 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i15 != 80) {
            i5 = i12 + paddingTop;
            i3 = i13 + paddingTop;
            i4 = paddingTop + i14;
            TextView textView = this.d;
            textView.layout(i10, i3, i11, textView.getMeasuredHeight() + i3);
            int min = Math.min(paddingLeft, (i10 - this.h) - measuredWidth);
            TextView textView2 = this.c;
            textView2.layout(min, i5, measuredWidth + min, textView2.getMeasuredHeight() + i5);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i11 + this.h);
            TextView textView3 = this.e;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.g = f2;
            this.k = false;
        } else {
            i6 = (height - paddingBottom) - max2;
        }
        i5 = i12 + i6;
        i3 = i13 + i6;
        i4 = i6 + i14;
        TextView textView4 = this.d;
        textView4.layout(i10, i3, i11, textView4.getMeasuredHeight() + i3);
        int min2 = Math.min(paddingLeft, (i10 - this.h) - measuredWidth);
        TextView textView22 = this.c;
        textView22.layout(min2, i5, measuredWidth + min2, textView22.getMeasuredHeight() + i5);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i11 + this.h);
        TextView textView32 = this.e;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.g = f2;
        this.k = false;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            Objects.requireNonNull(viewPager);
            viewPager.y(this.l);
            viewPager.a(this.l);
            this.b = viewPager;
            WeakReference<a> weakReference = this.m;
            e(weakReference != null ? weakReference.get() : null, null);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.b;
        if (viewPager != null) {
            Objects.requireNonNull(viewPager);
            e(null, null);
            this.b.y(null);
            this.b.s(this.l);
            this.b = null;
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        if (this.b != null) {
            float f2 = this.g;
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            g(this.f, f2, true);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int i4;
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, paddingBottom, -2);
            int size = View.MeasureSpec.getSize(i2);
            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, (int) (((float) size) * 0.2f), -2);
            this.c.measure(childMeasureSpec2, childMeasureSpec);
            this.d.measure(childMeasureSpec2, childMeasureSpec);
            this.e.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i3) == 1073741824) {
                i4 = View.MeasureSpec.getSize(i3);
            } else {
                i4 = Math.max(a(), this.d.getMeasuredHeight() + paddingBottom);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i4, i3, this.d.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    public void requestLayout() {
        if (!this.j) {
            super.requestLayout();
        }
    }
}
