package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public class r extends b0 {
    private w d;
    private w e;

    private int h(View view, w wVar) {
        return ((wVar.c(view) / 2) + wVar.e(view)) - ((wVar.l() / 2) + wVar.k());
    }

    private int i(RecyclerView.o oVar, w wVar, int i, int i2) {
        int max;
        int[] c = c(i, i2);
        int C = oVar.C();
        float f = 1.0f;
        if (C != 0) {
            View view = null;
            View view2 = null;
            int i3 = Integer.MAX_VALUE;
            int i4 = RecyclerView.UNDEFINED_DURATION;
            for (int i5 = 0; i5 < C; i5++) {
                View B = oVar.B(i5);
                int X = oVar.X(B);
                if (X != -1) {
                    if (X < i3) {
                        view = B;
                        i3 = X;
                    }
                    if (X > i4) {
                        view2 = B;
                        i4 = X;
                    }
                }
            }
            if (!(view == null || view2 == null || (max = Math.max(wVar.b(view), wVar.b(view2)) - Math.min(wVar.e(view), wVar.e(view2))) == 0)) {
                f = (((float) max) * 1.0f) / ((float) ((i4 - i3) + 1));
            }
        }
        if (f <= 0.0f) {
            return 0;
        }
        return Math.round(((float) (Math.abs(c[0]) > Math.abs(c[1]) ? c[0] : c[1])) / f);
    }

    private View j(RecyclerView.o oVar, w wVar) {
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

    private w k(RecyclerView.o oVar) {
        w wVar = this.e;
        if (wVar == null || wVar.a != oVar) {
            this.e = new u(oVar);
        }
        return this.e;
    }

    private w l(RecyclerView.o oVar) {
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
            iArr[0] = h(view, k(oVar));
        } else {
            iArr[0] = 0;
        }
        if (oVar.j()) {
            iArr[1] = h(view, l(oVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.b0
    public View e(RecyclerView.o oVar) {
        if (oVar.j()) {
            return j(oVar, l(oVar));
        }
        if (oVar.i()) {
            return j(oVar, k(oVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.b0
    public int f(RecyclerView.o oVar, int i, int i2) {
        int O;
        View e2;
        int X;
        int i3;
        PointF a;
        int i4;
        int i5;
        if (!(oVar instanceof RecyclerView.x.b) || (O = oVar.O()) == 0 || (e2 = e(oVar)) == null || (X = oVar.X(e2)) == -1 || (a = ((RecyclerView.x.b) oVar).a(O - 1)) == null) {
            return -1;
        }
        int i6 = 0;
        if (oVar.i()) {
            i4 = i(oVar, k(oVar), i, 0);
            if (a.x < 0.0f) {
                i4 = -i4;
            }
        } else {
            i4 = 0;
        }
        if (oVar.j()) {
            i5 = i(oVar, l(oVar), 0, i2);
            if (a.y < 0.0f) {
                i5 = -i5;
            }
        } else {
            i5 = 0;
        }
        if (oVar.j()) {
            i4 = i5;
        }
        if (i4 == 0) {
            return -1;
        }
        int i7 = X + i4;
        if (i7 >= 0) {
            i6 = i7;
        }
        return i6 >= O ? i3 : i6;
    }
}
