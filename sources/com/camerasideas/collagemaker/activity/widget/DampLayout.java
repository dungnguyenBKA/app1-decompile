package com.camerasideas.collagemaker.activity.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import org.apache.http.HttpStatus;

public class DampLayout extends LinearLayout implements w2 {
    private View b;
    private View c;
    private View d;
    private b e = null;
    private boolean f;

    /* access modifiers changed from: private */
    public class b extends ValueAnimator {
        private View b;

        b(a aVar) {
            setInterpolator(new DecelerateInterpolator());
            setDuration(260L);
            addUpdateListener(new i(this));
        }

        static void a(b bVar, View view, float f) {
            Objects.requireNonNull(bVar);
            bVar.setFloatValues(f, 200.0f);
            bVar.b = view;
            bVar.start();
        }
    }

    public DampLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(1);
        this.b = new View(context);
        this.c = new View(context);
    }

    private void a(int i, View view) {
        if (i > 0 && getScrollY() > 200 && !view.canScrollVertically(-1)) {
            scrollTo(0, HttpStatus.SC_OK);
        }
        if (i < 0 && getScrollY() < 200 && !view.canScrollVertically(1)) {
            scrollTo(0, HttpStatus.SC_OK);
        }
    }

    private int b(int i) {
        double abs = (double) Math.abs(200 - getScrollY());
        Double.isNaN(abs);
        int i2 = (int) (abs * 0.01d);
        return i2 < 2 ? i : i / i2;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.d = getChildAt(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) HttpStatus.SC_OK);
        addView(this.b, 0, layoutParams);
        addView(this.c, getChildCount(), layoutParams);
        scrollBy(0, HttpStatus.SC_OK);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.d.getLayoutParams().height = getMeasuredHeight();
    }

    @Override // defpackage.w2
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return false;
    }

    @Override // defpackage.w2
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return getScrollY() != 200;
    }

    @Override // defpackage.w2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        getParent().requestDisallowInterceptTouchEvent(true);
        boolean z = i2 > 0 && getScrollY() < 200 && !view.canScrollVertically(-1);
        boolean z2 = i2 < 0 && !view.canScrollVertically(-1);
        boolean z3 = i2 < 0 && getScrollY() > 200 && !view.canScrollVertically(1);
        boolean z4 = i2 > 0 && !view.canScrollVertically(1);
        if (z || z2 || z3 || z4) {
            if (this.e.isStarted()) {
                this.e.pause();
            }
            scrollBy(0, b(i2));
            if (this.e.isPaused()) {
                this.e.cancel();
            }
            iArr[1] = i2;
        }
        a(i2, view);
    }

    @Override // defpackage.w2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        boolean z = true;
        getParent().requestDisallowInterceptTouchEvent(true);
        if ((Math.floor((double) getScrollY()) == 0.0d || Math.ceil((double) getScrollY()) == 400.0d) && !this.f) {
            b.a(this.e, view, (float) (i4 > 0 ? HttpStatus.SC_BAD_REQUEST : 0));
            this.f = true;
        }
        if (!this.f) {
            boolean z2 = i4 < 0 && !view.canScrollVertically(-1);
            if (i4 <= 0 || view.canScrollVertically(1)) {
                z = false;
            }
            if (z2 || z) {
                if (this.e.isStarted()) {
                    this.e.pause();
                }
                scrollBy(0, b(i4));
                if (this.e.isPaused()) {
                    this.e.cancel();
                }
            }
            a(i4, view);
        }
    }

    @Override // defpackage.w2
    public void onNestedScrollAccepted(View view, View view2, int i) {
        if (this.e == null) {
            this.e = new b(null);
        }
    }

    @Override // defpackage.w2
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return view2 instanceof RecyclerView;
    }

    @Override // defpackage.w2
    public void onStopNestedScroll(View view) {
        this.f = false;
        if (getScrollY() != 200) {
            b.a(this.e, view, (float) getScrollY());
        }
    }

    public void scrollTo(int i, int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 400) {
            i2 = HttpStatus.SC_BAD_REQUEST;
        }
        super.scrollTo(i, i2);
    }
}
