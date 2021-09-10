package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

public abstract class b0 extends RecyclerView.q {
    RecyclerView a;
    private Scroller b;
    private final RecyclerView.s c = new a();

    class a extends RecyclerView.s {
        boolean a = false;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void a(RecyclerView recyclerView, int i) {
            if (i == 0 && this.a) {
                this.a = false;
                b0.this.g();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void b(RecyclerView recyclerView, int i, int i2) {
            if (i != 0 || i2 != 0) {
                this.a = true;
            }
        }
    }

    class b extends q {
        b(Context context) {
            super(context);
        }

        /* access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.q, androidx.recyclerview.widget.RecyclerView.x
        public void i(View view, RecyclerView.y yVar, RecyclerView.x.a aVar) {
            b0 b0Var = b0.this;
            RecyclerView recyclerView = b0Var.a;
            if (recyclerView != null) {
                int[] b = b0Var.b(recyclerView.getLayoutManager(), view);
                int i = b[0];
                int i2 = b[1];
                int o = o(Math.max(Math.abs(i), Math.abs(i2)));
                if (o > 0) {
                    aVar.d(i, i2, o, this.j);
                }
            }
        }

        /* access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.q
        public float n(DisplayMetrics displayMetrics) {
            return 100.0f / ((float) displayMetrics.densityDpi);
        }
    }

    public void a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.a;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                recyclerView2.removeOnScrollListener(this.c);
                this.a.setOnFlingListener(null);
            }
            this.a = recyclerView;
            if (recyclerView == null) {
                return;
            }
            if (recyclerView.getOnFlingListener() == null) {
                this.a.addOnScrollListener(this.c);
                this.a.setOnFlingListener(this);
                this.b = new Scroller(this.a.getContext(), new DecelerateInterpolator());
                g();
                return;
            }
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
    }

    public abstract int[] b(RecyclerView.o oVar, View view);

    public int[] c(int i, int i2) {
        this.b.fling(0, 0, i, i2, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
        return new int[]{this.b.getFinalX(), this.b.getFinalY()};
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public q d(RecyclerView.o oVar) {
        if (!(oVar instanceof RecyclerView.x.b)) {
            return null;
        }
        return new b(this.a.getContext());
    }

    public abstract View e(RecyclerView.o oVar);

    public abstract int f(RecyclerView.o oVar, int i, int i2);

    /* access modifiers changed from: package-private */
    public void g() {
        RecyclerView.o layoutManager;
        View e;
        RecyclerView recyclerView = this.a;
        if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null && (e = e(layoutManager)) != null) {
            int[] b2 = b(layoutManager, e);
            if (b2[0] != 0 || b2[1] != 0) {
                this.a.smoothScrollBy(b2[0], b2[1]);
            }
        }
    }
}
