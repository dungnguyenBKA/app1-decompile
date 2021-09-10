package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m;
import java.util.List;

public class LinearLayoutManager extends RecyclerView.o implements RecyclerView.x.b {
    int A;
    SavedState B;
    final a C;
    private final b D;
    private int E;
    private int[] F;
    int r;
    private c s;
    w t;
    private boolean u;
    private boolean v;
    boolean w;
    private boolean x;
    private boolean y;
    int z;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int b;
        int c;
        boolean d;

        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        /* access modifiers changed from: package-private */
        public boolean a() {
            return this.b >= 0;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d ? 1 : 0);
        }

        SavedState(Parcel parcel) {
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.b = savedState.b;
            this.c = savedState.c;
            this.d = savedState.d;
        }
    }

    /* access modifiers changed from: package-private */
    public static class a {
        w a;
        int b;
        int c;
        boolean d;
        boolean e;

        a() {
            d();
        }

        /* access modifiers changed from: package-private */
        public void a() {
            int i;
            if (this.d) {
                i = this.a.g();
            } else {
                i = this.a.k();
            }
            this.c = i;
        }

        public void b(View view, int i) {
            if (this.d) {
                this.c = this.a.m() + this.a.b(view);
            } else {
                this.c = this.a.e(view);
            }
            this.b = i;
        }

        public void c(View view, int i) {
            int m = this.a.m();
            if (m >= 0) {
                b(view, i);
                return;
            }
            this.b = i;
            if (this.d) {
                int g = (this.a.g() - m) - this.a.b(view);
                this.c = this.a.g() - g;
                if (g > 0) {
                    int c2 = this.c - this.a.c(view);
                    int k = this.a.k();
                    int min = c2 - (Math.min(this.a.e(view) - k, 0) + k);
                    if (min < 0) {
                        this.c = Math.min(g, -min) + this.c;
                        return;
                    }
                    return;
                }
                return;
            }
            int e2 = this.a.e(view);
            int k2 = e2 - this.a.k();
            this.c = e2;
            if (k2 > 0) {
                int g2 = (this.a.g() - Math.min(0, (this.a.g() - m) - this.a.b(view))) - (this.a.c(view) + e2);
                if (g2 < 0) {
                    this.c -= Math.min(k2, -g2);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void d() {
            this.b = -1;
            this.c = RecyclerView.UNDEFINED_DURATION;
            this.d = false;
            this.e = false;
        }

        public String toString() {
            StringBuilder q = ic.q("AnchorInfo{mPosition=");
            q.append(this.b);
            q.append(", mCoordinate=");
            q.append(this.c);
            q.append(", mLayoutFromEnd=");
            q.append(this.d);
            q.append(", mValid=");
            q.append(this.e);
            q.append('}');
            return q.toString();
        }
    }

    /* access modifiers changed from: protected */
    public static class b {
        public int a;
        public boolean b;
        public boolean c;
        public boolean d;

        protected b() {
        }
    }

    /* access modifiers changed from: package-private */
    public static class c {
        boolean a = true;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h = 0;
        int i = 0;
        int j;
        List<RecyclerView.b0> k = null;
        boolean l;

        c() {
        }

        public void a(View view) {
            int a2;
            int size = this.k.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < size; i3++) {
                View view3 = this.k.get(i3).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.c() && (a2 = (layoutParams.a() - this.d) * this.e) >= 0 && a2 < i2) {
                    view2 = view3;
                    if (a2 == 0) {
                        break;
                    }
                    i2 = a2;
                }
            }
            if (view2 == null) {
                this.d = -1;
            } else {
                this.d = ((RecyclerView.LayoutParams) view2.getLayoutParams()).a();
            }
        }

        /* access modifiers changed from: package-private */
        public boolean b(RecyclerView.y yVar) {
            int i2 = this.d;
            return i2 >= 0 && i2 < yVar.b();
        }

        /* access modifiers changed from: package-private */
        public View c(RecyclerView.u uVar) {
            List<RecyclerView.b0> list = this.k;
            if (list != null) {
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    View view = this.k.get(i2).itemView;
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                    if (!layoutParams.c() && this.d == layoutParams.a()) {
                        a(view);
                        return view;
                    }
                }
                return null;
            }
            View view2 = uVar.m(this.d, false, Long.MAX_VALUE).itemView;
            this.d += this.e;
            return view2;
        }
    }

    public LinearLayoutManager(Context context) {
        this(1, false);
    }

    private int E1(int i, RecyclerView.u uVar, RecyclerView.y yVar, boolean z2) {
        int g;
        int g2 = this.t.g() - i;
        if (g2 <= 0) {
            return 0;
        }
        int i2 = -Q1(-g2, uVar, yVar);
        int i3 = i + i2;
        if (!z2 || (g = this.t.g() - i3) <= 0) {
            return i2;
        }
        this.t.p(g);
        return g + i2;
    }

    private int F1(int i, RecyclerView.u uVar, RecyclerView.y yVar, boolean z2) {
        int k;
        int k2 = i - this.t.k();
        if (k2 <= 0) {
            return 0;
        }
        int i2 = -Q1(k2, uVar, yVar);
        int i3 = i + i2;
        if (!z2 || (k = i3 - this.t.k()) <= 0) {
            return i2;
        }
        this.t.p(-k);
        return i2 - k;
    }

    private View G1() {
        return B(this.w ? 0 : C() - 1);
    }

    private View H1() {
        return B(this.w ? C() - 1 : 0);
    }

    private void M1(RecyclerView.u uVar, c cVar) {
        if (cVar.a && !cVar.l) {
            int i = cVar.g;
            int i2 = cVar.i;
            if (cVar.f == -1) {
                int C2 = C();
                if (i >= 0) {
                    int f = (this.t.f() - i) + i2;
                    if (this.w) {
                        for (int i3 = 0; i3 < C2; i3++) {
                            View B2 = B(i3);
                            if (this.t.e(B2) < f || this.t.o(B2) < f) {
                                N1(uVar, 0, i3);
                                return;
                            }
                        }
                        return;
                    }
                    int i4 = C2 - 1;
                    for (int i5 = i4; i5 >= 0; i5--) {
                        View B3 = B(i5);
                        if (this.t.e(B3) < f || this.t.o(B3) < f) {
                            N1(uVar, i4, i5);
                            return;
                        }
                    }
                }
            } else if (i >= 0) {
                int i6 = i - i2;
                int C3 = C();
                if (this.w) {
                    int i7 = C3 - 1;
                    for (int i8 = i7; i8 >= 0; i8--) {
                        View B4 = B(i8);
                        if (this.t.b(B4) > i6 || this.t.n(B4) > i6) {
                            N1(uVar, i7, i8);
                            return;
                        }
                    }
                    return;
                }
                for (int i9 = 0; i9 < C3; i9++) {
                    View B5 = B(i9);
                    if (this.t.b(B5) > i6 || this.t.n(B5) > i6) {
                        N1(uVar, 0, i9);
                        return;
                    }
                }
            }
        }
    }

    private void N1(RecyclerView.u uVar, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    U0(i3, uVar);
                }
                return;
            }
            while (i > i2) {
                U0(i, uVar);
                i--;
            }
        }
    }

    private void P1() {
        if (this.r == 1 || !J1()) {
            this.w = this.v;
        } else {
            this.w = !this.v;
        }
    }

    private void U1(int i, int i2, boolean z2, RecyclerView.y yVar) {
        int i3;
        this.s.l = O1();
        this.s.f = i;
        int[] iArr = this.F;
        boolean z3 = false;
        iArr[0] = 0;
        int i4 = 1;
        iArr[1] = 0;
        l1(yVar, iArr);
        int max = Math.max(0, this.F[0]);
        int max2 = Math.max(0, this.F[1]);
        if (i == 1) {
            z3 = true;
        }
        c cVar = this.s;
        int i5 = z3 ? max2 : max;
        cVar.h = i5;
        if (!z3) {
            max = max2;
        }
        cVar.i = max;
        if (z3) {
            cVar.h = this.t.h() + i5;
            View G1 = G1();
            c cVar2 = this.s;
            if (this.w) {
                i4 = -1;
            }
            cVar2.e = i4;
            int X = X(G1);
            c cVar3 = this.s;
            cVar2.d = X + cVar3.e;
            cVar3.b = this.t.b(G1);
            i3 = this.t.b(G1) - this.t.g();
        } else {
            View H1 = H1();
            c cVar4 = this.s;
            cVar4.h = this.t.k() + cVar4.h;
            c cVar5 = this.s;
            if (!this.w) {
                i4 = -1;
            }
            cVar5.e = i4;
            int X2 = X(H1);
            c cVar6 = this.s;
            cVar5.d = X2 + cVar6.e;
            cVar6.b = this.t.e(H1);
            i3 = (-this.t.e(H1)) + this.t.k();
        }
        c cVar7 = this.s;
        cVar7.c = i2;
        if (z2) {
            cVar7.c = i2 - i3;
        }
        cVar7.g = i3;
    }

    private void V1(int i, int i2) {
        this.s.c = this.t.g() - i2;
        c cVar = this.s;
        cVar.e = this.w ? -1 : 1;
        cVar.d = i;
        cVar.f = 1;
        cVar.b = i2;
        cVar.g = RecyclerView.UNDEFINED_DURATION;
    }

    private void W1(int i, int i2) {
        this.s.c = i2 - this.t.k();
        c cVar = this.s;
        cVar.d = i;
        cVar.e = this.w ? 1 : -1;
        cVar.f = -1;
        cVar.b = i2;
        cVar.g = RecyclerView.UNDEFINED_DURATION;
    }

    private int n1(RecyclerView.y yVar) {
        if (C() == 0) {
            return 0;
        }
        r1();
        return z.a(yVar, this.t, w1(!this.y, true), v1(!this.y, true), this, this.y);
    }

    private int o1(RecyclerView.y yVar) {
        if (C() == 0) {
            return 0;
        }
        r1();
        return z.b(yVar, this.t, w1(!this.y, true), v1(!this.y, true), this, this.y, this.w);
    }

    private int p1(RecyclerView.y yVar) {
        if (C() == 0) {
            return 0;
        }
        r1();
        return z.c(yVar, this.t, w1(!this.y, true), v1(!this.y, true), this, this.y);
    }

    private View u1(RecyclerView.u uVar, RecyclerView.y yVar) {
        return D1(uVar, yVar, 0, C(), yVar.b());
    }

    private View z1(RecyclerView.u uVar, RecyclerView.y yVar) {
        return D1(uVar, yVar, C() - 1, -1, yVar.b());
    }

    public int A1() {
        View C1 = C1(C() - 1, -1, false, true);
        if (C1 == null) {
            return -1;
        }
        return X(C1);
    }

    /* access modifiers changed from: package-private */
    public View B1(int i, int i2) {
        int i3;
        int i4;
        r1();
        View view = null;
        if ((i2 > i ? 1 : i2 < i ? (char) 65535 : 0) == 0) {
            d dVar = this.a;
            if (dVar != null) {
                return dVar.d(i);
            }
            return null;
        }
        w wVar = this.t;
        d dVar2 = this.a;
        if (dVar2 != null) {
            view = dVar2.d(i);
        }
        if (wVar.e(view) < this.t.k()) {
            i4 = 16644;
            i3 = 16388;
        } else {
            i4 = 4161;
            i3 = 4097;
        }
        if (this.r == 0) {
            return this.e.a(i, i2, i4, i3);
        }
        return this.f.a(i, i2, i4, i3);
    }

    /* access modifiers changed from: package-private */
    public View C1(int i, int i2, boolean z2, boolean z3) {
        r1();
        int i3 = 320;
        int i4 = z2 ? 24579 : 320;
        if (!z3) {
            i3 = 0;
        }
        if (this.r == 0) {
            return this.e.a(i, i2, i4, i3);
        }
        return this.f.a(i, i2, i4, i3);
    }

    /* access modifiers changed from: package-private */
    public View D1(RecyclerView.u uVar, RecyclerView.y yVar, int i, int i2, int i3) {
        r1();
        int k = this.t.k();
        int g = this.t.g();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View B2 = B(i);
            int X = X(B2);
            if (X >= 0 && X < i3) {
                if (((RecyclerView.LayoutParams) B2.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = B2;
                    }
                } else if (this.t.e(B2) < g && this.t.b(B2) >= k) {
                    return B2;
                } else {
                    if (view == null) {
                        view = B2;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:124:0x022d  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0180  */
    @Override // androidx.recyclerview.widget.RecyclerView.o
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void H0(androidx.recyclerview.widget.RecyclerView.u r17, androidx.recyclerview.widget.RecyclerView.y r18) {
        /*
        // Method dump skipped, instructions count: 1090
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.H0(androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void I0(RecyclerView.y yVar) {
        this.B = null;
        this.z = -1;
        this.A = RecyclerView.UNDEFINED_DURATION;
        this.C.d();
    }

    public int I1() {
        return this.r;
    }

    /* access modifiers changed from: protected */
    public boolean J1() {
        return P() == 1;
    }

    /* access modifiers changed from: package-private */
    public void K1(RecyclerView.u uVar, RecyclerView.y yVar, c cVar, b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View c2 = cVar.c(uVar);
        if (c2 == null) {
            bVar.b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) c2.getLayoutParams();
        if (cVar.k == null) {
            if (this.w == (cVar.f == -1)) {
                d(c2);
            } else {
                e(c2, 0);
            }
        } else {
            if (this.w == (cVar.f == -1)) {
                b(c2);
            } else {
                c(c2, 0);
            }
        }
        m0(c2, 0, 0);
        bVar.a = this.t.c(c2);
        if (this.r == 1) {
            if (J1()) {
                i5 = e0() - V();
                i4 = i5 - this.t.d(c2);
            } else {
                i4 = U();
                i5 = this.t.d(c2) + i4;
            }
            if (cVar.f == -1) {
                int i6 = cVar.b;
                i = i6;
                i2 = i5;
                i3 = i6 - bVar.a;
            } else {
                int i7 = cVar.b;
                i3 = i7;
                i2 = i5;
                i = bVar.a + i7;
            }
        } else {
            int W = W();
            int d = this.t.d(c2) + W;
            if (cVar.f == -1) {
                int i8 = cVar.b;
                i2 = i8;
                i3 = W;
                i = d;
                i4 = i8 - bVar.a;
            } else {
                int i9 = cVar.b;
                i3 = W;
                i2 = bVar.a + i9;
                i = d;
                i4 = i9;
            }
        }
        l0(c2, i4, i3, i2, i);
        if (layoutParams.c() || layoutParams.b()) {
            bVar.c = true;
        }
        bVar.d = c2.hasFocusable();
    }

    /* access modifiers changed from: package-private */
    public void L1(RecyclerView.u uVar, RecyclerView.y yVar, a aVar, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void M0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.B = (SavedState) parcelable;
            W0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public Parcelable N0() {
        SavedState savedState = this.B;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (C() > 0) {
            r1();
            boolean z2 = this.u ^ this.w;
            savedState2.d = z2;
            if (z2) {
                View G1 = G1();
                savedState2.c = this.t.g() - this.t.b(G1);
                savedState2.b = X(G1);
            } else {
                View H1 = H1();
                savedState2.b = X(H1);
                savedState2.c = this.t.e(H1) - this.t.k();
            }
        } else {
            savedState2.b = -1;
        }
        return savedState2;
    }

    /* access modifiers changed from: package-private */
    public boolean O1() {
        return this.t.i() == 0 && this.t.f() == 0;
    }

    /* access modifiers changed from: package-private */
    public int Q1(int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        if (C() == 0 || i == 0) {
            return 0;
        }
        r1();
        this.s.a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        U1(i2, abs, true, yVar);
        c cVar = this.s;
        int s1 = cVar.g + s1(uVar, cVar, yVar, false);
        if (s1 < 0) {
            return 0;
        }
        if (abs > s1) {
            i = i2 * s1;
        }
        this.t.p(-i);
        this.s.j = i;
        return i;
    }

    public void R1(int i, int i2) {
        this.z = i;
        this.A = i2;
        SavedState savedState = this.B;
        if (savedState != null) {
            savedState.b = -1;
        }
        W0();
    }

    public void S1(int i) {
        if (i == 0 || i == 1) {
            g(null);
            if (i != this.r || this.t == null) {
                w a2 = w.a(this, i);
                this.t = a2;
                this.C.a = a2;
                this.r = i;
                W0();
                return;
            }
            return;
        }
        throw new IllegalArgumentException(ic.f("invalid orientation:", i));
    }

    public void T1(boolean z2) {
        g(null);
        if (this.x != z2) {
            this.x = z2;
            W0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int X0(int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        if (this.r == 1) {
            return 0;
        }
        return Q1(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void Y0(int i) {
        this.z = i;
        this.A = RecyclerView.UNDEFINED_DURATION;
        SavedState savedState = this.B;
        if (savedState != null) {
            savedState.b = -1;
        }
        W0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int Z0(int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        if (this.r == 0) {
            return 0;
        }
        return Q1(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x.b
    public PointF a(int i) {
        if (C() == 0) {
            return null;
        }
        boolean z2 = false;
        int i2 = 1;
        if (i < X(B(0))) {
            z2 = true;
        }
        if (z2 != this.w) {
            i2 = -1;
        }
        if (this.r == 0) {
            return new PointF((float) i2, 0.0f);
        }
        return new PointF(0.0f, (float) i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void g(String str) {
        RecyclerView recyclerView;
        if (this.B == null && (recyclerView = this.b) != null) {
            recyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean g0() {
        return true;
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean g1() {
        boolean z2;
        if (!(N() == 1073741824 || f0() == 1073741824)) {
            int C2 = C();
            int i = 0;
            while (true) {
                if (i >= C2) {
                    z2 = false;
                    break;
                }
                ViewGroup.LayoutParams layoutParams = B(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    z2 = true;
                    break;
                }
                i++;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean i() {
        return this.r == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void i1(RecyclerView recyclerView, RecyclerView.y yVar, int i) {
        q qVar = new q(recyclerView.getContext());
        qVar.j(i);
        j1(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean j() {
        return this.r == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean k1() {
        return this.B == null && this.u == this.x;
    }

    /* access modifiers changed from: protected */
    public void l1(RecyclerView.y yVar, int[] iArr) {
        int i;
        int l = yVar.a != -1 ? this.t.l() : 0;
        if (this.s.f == -1) {
            i = 0;
        } else {
            i = l;
            l = 0;
        }
        iArr[0] = l;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void m(int i, int i2, RecyclerView.y yVar, RecyclerView.o.c cVar) {
        if (this.r != 0) {
            i = i2;
        }
        if (C() != 0 && i != 0) {
            r1();
            U1(i > 0 ? 1 : -1, Math.abs(i), true, yVar);
            m1(yVar, this.s, cVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void m1(RecyclerView.y yVar, c cVar, RecyclerView.o.c cVar2) {
        int i = cVar.d;
        if (i >= 0 && i < yVar.b()) {
            ((m.b) cVar2).a(i, Math.max(0, cVar.g));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void n(int i, RecyclerView.o.c cVar) {
        boolean z2;
        int i2;
        SavedState savedState = this.B;
        int i3 = -1;
        if (savedState == null || !savedState.a()) {
            P1();
            z2 = this.w;
            i2 = this.z;
            if (i2 == -1) {
                i2 = z2 ? i - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.B;
            z2 = savedState2.d;
            i2 = savedState2.b;
        }
        if (!z2) {
            i3 = 1;
        }
        for (int i4 = 0; i4 < this.E && i2 >= 0 && i2 < i; i4++) {
            ((m.b) cVar).a(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int o(RecyclerView.y yVar) {
        return n1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int p(RecyclerView.y yVar) {
        return o1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int q(RecyclerView.y yVar) {
        return p1(yVar);
    }

    /* access modifiers changed from: package-private */
    public int q1(int i) {
        if (i == 1) {
            return (this.r != 1 && J1()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.r != 1 && J1()) ? -1 : 1;
        }
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i == 130 && this.r == 1) {
                        return 1;
                    }
                    return RecyclerView.UNDEFINED_DURATION;
                } else if (this.r == 0) {
                    return 1;
                } else {
                    return RecyclerView.UNDEFINED_DURATION;
                }
            } else if (this.r == 1) {
                return -1;
            } else {
                return RecyclerView.UNDEFINED_DURATION;
            }
        } else if (this.r == 0) {
            return -1;
        } else {
            return RecyclerView.UNDEFINED_DURATION;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int r(RecyclerView.y yVar) {
        return n1(yVar);
    }

    /* access modifiers changed from: package-private */
    public void r1() {
        if (this.s == null) {
            this.s = new c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int s(RecyclerView.y yVar) {
        return o1(yVar);
    }

    /* access modifiers changed from: package-private */
    public int s1(RecyclerView.u uVar, c cVar, RecyclerView.y yVar, boolean z2) {
        int i = cVar.c;
        int i2 = cVar.g;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                cVar.g = i2 + i;
            }
            M1(uVar, cVar);
        }
        int i3 = cVar.c + cVar.h;
        b bVar = this.D;
        while (true) {
            if ((!cVar.l && i3 <= 0) || !cVar.b(yVar)) {
                break;
            }
            bVar.a = 0;
            bVar.b = false;
            bVar.c = false;
            bVar.d = false;
            K1(uVar, yVar, cVar, bVar);
            if (!bVar.b) {
                int i4 = cVar.b;
                int i5 = bVar.a;
                cVar.b = (cVar.f * i5) + i4;
                if (!bVar.c || cVar.k != null || !yVar.g) {
                    cVar.c -= i5;
                    i3 -= i5;
                }
                int i6 = cVar.g;
                if (i6 != Integer.MIN_VALUE) {
                    int i7 = i6 + i5;
                    cVar.g = i7;
                    int i8 = cVar.c;
                    if (i8 < 0) {
                        cVar.g = i7 + i8;
                    }
                    M1(uVar, cVar);
                }
                if (z2 && bVar.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - cVar.c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int t(RecyclerView.y yVar) {
        return p1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void t0(RecyclerView recyclerView, RecyclerView.u uVar) {
        s0();
    }

    public int t1() {
        View C1 = C1(0, C(), true, false);
        if (C1 == null) {
            return -1;
        }
        return X(C1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View u0(View view, int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        int q1;
        View view2;
        View view3;
        P1();
        if (C() == 0 || (q1 = q1(i)) == Integer.MIN_VALUE) {
            return null;
        }
        r1();
        U1(q1, (int) (((float) this.t.l()) * 0.33333334f), false, yVar);
        c cVar = this.s;
        cVar.g = RecyclerView.UNDEFINED_DURATION;
        cVar.a = false;
        s1(uVar, cVar, yVar, true);
        if (q1 == -1) {
            if (this.w) {
                view2 = B1(C() - 1, -1);
            } else {
                view2 = B1(0, C());
            }
        } else if (this.w) {
            view2 = B1(0, C());
        } else {
            view2 = B1(C() - 1, -1);
        }
        if (q1 == -1) {
            view3 = H1();
        } else {
            view3 = G1();
        }
        if (!view3.hasFocusable()) {
            return view2;
        }
        if (view2 == null) {
            return null;
        }
        return view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void v0(AccessibilityEvent accessibilityEvent) {
        RecyclerView.u uVar = this.b.mRecycler;
        w0(accessibilityEvent);
        if (C() > 0) {
            accessibilityEvent.setFromIndex(x1());
            accessibilityEvent.setToIndex(A1());
        }
    }

    /* access modifiers changed from: package-private */
    public View v1(boolean z2, boolean z3) {
        if (this.w) {
            return C1(0, C(), z2, z3);
        }
        return C1(C() - 1, -1, z2, z3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View w(int i) {
        int C2 = C();
        if (C2 == 0) {
            return null;
        }
        int X = i - X(B(0));
        if (X >= 0 && X < C2) {
            View B2 = B(X);
            if (X(B2) == i) {
                return B2;
            }
        }
        return super.w(i);
    }

    /* access modifiers changed from: package-private */
    public View w1(boolean z2, boolean z3) {
        if (this.w) {
            return C1(C() - 1, -1, z2, z3);
        }
        return C1(0, C(), z2, z3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.LayoutParams x() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public int x1() {
        View C1 = C1(0, C(), false, true);
        if (C1 == null) {
            return -1;
        }
        return X(C1);
    }

    public int y1() {
        View C1 = C1(C() - 1, -1, true, false);
        if (C1 == null) {
            return -1;
        }
        return X(C1);
    }

    public LinearLayoutManager(int i, boolean z2) {
        this.r = 1;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = true;
        this.z = -1;
        this.A = RecyclerView.UNDEFINED_DURATION;
        this.B = null;
        this.C = new a();
        this.D = new b();
        this.E = 2;
        this.F = new int[2];
        S1(i);
        g(null);
        if (z2 != this.v) {
            this.v = z2;
            W0();
        }
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.r = 1;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = true;
        this.z = -1;
        this.A = RecyclerView.UNDEFINED_DURATION;
        this.B = null;
        this.C = new a();
        this.D = new b();
        this.E = 2;
        this.F = new int[2];
        RecyclerView.o.d Y = RecyclerView.o.Y(context, attributeSet, i, i2);
        S1(Y.a);
        boolean z2 = Y.c;
        g(null);
        if (z2 != this.v) {
            this.v = z2;
            W0();
        }
        T1(Y.d);
    }
}
