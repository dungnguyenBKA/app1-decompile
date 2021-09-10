package com.camerasideas.baseutils.widget;

import android.view.View;
import defpackage.u3;
import java.util.Objects;

class b extends u3.c {
    final /* synthetic */ DragFrameLayout a;

    b(DragFrameLayout dragFrameLayout) {
        this.a = dragFrameLayout;
    }

    @Override // defpackage.u3.c
    public int a(View view, int i, int i2) {
        return view.getLeft();
    }

    @Override // defpackage.u3.c
    public int b(View view, int i, int i2) {
        em.h("DragFrameLayout", "clampViewPositionVertical:" + i);
        DragFrameLayout dragFrameLayout = this.a;
        int i3 = DragFrameLayout.c;
        Objects.requireNonNull(dragFrameLayout);
        return 0;
    }

    @Override // defpackage.u3.c
    public int c(int i) {
        em.h("DragFrameLayout", "getOrderedChildIndex: " + i);
        return (this.a.getChildCount() - 1) - i;
    }

    @Override // defpackage.u3.c
    public int e(View view) {
        int measuredHeight = this.a.getMeasuredHeight() - view.getMeasuredHeight();
        em.h("DragFrameLayout", "verticalDragRange1=" + measuredHeight);
        DragFrameLayout dragFrameLayout = this.a;
        int i = DragFrameLayout.c;
        Objects.requireNonNull(dragFrameLayout);
        em.h("DragFrameLayout", "verticalDragRange2=0");
        Objects.requireNonNull(this.a);
        return 0;
    }

    @Override // defpackage.u3.c
    public void i(View view, int i) {
        DragFrameLayout dragFrameLayout = this.a;
        int i2 = DragFrameLayout.c;
        Objects.requireNonNull(dragFrameLayout);
    }

    @Override // defpackage.u3.c
    public void k(View view, int i, int i2, int i3, int i4) {
    }

    @Override // defpackage.u3.c
    public void l(View view, float f, float f2) {
        DragFrameLayout dragFrameLayout = this.a;
        int i = DragFrameLayout.c;
        Objects.requireNonNull(dragFrameLayout);
    }

    @Override // defpackage.u3.c
    public boolean m(View view, int i) {
        DragFrameLayout dragFrameLayout = this.a;
        int i2 = DragFrameLayout.c;
        Objects.requireNonNull(dragFrameLayout);
        return false;
    }
}
