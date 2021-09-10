package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import java.util.Objects;
import org.apache.http.HttpStatus;

public class DragHorizontalScrollView extends LinearLayout implements w2 {
    public static final /* synthetic */ int g = 0;
    private View b;
    private View c;
    private View d;
    private boolean e;
    private int f = 2;

    private class b extends Animation {
        private float b = 1.0f;

        b(a aVar) {
            DragHorizontalScrollView.this.e = true;
        }

        /* access modifiers changed from: protected */
        public void applyTransformation(float f, Transformation transformation) {
            float a = ic.a(this.b, 0.0f, f, 0.0f);
            DragHorizontalScrollView dragHorizontalScrollView = DragHorizontalScrollView.this;
            int i = DragHorizontalScrollView.g;
            Objects.requireNonNull(dragHorizontalScrollView);
            DragHorizontalScrollView dragHorizontalScrollView2 = DragHorizontalScrollView.this;
            dragHorizontalScrollView2.scrollBy((int) (((float) (500 - dragHorizontalScrollView2.getScrollX())) * a), 0);
            if (a == 1.0f) {
                DragHorizontalScrollView.this.e = false;
            }
        }

        public void initialize(int i, int i2, int i3, int i4) {
            super.initialize(i, i2, i3, i4);
            setDuration(260);
            setInterpolator(new AccelerateInterpolator());
        }
    }

    public DragHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(0);
        View view = new View(context);
        this.b = view;
        view.setBackgroundColor(0);
        View view2 = new View(context);
        this.c = view2;
        view2.setBackgroundColor(0);
        setLayoutDirection(0);
    }

    public int getNestedScrollAxes() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.d = getChildAt(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) HttpStatus.SC_INTERNAL_SERVER_ERROR, -1);
        addView(this.b, 0, layoutParams);
        addView(this.c, getChildCount(), layoutParams);
        scrollBy(HttpStatus.SC_INTERNAL_SERVER_ERROR, 0);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.d.getLayoutParams().width = getMeasuredWidth();
    }

    @Override // defpackage.w2
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return false;
    }

    @Override // defpackage.w2
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return getScrollX() != 500;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:43:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0021  */
    @Override // defpackage.w2
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onNestedPreScroll(android.view.View r8, int r9, int r10, int[] r11) {
        /*
        // Method dump skipped, instructions count: 132
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.DragHorizontalScrollView.onNestedPreScroll(android.view.View, int, int, int[]):void");
    }

    @Override // defpackage.w2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
    }

    @Override // defpackage.w2
    public void onNestedScrollAccepted(View view, View view2, int i) {
    }

    @Override // defpackage.w2
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (view2 instanceof RecyclerView) && !this.e;
    }

    @Override // defpackage.w2
    public void onStopNestedScroll(View view) {
        startAnimation(new b(null));
    }

    public void scrollTo(int i, int i2) {
        if (i < 0) {
            i = 0;
        } else if (i > 1000) {
            i = AdError.NETWORK_ERROR_CODE;
        }
        super.scrollTo(i, i2);
    }
}
