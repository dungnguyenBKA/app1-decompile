package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;

public class ReboundRecyclerView extends FrameLayout {
    private OverScroller b;
    private VelocityTracker c;
    private int d;
    private int e;
    private int f;
    private int g = AdError.NETWORK_ERROR_CODE;
    private float h = 0.55f;
    private RecyclerView i;
    private float j;
    private boolean k = false;

    public ReboundRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public void a(Context context) {
        this.b = new OverScroller(context);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.d = viewConfiguration.getScaledMinimumFlingVelocity();
        this.e = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f = viewConfiguration.getScaledTouchSlop();
        RecyclerView recyclerView = new RecyclerView(context);
        this.i = recyclerView;
        recyclerView.setHorizontalScrollBarEnabled(false);
        this.i.setNestedScrollingEnabled(false);
        addView(this.i, new FrameLayout.LayoutParams(-1, -1));
    }

    public void computeScroll() {
        if (this.b.computeScrollOffset()) {
            scrollTo(this.b.getCurrX(), this.b.getCurrY());
            invalidate();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x000d, code lost:
        if (r0 != 3) goto L_0x0047;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            int r0 = r4.getAction()
            r1 = 1
            if (r0 == 0) goto L_0x0029
            if (r0 == r1) goto L_0x0025
            r2 = 2
            if (r0 == r2) goto L_0x0010
            r1 = 3
            if (r0 == r1) goto L_0x0025
            goto L_0x0047
        L_0x0010:
            float r0 = r4.getX()
            float r2 = r3.j
            float r2 = r2 - r0
            r3.j = r0
            float r0 = java.lang.Math.abs(r2)
            int r2 = r3.f
            float r2 = (float) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x0047
            return r1
        L_0x0025:
            r0 = 0
            r3.k = r0
            goto L_0x0047
        L_0x0029:
            boolean r0 = r3.k
            if (r0 != 0) goto L_0x002f
            r3.k = r1
        L_0x002f:
            android.widget.OverScroller r0 = r3.b
            boolean r0 = r0.isFinished()
            if (r0 != 0) goto L_0x003c
            android.widget.OverScroller r0 = r3.b
            r0.forceFinished(r1)
        L_0x003c:
            androidx.recyclerview.widget.RecyclerView r0 = r3.i
            r0.stopScroll()
            float r0 = r4.getX()
            r3.j = r0
        L_0x0047:
            boolean r4 = super.onInterceptTouchEvent(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.ReboundRecyclerView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0056, code lost:
        if (r0 >= 0) goto L_0x0123;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0086, code lost:
        if (r0 <= 0) goto L_0x0123;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r0 != 3) goto L_0x0123;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
        // Method dump skipped, instructions count: 292
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.ReboundRecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public ReboundRecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }
}
