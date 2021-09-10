package com.google.android.material.datepicker;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Calendar;

class f extends RecyclerView.n {
    private final Calendar a = c.e();
    private final Calendar b = c.e();
    final /* synthetic */ e c;

    f(e eVar) {
        this.c = eVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void g(Canvas canvas, RecyclerView recyclerView, RecyclerView.y yVar) {
        int i;
        if ((recyclerView.getAdapter() instanceof t) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            t tVar = (t) recyclerView.getAdapter();
            GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
            for (j2<Long, Long> j2Var : this.c.W.j()) {
                F f = j2Var.a;
                if (!(f == null || j2Var.b == null)) {
                    this.a.setTimeInMillis(f.longValue());
                    this.b.setTimeInMillis(j2Var.b.longValue());
                    int A = tVar.A(this.a.get(1));
                    int A2 = tVar.A(this.b.get(1));
                    View w = gridLayoutManager.w(A);
                    View w2 = gridLayoutManager.w(A2);
                    int a2 = A / gridLayoutManager.a2();
                    int a22 = A2 / gridLayoutManager.a2();
                    for (int i2 = a2; i2 <= a22; i2++) {
                        View w3 = gridLayoutManager.w(gridLayoutManager.a2() * i2);
                        if (w3 != null) {
                            int top = w3.getTop() + this.c.a0.d.c();
                            int bottom = w3.getBottom() - this.c.a0.d.b();
                            int width = i2 == a2 ? (w.getWidth() / 2) + w.getLeft() : 0;
                            if (i2 == a22) {
                                i = (w2.getWidth() / 2) + w2.getLeft();
                            } else {
                                i = recyclerView.getWidth();
                            }
                            canvas.drawRect((float) width, (float) top, (float) i, (float) bottom, this.c.a0.h);
                        }
                    }
                }
            }
        }
    }
}
