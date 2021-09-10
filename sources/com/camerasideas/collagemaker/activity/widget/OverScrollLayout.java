package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class OverScrollLayout extends LinearLayout {
    private RecyclerView b;
    private Rect c;
    private boolean d;
    private float e;
    private boolean f;
    private boolean g;

    public OverScrollLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean a() {
        View childAt = this.b.getChildAt(0);
        if (((LinearLayoutManager) this.b.getLayoutManager()).x1() != 0 && this.b.getAdapter().b() != 0) {
            return false;
        }
        if (this.g) {
            if ((this.b.getChildCount() > 0 ? childAt.getRight() : 0) <= this.b.getRight() - this.b.getLeft()) {
                return true;
            }
            return false;
        }
        if ((this.b.getChildCount() > 0 ? childAt.getLeft() : 0) >= 0) {
            return true;
        }
        return false;
    }

    private boolean b() {
        View childAt;
        int b2 = this.b.getAdapter().b() - 1;
        int A1 = ((LinearLayoutManager) this.b.getLayoutManager()).A1();
        if (A1 < b2 || (childAt = this.b.getChildAt(Math.min(A1 - ((LinearLayoutManager) this.b.getLayoutManager()).x1(), this.b.getChildCount() - 1))) == null) {
            return false;
        }
        if (this.g) {
            if (childAt.getLeft() >= 0) {
                return true;
            }
            return false;
        } else if (childAt.getRight() <= this.b.getRight() - this.b.getLeft()) {
            return true;
        } else {
            return false;
        }
    }

    private void c() {
        TranslateAnimation translateAnimation = new TranslateAnimation((float) (this.b.getLeft() - this.c.left), 0.0f, 0.0f, 0.0f);
        translateAnimation.setDuration(400);
        this.b.startAnimation(translateAnimation);
        RecyclerView recyclerView = this.b;
        Rect rect = this.c;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        this.d = false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        Rect rect = this.c;
        if (x >= ((float) rect.right) || x <= ((float) rect.left)) {
            if (this.d) {
                c();
            }
            return true;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return true;
                    }
                }
            }
            if (this.d) {
                c();
            }
            if (!this.f || super.dispatchTouchEvent(motionEvent)) {
                return true;
            }
            return false;
        }
        this.e = motionEvent.getX();
        int x2 = (int) (motionEvent.getX() - this.e);
        boolean z = !this.g ? !(x2 <= 30 || !a()) : !(x2 >= 0 || x2 >= -30 || !a());
        boolean z2 = !this.g ? !(x2 >= 0 || x2 >= -30 || !b()) : !(x2 <= 30 || !b());
        if (z || z2) {
            motionEvent.setAction(3);
            super.dispatchTouchEvent(motionEvent);
            int i = (int) (((float) x2) * 0.3f);
            RecyclerView recyclerView = this.b;
            Rect rect2 = this.c;
            recyclerView.layout(rect2.left + i, rect2.top, rect2.right + i, rect2.bottom);
            this.d = true;
            this.f = false;
            return true;
        }
        this.e = motionEvent.getX();
        this.d = false;
        this.f = true;
        return super.dispatchTouchEvent(motionEvent);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.b = (RecyclerView) getChildAt(0);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.c.set(this.b.getLeft(), this.b.getTop(), this.b.getRight(), this.b.getBottom());
    }

    public OverScrollLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Rect();
        boolean z = false;
        this.d = false;
        this.f = false;
        this.g = context.getResources().getConfiguration().getLayoutDirection() == 1 ? true : z;
    }
}
