package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m;
import defpackage.n3;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager {
    boolean G = false;
    int H = -1;
    int[] I;
    View[] J;
    final SparseIntArray K = new SparseIntArray();
    final SparseIntArray L = new SparseIntArray();
    b M = new a();
    final Rect N = new Rect();

    public static final class a extends b {
        @Override // androidx.recyclerview.widget.GridLayoutManager.b
        public int b(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.b
        public int c(int i) {
            return 1;
        }
    }

    public static abstract class b {
        final SparseIntArray a = new SparseIntArray();
        final SparseIntArray b = new SparseIntArray();

        public int a(int i, int i2) {
            int c = c(i);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int c2 = c(i5);
                i3 += c2;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = c2;
                }
            }
            return i3 + c > i2 ? i4 + 1 : i4;
        }

        public int b(int i, int i2) {
            int c = c(i);
            if (c == i2) {
                return 0;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i; i4++) {
                int c2 = c(i4);
                i3 += c2;
                if (i3 == i2) {
                    i3 = 0;
                } else if (i3 > i2) {
                    i3 = c2;
                }
            }
            if (c + i3 <= i2) {
                return i3;
            }
            return 0;
        }

        public abstract int c(int i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        h2(RecyclerView.o.Y(context, attributeSet, i, i2).b);
    }

    private void X1(int i) {
        int i2;
        int[] iArr = this.I;
        int i3 = this.H;
        if (!(iArr != null && iArr.length == i3 + 1 && iArr[iArr.length - 1] == i)) {
            iArr = new int[(i3 + 1)];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.I = iArr;
    }

    private void Y1() {
        View[] viewArr = this.J;
        if (viewArr == null || viewArr.length != this.H) {
            this.J = new View[this.H];
        }
    }

    private int b2(RecyclerView.u uVar, RecyclerView.y yVar, int i) {
        if (!yVar.g) {
            return this.M.a(i, this.H);
        }
        int c = uVar.c(i);
        if (c != -1) {
            return this.M.a(c, this.H);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    private int c2(RecyclerView.u uVar, RecyclerView.y yVar, int i) {
        if (!yVar.g) {
            return this.M.b(i, this.H);
        }
        int i2 = this.L.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int c = uVar.c(i);
        if (c != -1) {
            return this.M.b(c, this.H);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    private int d2(RecyclerView.u uVar, RecyclerView.y yVar, int i) {
        if (!yVar.g) {
            return this.M.c(i);
        }
        int i2 = this.K.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int c = uVar.c(i);
        if (c != -1) {
            return this.M.c(c);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    private void f2(View view, int i, boolean z) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int Z1 = Z1(layoutParams.e, layoutParams.f);
        if (this.r == 1) {
            i2 = RecyclerView.o.D(Z1, i, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            i3 = RecyclerView.o.D(this.t.l(), N(), i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            int D = RecyclerView.o.D(Z1, i, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            int D2 = RecyclerView.o.D(this.t.l(), f0(), i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
            i3 = D;
            i2 = D2;
        }
        g2(view, i2, i3, z);
    }

    private void g2(View view, int i, int i2, boolean z) {
        boolean z2;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z) {
            z2 = h1(view, i, i2, layoutParams);
        } else {
            z2 = f1(view, i, i2, layoutParams);
        }
        if (z2) {
            view.measure(i, i2);
        }
    }

    private void j2() {
        int i;
        int i2;
        if (this.r == 1) {
            i2 = e0() - V();
            i = U();
        } else {
            i2 = M() - T();
            i = W();
        }
        X1(i2 - i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void B0(RecyclerView recyclerView, int i, int i2) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void C0(RecyclerView recyclerView) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void D0(RecyclerView recyclerView, int i, int i2, int i3) {
        this.M.a.clear();
        this.M.b.clear();
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public View D1(RecyclerView.u uVar, RecyclerView.y yVar, int i, int i2, int i3) {
        r1();
        int k = this.t.k();
        int g = this.t.g();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View B = B(i);
            int X = X(B);
            if (X >= 0 && X < i3 && c2(uVar, yVar, X) == 0) {
                if (((RecyclerView.LayoutParams) B.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = B;
                    }
                } else if (this.t.e(B) < g && this.t.b(B) >= k) {
                    return B;
                } else {
                    if (view == null) {
                        view = B;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int E(RecyclerView.u uVar, RecyclerView.y yVar) {
        if (this.r == 1) {
            return this.H;
        }
        if (yVar.b() < 1) {
            return 0;
        }
        return b2(uVar, yVar, yVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void E0(RecyclerView recyclerView, int i, int i2) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void G0(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public void H0(RecyclerView.u uVar, RecyclerView.y yVar) {
        if (yVar.g) {
            int C = C();
            for (int i = 0; i < C; i++) {
                LayoutParams layoutParams = (LayoutParams) B(i).getLayoutParams();
                int a2 = layoutParams.a();
                this.K.put(a2, layoutParams.f);
                this.L.put(a2, layoutParams.e);
            }
        }
        super.H0(uVar, yVar);
        this.K.clear();
        this.L.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public void I0(RecyclerView.y yVar) {
        this.B = null;
        this.z = -1;
        this.A = RecyclerView.UNDEFINED_DURATION;
        this.C.d();
        this.G = false;
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void K1(RecyclerView.u uVar, RecyclerView.y yVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z;
        View c;
        int j = this.t.j();
        boolean z2 = j != 1073741824;
        int i15 = C() > 0 ? this.I[this.H] : 0;
        if (z2) {
            j2();
        }
        boolean z3 = cVar.e == 1;
        int i16 = this.H;
        if (!z3) {
            i16 = c2(uVar, yVar, cVar.d) + d2(uVar, yVar, cVar.d);
        }
        int i17 = 0;
        while (i17 < this.H && cVar.b(yVar) && i16 > 0) {
            int i18 = cVar.d;
            int d2 = d2(uVar, yVar, i18);
            if (d2 <= this.H) {
                i16 -= d2;
                if (i16 < 0 || (c = cVar.c(uVar)) == null) {
                    break;
                }
                this.J[i17] = c;
                i17++;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Item at position ");
                sb.append(i18);
                sb.append(" requires ");
                sb.append(d2);
                sb.append(" spans but GridLayoutManager has only ");
                throw new IllegalArgumentException(ic.k(sb, this.H, " spans."));
            }
        }
        if (i17 == 0) {
            bVar.b = true;
            return;
        }
        if (z3) {
            i4 = 0;
            i3 = i17;
            i2 = 0;
            i = 1;
        } else {
            i4 = i17 - 1;
            i3 = -1;
            i2 = 0;
            i = -1;
        }
        while (i4 != i3) {
            View view = this.J[i4];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int d22 = d2(uVar, yVar, X(view));
            layoutParams.f = d22;
            layoutParams.e = i2;
            i2 += d22;
            i4 += i;
        }
        float f = 0.0f;
        int i19 = 0;
        for (int i20 = 0; i20 < i17; i20++) {
            View view2 = this.J[i20];
            if (cVar.k != null) {
                z = false;
                if (z3) {
                    b(view2);
                } else {
                    c(view2, 0);
                }
            } else if (z3) {
                d(view2);
                z = false;
            } else {
                z = false;
                e(view2, 0);
            }
            h(view2, this.N);
            f2(view2, j, z);
            int c2 = this.t.c(view2);
            if (c2 > i19) {
                i19 = c2;
            }
            float d = (((float) this.t.d(view2)) * 1.0f) / ((float) ((LayoutParams) view2.getLayoutParams()).f);
            if (d > f) {
                f = d;
            }
        }
        if (z2) {
            X1(Math.max(Math.round(f * ((float) this.H)), i15));
            i19 = 0;
            for (int i21 = 0; i21 < i17; i21++) {
                View view3 = this.J[i21];
                f2(view3, 1073741824, true);
                int c3 = this.t.c(view3);
                if (c3 > i19) {
                    i19 = c3;
                }
            }
        }
        for (int i22 = 0; i22 < i17; i22++) {
            View view4 = this.J[i22];
            if (this.t.c(view4) != i19) {
                LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
                Rect rect = layoutParams2.b;
                int i23 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                int i24 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                int Z1 = Z1(layoutParams2.e, layoutParams2.f);
                if (this.r == 1) {
                    i14 = RecyclerView.o.D(Z1, 1073741824, i24, ((ViewGroup.MarginLayoutParams) layoutParams2).width, false);
                    i13 = View.MeasureSpec.makeMeasureSpec(i19 - i23, 1073741824);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i19 - i24, 1073741824);
                    i13 = RecyclerView.o.D(Z1, 1073741824, i23, ((ViewGroup.MarginLayoutParams) layoutParams2).height, false);
                    i14 = makeMeasureSpec;
                }
                g2(view4, i14, i13, true);
            }
        }
        bVar.a = i19;
        if (this.r == 1) {
            if (cVar.f == -1) {
                i8 = cVar.b;
                i7 = i8 - i19;
            } else {
                i7 = cVar.b;
                i8 = i19 + i7;
            }
            i6 = 0;
            i5 = 0;
        } else {
            if (cVar.f == -1) {
                int i25 = cVar.b;
                i6 = i25;
                i5 = i25 - i19;
            } else {
                int i26 = cVar.b;
                i5 = i26;
                i6 = i19 + i26;
            }
            i7 = 0;
            i8 = 0;
        }
        int i27 = 0;
        while (i27 < i17) {
            View view5 = this.J[i27];
            LayoutParams layoutParams3 = (LayoutParams) view5.getLayoutParams();
            if (this.r != 1) {
                i7 = this.I[layoutParams3.e] + W();
                i8 = this.t.d(view5) + i7;
            } else if (J1()) {
                i6 = U() + this.I[this.H - layoutParams3.e];
                i5 = i6 - this.t.d(view5);
            } else {
                int U = U() + this.I[layoutParams3.e];
                i12 = i8;
                i11 = i7;
                i9 = U;
                i10 = this.t.d(view5) + U;
                l0(view5, i9, i11, i10, i12);
                if (!layoutParams3.c() || layoutParams3.b()) {
                    bVar.c = true;
                }
                bVar.d |= view5.hasFocusable();
                i27++;
                i8 = i12;
                i7 = i11;
                i6 = i10;
                i5 = i9;
            }
            i12 = i8;
            i11 = i7;
            i10 = i6;
            i9 = i5;
            l0(view5, i9, i11, i10, i12);
            if (!layoutParams3.c()) {
            }
            bVar.c = true;
            bVar.d |= view5.hasFocusable();
            i27++;
            i8 = i12;
            i7 = i11;
            i6 = i10;
            i5 = i9;
        }
        Arrays.fill(this.J, (Object) null);
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void L1(RecyclerView.u uVar, RecyclerView.y yVar, LinearLayoutManager.a aVar, int i) {
        j2();
        if (yVar.b() > 0 && !yVar.g) {
            boolean z = i == 1;
            int c2 = c2(uVar, yVar, aVar.b);
            if (z) {
                while (c2 > 0) {
                    int i2 = aVar.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    aVar.b = i3;
                    c2 = c2(uVar, yVar, i3);
                }
            } else {
                int b2 = yVar.b() - 1;
                int i4 = aVar.b;
                while (i4 < b2) {
                    int i5 = i4 + 1;
                    int c22 = c2(uVar, yVar, i5);
                    if (c22 <= c2) {
                        break;
                    }
                    i4 = i5;
                    c2 = c22;
                }
                aVar.b = i4;
            }
        }
        Y1();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void T1(boolean z) {
        if (!z) {
            super.T1(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public int X0(int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        j2();
        Y1();
        if (this.r == 1) {
            return 0;
        }
        return Q1(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public int Z0(int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        j2();
        Y1();
        if (this.r == 0) {
            return 0;
        }
        return Q1(i, uVar, yVar);
    }

    /* access modifiers changed from: package-private */
    public int Z1(int i, int i2) {
        if (this.r != 1 || !J1()) {
            int[] iArr = this.I;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.I;
        int i3 = this.H;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int a0(RecyclerView.u uVar, RecyclerView.y yVar) {
        if (this.r == 0) {
            return this.H;
        }
        if (yVar.b() < 1) {
            return 0;
        }
        return b2(uVar, yVar, yVar.b() - 1) + 1;
    }

    public int a2() {
        return this.H;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void c1(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.I == null) {
            super.c1(rect, i, i2);
        }
        int V = V() + U();
        int T = T() + W();
        if (this.r == 1) {
            i4 = RecyclerView.o.l(i2, rect.height() + T, R());
            int[] iArr = this.I;
            i3 = RecyclerView.o.l(i, iArr[iArr.length - 1] + V, S());
        } else {
            i3 = RecyclerView.o.l(i, rect.width() + V, S());
            int[] iArr2 = this.I;
            i4 = RecyclerView.o.l(i2, iArr2[iArr2.length - 1] + T, R());
        }
        this.b.setMeasuredDimension(i3, i4);
    }

    public b e2() {
        return this.M;
    }

    public void h2(int i) {
        if (i != this.H) {
            this.G = true;
            if (i >= 1) {
                this.H = i;
                this.M.a.clear();
                W0();
                return;
            }
            throw new IllegalArgumentException(ic.f("Span count should be at least 1. Provided ", i));
        }
    }

    public void i2(b bVar) {
        this.M = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean k(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public boolean k1() {
        return this.B == null && !this.G;
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void m1(RecyclerView.y yVar, LinearLayoutManager.c cVar, RecyclerView.o.c cVar2) {
        int i = this.H;
        for (int i2 = 0; i2 < this.H && cVar.b(yVar) && i > 0; i2++) {
            int i3 = cVar.d;
            ((m.b) cVar2).a(i3, Math.max(0, cVar.g));
            i -= this.M.c(i3);
            cVar.d += cVar.e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public int p(RecyclerView.y yVar) {
        return super.p(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public int q(RecyclerView.y yVar) {
        return super.q(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public int s(RecyclerView.y yVar) {
        return super.s(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public int t(RecyclerView.y yVar) {
        return super.t(yVar);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00ce, code lost:
        if (r13 == (r2 > r15)) goto L_0x00ad;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x00e7, code lost:
        if (r13 == (r2 > r9)) goto L_0x00de;
     */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00f0  */
    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View u0(android.view.View r23, int r24, androidx.recyclerview.widget.RecyclerView.u r25, androidx.recyclerview.widget.RecyclerView.y r26) {
        /*
        // Method dump skipped, instructions count: 304
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.u0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public RecyclerView.LayoutParams x() {
        if (this.r == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.LayoutParams y(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.LayoutParams z(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void z0(RecyclerView.u uVar, RecyclerView.y yVar, View view, n3 n3Var) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            y0(view, n3Var);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int b2 = b2(uVar, yVar, layoutParams2.a());
        if (this.r == 0) {
            n3Var.U(n3.c.a(layoutParams2.e, layoutParams2.f, b2, 1, false, false));
        } else {
            n3Var.U(n3.c.a(b2, 1, layoutParams2.e, layoutParams2.f, false, false));
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        int e = -1;
        int f = 0;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(i2, z);
        h2(i);
    }

    public GridLayoutManager(Context context, int i) {
        super(1, false);
        h2(i);
    }
}
