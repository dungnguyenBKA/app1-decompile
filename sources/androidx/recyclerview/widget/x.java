package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public class x extends b0 {
    private w d;
    private w e;

    class a extends q {
        a(Context context) {
            super(context);
        }

        /* access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.q, androidx.recyclerview.widget.RecyclerView.x
        public void i(View view, RecyclerView.y yVar, RecyclerView.x.a aVar) {
            x xVar = x.this;
            int[] b = xVar.b(xVar.a.getLayoutManager(), view);
            int i = b[0];
            int i2 = b[1];
            int o = o(Math.max(Math.abs(i), Math.abs(i2)));
            if (o > 0) {
                aVar.d(i, i2, o, this.j);
            }
        }

        /* access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.q
        public float n(DisplayMetrics displayMetrics) {
            return 100.0f / ((float) displayMetrics.densityDpi);
        }

        /* access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.q
        public int p(int i) {
            return Math.min(100, super.p(i));
        }
    }

    private int h(View view, w wVar) {
        return ((wVar.c(view) / 2) + wVar.e(view)) - ((wVar.l() / 2) + wVar.k());
    }

    private View i(RecyclerView.o oVar, w wVar) {
        int C = oVar.C();
        View view = null;
        if (C == 0) {
            return null;
        }
        int l = (wVar.l() / 2) + wVar.k();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < C; i2++) {
            View B = oVar.B(i2);
            int abs = Math.abs(((wVar.c(B) / 2) + wVar.e(B)) - l);
            if (abs < i) {
                view = B;
                i = abs;
            }
        }
        return view;
    }

    private w j(RecyclerView.o oVar) {
        w wVar = this.e;
        if (wVar == null || wVar.a != oVar) {
            this.e = new u(oVar);
        }
        return this.e;
    }

    private w k(RecyclerView.o oVar) {
        w wVar = this.d;
        if (wVar == null || wVar.a != oVar) {
            this.d = new v(oVar);
        }
        return this.d;
    }

    @Override // androidx.recyclerview.widget.b0
    public int[] b(RecyclerView.o oVar, View view) {
        int[] iArr = new int[2];
        if (oVar.i()) {
            iArr[0] = h(view, j(oVar));
        } else {
            iArr[0] = 0;
        }
        if (oVar.j()) {
            iArr[1] = h(view, k(oVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.b0
    public q d(RecyclerView.o oVar) {
        if (!(oVar instanceof RecyclerView.x.b)) {
            return null;
        }
        return new a(this.a.getContext());
    }

    @Override // androidx.recyclerview.widget.b0
    public View e(RecyclerView.o oVar) {
        if (oVar.j()) {
            return i(oVar, k(oVar));
        }
        if (oVar.i()) {
            return i(oVar, j(oVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.b0
    public int f(RecyclerView.o oVar, int i, int i2) {
        w wVar;
        PointF a2;
        int O = oVar.O();
        if (O == 0) {
            return -1;
        }
        View view = null;
        if (oVar.j()) {
            wVar = k(oVar);
        } else {
            wVar = oVar.i() ? j(oVar) : null;
        }
        if (wVar == null) {
            return -1;
        }
        int C = oVar.C();
        boolean z = false;
        View view2 = null;
        int i3 = RecyclerView.UNDEFINED_DURATION;
        int i4 = Integer.MAX_VALUE;
        for (int i5 = 0; i5 < C; i5++) {
            View B = oVar.B(i5);
            if (B != null) {
                int h = h(B, wVar);
                if (h <= 0 && h > i3) {
                    view2 = B;
                    i3 = h;
                }
                if (h >= 0 && h < i4) {
                    view = B;
                    i4 = h;
                }
            }
        }
        int i6 = 1;
        boolean z2 = !oVar.i() ? i2 > 0 : i > 0;
        if (z2 && view != null) {
            return oVar.X(view);
        }
        if (!(z2 || view2 == null)) {
            return oVar.X(view2);
        }
        if (z2) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int X = oVar.X(view);
        int O2 = oVar.O();
        if ((oVar instanceof RecyclerView.x.b) && (a2 = ((RecyclerView.x.b) oVar).a(O2 - 1)) != null && (a2.x < 0.0f || a2.y < 0.0f)) {
            z = true;
        }
        if (z == z2) {
            i6 = -1;
        }
        int i7 = X + i6;
        if (i7 < 0 || i7 >= O) {
            return -1;
        }
        return i7;
    }
}
