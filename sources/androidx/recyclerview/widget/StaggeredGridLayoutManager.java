package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m;
import defpackage.n3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager extends RecyclerView.o implements RecyclerView.x.b {
    private BitSet A;
    int B;
    int C;
    LazySpanLookup D;
    private int E;
    private boolean F;
    private boolean G;
    private SavedState H;
    private int I;
    private final Rect J;
    private final b K;
    private boolean L;
    private boolean M;
    private int[] N;
    private final Runnable O;
    private int r = -1;
    c[] s;
    w t;
    w u;
    private int v;
    private int w;
    private final p x;
    boolean y;
    boolean z;

    public static class LayoutParams extends RecyclerView.LayoutParams {
        c e;
        boolean f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void d(boolean z) {
            this.f = z;
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

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int b;
        int c;
        int d;
        int[] e;
        int f;
        int[] g;
        List<LazySpanLookup.FullSpanItem> h;
        boolean i;
        boolean j;
        boolean k;

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

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d);
            if (this.d > 0) {
                parcel.writeIntArray(this.e);
            }
            parcel.writeInt(this.f);
            if (this.f > 0) {
                parcel.writeIntArray(this.g);
            }
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeInt(this.k ? 1 : 0);
            parcel.writeList(this.h);
        }

        SavedState(Parcel parcel) {
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            int readInt = parcel.readInt();
            this.d = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.e = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.g = iArr2;
                parcel.readIntArray(iArr2);
            }
            boolean z = false;
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.k = parcel.readInt() == 1 ? true : z;
            this.h = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.d = savedState.d;
            this.b = savedState.b;
            this.c = savedState.c;
            this.e = savedState.e;
            this.f = savedState.f;
            this.g = savedState.g;
            this.i = savedState.i;
            this.j = savedState.j;
            this.k = savedState.k;
            this.h = savedState.h;
        }
    }

    class a implements Runnable {
        a() {
        }

        public void run() {
            StaggeredGridLayoutManager.this.m1();
        }
    }

    /* access modifiers changed from: package-private */
    public class b {
        int a;
        int b;
        boolean c;
        boolean d;
        boolean e;
        int[] f;

        b() {
            b();
        }

        /* access modifiers changed from: package-private */
        public void a() {
            int i;
            if (this.c) {
                i = StaggeredGridLayoutManager.this.t.g();
            } else {
                i = StaggeredGridLayoutManager.this.t.k();
            }
            this.b = i;
        }

        /* access modifiers changed from: package-private */
        public void b() {
            this.a = -1;
            this.b = RecyclerView.UNDEFINED_DURATION;
            this.c = false;
            this.d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class c {
        ArrayList<View> a = new ArrayList<>();
        int b = RecyclerView.UNDEFINED_DURATION;
        int c = RecyclerView.UNDEFINED_DURATION;
        int d = 0;
        final int e;

        c(int i) {
            this.e = i;
        }

        /* access modifiers changed from: package-private */
        public void a(View view) {
            LayoutParams k = k(view);
            k.e = this;
            this.a.add(view);
            this.c = RecyclerView.UNDEFINED_DURATION;
            if (this.a.size() == 1) {
                this.b = RecyclerView.UNDEFINED_DURATION;
            }
            if (k.c() || k.b()) {
                this.d = StaggeredGridLayoutManager.this.t.c(view) + this.d;
            }
        }

        /* access modifiers changed from: package-private */
        public void b() {
            LazySpanLookup.FullSpanItem f2;
            ArrayList<View> arrayList = this.a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams k = k(view);
            this.c = StaggeredGridLayoutManager.this.t.b(view);
            if (k.f && (f2 = StaggeredGridLayoutManager.this.D.f(k.a())) != null && f2.c == 1) {
                int i = this.c;
                int i2 = this.e;
                int[] iArr = f2.d;
                this.c = i + (iArr == null ? 0 : iArr[i2]);
            }
        }

        /* access modifiers changed from: package-private */
        public void c() {
            LazySpanLookup.FullSpanItem f2;
            int i = 0;
            View view = this.a.get(0);
            LayoutParams k = k(view);
            this.b = StaggeredGridLayoutManager.this.t.e(view);
            if (k.f && (f2 = StaggeredGridLayoutManager.this.D.f(k.a())) != null && f2.c == -1) {
                int i2 = this.b;
                int i3 = this.e;
                int[] iArr = f2.d;
                if (iArr != null) {
                    i = iArr[i3];
                }
                this.b = i2 - i;
            }
        }

        /* access modifiers changed from: package-private */
        public void d() {
            this.a.clear();
            this.b = RecyclerView.UNDEFINED_DURATION;
            this.c = RecyclerView.UNDEFINED_DURATION;
            this.d = 0;
        }

        public int e() {
            if (StaggeredGridLayoutManager.this.y) {
                return h(this.a.size() - 1, -1, true);
            }
            return h(0, this.a.size(), true);
        }

        public int f() {
            if (StaggeredGridLayoutManager.this.y) {
                return h(0, this.a.size(), true);
            }
            return h(this.a.size() - 1, -1, true);
        }

        /* access modifiers changed from: package-private */
        public int g(int i, int i2, boolean z, boolean z2, boolean z3) {
            int k = StaggeredGridLayoutManager.this.t.k();
            int g = StaggeredGridLayoutManager.this.t.g();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.a.get(i);
                int e2 = StaggeredGridLayoutManager.this.t.e(view);
                int b2 = StaggeredGridLayoutManager.this.t.b(view);
                boolean z4 = false;
                boolean z5 = !z3 ? e2 < g : e2 <= g;
                if (!z3 ? b2 > k : b2 >= k) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (!z || !z2) {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.X(view);
                        }
                        if (e2 < k || b2 > g) {
                            return StaggeredGridLayoutManager.this.X(view);
                        }
                    } else if (e2 >= k && b2 <= g) {
                        return StaggeredGridLayoutManager.this.X(view);
                    }
                }
                i += i3;
            }
            return -1;
        }

        /* access modifiers changed from: package-private */
        public int h(int i, int i2, boolean z) {
            return g(i, i2, false, false, z);
        }

        /* access modifiers changed from: package-private */
        public int i(int i) {
            int i2 = this.c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            b();
            return this.c;
        }

        public View j(int i, int i2) {
            View view = null;
            if (i2 != -1) {
                int size = this.a.size() - 1;
                while (size >= 0) {
                    View view2 = this.a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.y && staggeredGridLayoutManager.X(view2) >= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.y && staggeredGridLayoutManager2.X(view2) <= i) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = this.a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.y && staggeredGridLayoutManager3.X(view3) <= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.y && staggeredGridLayoutManager4.X(view3) >= i) || !view3.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        /* access modifiers changed from: package-private */
        public LayoutParams k(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        /* access modifiers changed from: package-private */
        public int l(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            c();
            return this.b;
        }

        /* access modifiers changed from: package-private */
        public void m() {
            int size = this.a.size();
            View remove = this.a.remove(size - 1);
            LayoutParams k = k(remove);
            k.e = null;
            if (k.c() || k.b()) {
                this.d -= StaggeredGridLayoutManager.this.t.c(remove);
            }
            if (size == 1) {
                this.b = RecyclerView.UNDEFINED_DURATION;
            }
            this.c = RecyclerView.UNDEFINED_DURATION;
        }

        /* access modifiers changed from: package-private */
        public void n() {
            View remove = this.a.remove(0);
            LayoutParams k = k(remove);
            k.e = null;
            if (this.a.size() == 0) {
                this.c = RecyclerView.UNDEFINED_DURATION;
            }
            if (k.c() || k.b()) {
                this.d -= StaggeredGridLayoutManager.this.t.c(remove);
            }
            this.b = RecyclerView.UNDEFINED_DURATION;
        }

        /* access modifiers changed from: package-private */
        public void o(View view) {
            LayoutParams k = k(view);
            k.e = this;
            this.a.add(0, view);
            this.b = RecyclerView.UNDEFINED_DURATION;
            if (this.a.size() == 1) {
                this.c = RecyclerView.UNDEFINED_DURATION;
            }
            if (k.c() || k.b()) {
                this.d = StaggeredGridLayoutManager.this.t.c(view) + this.d;
            }
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.y = false;
        this.z = false;
        this.B = -1;
        this.C = RecyclerView.UNDEFINED_DURATION;
        this.D = new LazySpanLookup();
        this.E = 2;
        this.J = new Rect();
        this.K = new b();
        this.L = false;
        this.M = true;
        this.O = new a();
        RecyclerView.o.d Y = RecyclerView.o.Y(context, attributeSet, i, i2);
        int i3 = Y.a;
        if (i3 == 0 || i3 == 1) {
            g(null);
            if (i3 != this.v) {
                this.v = i3;
                w wVar = this.t;
                this.t = this.u;
                this.u = wVar;
                W0();
            }
            int i4 = Y.b;
            g(null);
            if (i4 != this.r) {
                this.D.b();
                W0();
                this.r = i4;
                this.A = new BitSet(this.r);
                this.s = new c[this.r];
                for (int i5 = 0; i5 < this.r; i5++) {
                    this.s[i5] = new c(i5);
                }
                W0();
            }
            boolean z2 = Y.c;
            g(null);
            SavedState savedState = this.H;
            if (!(savedState == null || savedState.i == z2)) {
                savedState.i = z2;
            }
            this.y = z2;
            W0();
            this.x = new p();
            this.t = w.a(this, this.v);
            this.u = w.a(this, 1 - this.v);
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    private void C1(View view, int i, int i2, boolean z2) {
        boolean z3;
        h(view, this.J);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        Rect rect = this.J;
        int P1 = P1(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        Rect rect2 = this.J;
        int P12 = P1(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z2) {
            z3 = h1(view, P1, P12, layoutParams);
        } else {
            z3 = f1(view, P1, P12, layoutParams);
        }
        if (z3) {
            view.measure(P1, P12);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:239:0x0428, code lost:
        if (m1() != false) goto L_0x042c;
     */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x01b9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void D1(androidx.recyclerview.widget.RecyclerView.u r12, androidx.recyclerview.widget.RecyclerView.y r13, boolean r14) {
        /*
        // Method dump skipped, instructions count: 1098
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.D1(androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y, boolean):void");
    }

    private boolean E1(int i) {
        if (this.v == 0) {
            if ((i == -1) != this.z) {
                return true;
            }
            return false;
        }
        if (((i == -1) == this.z) == B1()) {
            return true;
        }
        return false;
    }

    private void G1(RecyclerView.u uVar, p pVar) {
        int i;
        int i2;
        if (pVar.a && !pVar.i) {
            if (pVar.b != 0) {
                int i3 = 1;
                if (pVar.e == -1) {
                    int i4 = pVar.f;
                    int l = this.s[0].l(i4);
                    while (i3 < this.r) {
                        int l2 = this.s[i3].l(i4);
                        if (l2 > l) {
                            l = l2;
                        }
                        i3++;
                    }
                    int i5 = i4 - l;
                    if (i5 < 0) {
                        i2 = pVar.g;
                    } else {
                        i2 = pVar.g - Math.min(i5, pVar.b);
                    }
                    H1(uVar, i2);
                    return;
                }
                int i6 = pVar.g;
                int i7 = this.s[0].i(i6);
                while (i3 < this.r) {
                    int i8 = this.s[i3].i(i6);
                    if (i8 < i7) {
                        i7 = i8;
                    }
                    i3++;
                }
                int i9 = i7 - pVar.g;
                if (i9 < 0) {
                    i = pVar.f;
                } else {
                    i = Math.min(i9, pVar.b) + pVar.f;
                }
                I1(uVar, i);
            } else if (pVar.e == -1) {
                H1(uVar, pVar.g);
            } else {
                I1(uVar, pVar.f);
            }
        }
    }

    private void H1(RecyclerView.u uVar, int i) {
        for (int C2 = C() - 1; C2 >= 0; C2--) {
            View B2 = B(C2);
            if (this.t.e(B2) >= i && this.t.o(B2) >= i) {
                LayoutParams layoutParams = (LayoutParams) B2.getLayoutParams();
                if (layoutParams.f) {
                    for (int i2 = 0; i2 < this.r; i2++) {
                        if (this.s[i2].a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.r; i3++) {
                        this.s[i3].m();
                    }
                } else if (layoutParams.e.a.size() != 1) {
                    layoutParams.e.m();
                } else {
                    return;
                }
                this.a.m(B2);
                uVar.i(B2);
            } else {
                return;
            }
        }
    }

    private void I1(RecyclerView.u uVar, int i) {
        while (C() > 0) {
            View B2 = B(0);
            if (this.t.b(B2) <= i && this.t.n(B2) <= i) {
                LayoutParams layoutParams = (LayoutParams) B2.getLayoutParams();
                if (layoutParams.f) {
                    for (int i2 = 0; i2 < this.r; i2++) {
                        if (this.s[i2].a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.r; i3++) {
                        this.s[i3].n();
                    }
                } else if (layoutParams.e.a.size() != 1) {
                    layoutParams.e.n();
                } else {
                    return;
                }
                this.a.m(B2);
                uVar.i(B2);
            } else {
                return;
            }
        }
    }

    private void J1() {
        if (this.v == 1 || !B1()) {
            this.z = this.y;
        } else {
            this.z = !this.y;
        }
    }

    private void L1(int i) {
        p pVar = this.x;
        pVar.e = i;
        int i2 = 1;
        if (this.z != (i == -1)) {
            i2 = -1;
        }
        pVar.d = i2;
    }

    private void M1(int i, int i2) {
        for (int i3 = 0; i3 < this.r; i3++) {
            if (!this.s[i3].a.isEmpty()) {
                O1(this.s[i3], i, i2);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0044  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x005b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void N1(int r5, androidx.recyclerview.widget.RecyclerView.y r6) {
        /*
        // Method dump skipped, instructions count: 133
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.N1(int, androidx.recyclerview.widget.RecyclerView$y):void");
    }

    private void O1(c cVar, int i, int i2) {
        int i3 = cVar.d;
        if (i == -1) {
            int i4 = cVar.b;
            if (i4 == Integer.MIN_VALUE) {
                cVar.c();
                i4 = cVar.b;
            }
            if (i4 + i3 <= i2) {
                this.A.set(cVar.e, false);
                return;
            }
            return;
        }
        int i5 = cVar.c;
        if (i5 == Integer.MIN_VALUE) {
            cVar.b();
            i5 = cVar.c;
        }
        if (i5 - i3 >= i2) {
            this.A.set(cVar.e, false);
        }
    }

    private int P1(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode);
        }
        return i;
    }

    private int l1(int i) {
        if (C() != 0) {
            if ((i < v1()) != this.z) {
                return -1;
            }
            return 1;
        } else if (this.z) {
            return 1;
        } else {
            return -1;
        }
    }

    private int n1(RecyclerView.y yVar) {
        if (C() == 0) {
            return 0;
        }
        return z.a(yVar, this.t, s1(!this.M), r1(!this.M), this, this.M);
    }

    private int o1(RecyclerView.y yVar) {
        if (C() == 0) {
            return 0;
        }
        return z.b(yVar, this.t, s1(!this.M), r1(!this.M), this, this.M, this.z);
    }

    private int p1(RecyclerView.y yVar) {
        if (C() == 0) {
            return 0;
        }
        return z.c(yVar, this.t, s1(!this.M), r1(!this.M), this, this.M);
    }

    /* JADX WARNING: Removed duplicated region for block: B:130:0x0293  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x02a6  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x02be  */
    /* JADX WARNING: Removed duplicated region for block: B:153:0x02db  */
    /* JADX WARNING: Removed duplicated region for block: B:162:0x030a  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0311  */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x032b  */
    /* JADX WARNING: Removed duplicated region for block: B:168:0x0338  */
    /* JADX WARNING: Removed duplicated region for block: B:171:0x0346  */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x034e  */
    /* JADX WARNING: Removed duplicated region for block: B:179:0x036c  */
    /* JADX WARNING: Removed duplicated region for block: B:180:0x0372  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int q1(androidx.recyclerview.widget.RecyclerView.u r19, androidx.recyclerview.widget.p r20, androidx.recyclerview.widget.RecyclerView.y r21) {
        /*
        // Method dump skipped, instructions count: 960
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.q1(androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.p, androidx.recyclerview.widget.RecyclerView$y):int");
    }

    private void t1(RecyclerView.u uVar, RecyclerView.y yVar, boolean z2) {
        int g;
        int x1 = x1(RecyclerView.UNDEFINED_DURATION);
        if (x1 != Integer.MIN_VALUE && (g = this.t.g() - x1) > 0) {
            int i = g - (-K1(-g, uVar, yVar));
            if (z2 && i > 0) {
                this.t.p(i);
            }
        }
    }

    private void u1(RecyclerView.u uVar, RecyclerView.y yVar, boolean z2) {
        int k;
        int y1 = y1(Integer.MAX_VALUE);
        if (y1 != Integer.MAX_VALUE && (k = y1 - this.t.k()) > 0) {
            int K1 = k - K1(k, uVar, yVar);
            if (z2 && K1 > 0) {
                this.t.p(-K1);
            }
        }
    }

    private int x1(int i) {
        int i2 = this.s[0].i(i);
        for (int i3 = 1; i3 < this.r; i3++) {
            int i4 = this.s[i3].i(i);
            if (i4 > i2) {
                i2 = i4;
            }
        }
        return i2;
    }

    private int y1(int i) {
        int l = this.s[0].l(i);
        for (int i2 = 1; i2 < this.r; i2++) {
            int l2 = this.s[i2].l(i);
            if (l2 < l) {
                l = l2;
            }
        }
        return l;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0043 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0044  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void z1(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.z
            if (r0 == 0) goto L_0x0009
            int r0 = r6.w1()
            goto L_0x000d
        L_0x0009:
            int r0 = r6.v1()
        L_0x000d:
            r1 = 8
            if (r9 != r1) goto L_0x001a
            if (r7 >= r8) goto L_0x0016
            int r2 = r8 + 1
            goto L_0x001c
        L_0x0016:
            int r2 = r7 + 1
            r3 = r8
            goto L_0x001d
        L_0x001a:
            int r2 = r7 + r8
        L_0x001c:
            r3 = r7
        L_0x001d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r6.D
            r4.g(r3)
            r4 = 1
            if (r9 == r4) goto L_0x003c
            r5 = 2
            if (r9 == r5) goto L_0x0036
            if (r9 == r1) goto L_0x002b
            goto L_0x0041
        L_0x002b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.D
            r9.i(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r7 = r6.D
            r7.h(r8, r4)
            goto L_0x0041
        L_0x0036:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.D
            r9.i(r7, r8)
            goto L_0x0041
        L_0x003c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.D
            r9.h(r7, r8)
        L_0x0041:
            if (r2 > r0) goto L_0x0044
            return
        L_0x0044:
            boolean r7 = r6.z
            if (r7 == 0) goto L_0x004d
            int r7 = r6.v1()
            goto L_0x0051
        L_0x004d:
            int r7 = r6.w1()
        L_0x0051:
            if (r3 > r7) goto L_0x0056
            r6.W0()
        L_0x0056:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.z1(int, int, int):void");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00c1, code lost:
        if (r11 == r12) goto L_0x00d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00d3, code lost:
        if (r11 == r12) goto L_0x00d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00d7, code lost:
        r11 = false;
     */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0099 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View A1() {
        /*
        // Method dump skipped, instructions count: 251
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.A1():android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void B0(RecyclerView recyclerView, int i, int i2) {
        z1(i, i2, 1);
    }

    /* access modifiers changed from: package-private */
    public boolean B1() {
        return P() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void C0(RecyclerView recyclerView) {
        this.D.b();
        W0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void D0(RecyclerView recyclerView, int i, int i2, int i3) {
        z1(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int E(RecyclerView.u uVar, RecyclerView.y yVar) {
        if (this.v == 1) {
            return this.r;
        }
        return super.E(uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void E0(RecyclerView recyclerView, int i, int i2) {
        z1(i, i2, 2);
    }

    /* access modifiers changed from: package-private */
    public void F1(int i, RecyclerView.y yVar) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = w1();
            i2 = 1;
        } else {
            i3 = v1();
            i2 = -1;
        }
        this.x.a = true;
        N1(i3, yVar);
        L1(i2);
        p pVar = this.x;
        pVar.c = i3 + pVar.d;
        pVar.b = Math.abs(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void G0(RecyclerView recyclerView, int i, int i2, Object obj) {
        z1(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void H0(RecyclerView.u uVar, RecyclerView.y yVar) {
        D1(uVar, yVar, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void I0(RecyclerView.y yVar) {
        this.B = -1;
        this.C = RecyclerView.UNDEFINED_DURATION;
        this.H = null;
        this.K.b();
    }

    /* access modifiers changed from: package-private */
    public int K1(int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        if (C() == 0 || i == 0) {
            return 0;
        }
        F1(i, yVar);
        int q1 = q1(uVar, this.x, yVar);
        if (this.x.b >= q1) {
            i = i < 0 ? -q1 : q1;
        }
        this.t.p(-i);
        this.F = this.z;
        p pVar = this.x;
        pVar.b = 0;
        G1(uVar, pVar);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void M0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.H = (SavedState) parcelable;
            W0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public Parcelable N0() {
        int i;
        View view;
        int i2;
        int i3;
        int[] iArr;
        SavedState savedState = this.H;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.i = this.y;
        savedState2.j = this.F;
        savedState2.k = this.G;
        LazySpanLookup lazySpanLookup = this.D;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.a) == null) {
            savedState2.f = 0;
        } else {
            savedState2.g = iArr;
            savedState2.f = iArr.length;
            savedState2.h = lazySpanLookup.b;
        }
        int i4 = -1;
        if (C() > 0) {
            if (this.F) {
                i = w1();
            } else {
                i = v1();
            }
            savedState2.b = i;
            if (this.z) {
                view = r1(true);
            } else {
                view = s1(true);
            }
            if (view != null) {
                i4 = X(view);
            }
            savedState2.c = i4;
            int i5 = this.r;
            savedState2.d = i5;
            savedState2.e = new int[i5];
            for (int i6 = 0; i6 < this.r; i6++) {
                if (this.F) {
                    i2 = this.s[i6].i(RecyclerView.UNDEFINED_DURATION);
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.t.g();
                    } else {
                        savedState2.e[i6] = i2;
                    }
                } else {
                    i2 = this.s[i6].l(RecyclerView.UNDEFINED_DURATION);
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.t.k();
                    } else {
                        savedState2.e[i6] = i2;
                    }
                }
                i2 -= i3;
                savedState2.e[i6] = i2;
            }
        } else {
            savedState2.b = -1;
            savedState2.c = -1;
            savedState2.d = 0;
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void O0(int i) {
        if (i == 0) {
            m1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int X0(int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        return K1(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void Y0(int i) {
        SavedState savedState = this.H;
        if (!(savedState == null || savedState.b == i)) {
            savedState.e = null;
            savedState.d = 0;
            savedState.b = -1;
            savedState.c = -1;
        }
        this.B = i;
        this.C = RecyclerView.UNDEFINED_DURATION;
        W0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int Z0(int i, RecyclerView.u uVar, RecyclerView.y yVar) {
        return K1(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x.b
    public PointF a(int i) {
        int l1 = l1(i);
        PointF pointF = new PointF();
        if (l1 == 0) {
            return null;
        }
        if (this.v == 0) {
            pointF.x = (float) l1;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = (float) l1;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int a0(RecyclerView.u uVar, RecyclerView.y yVar) {
        if (this.v == 0) {
            return this.r;
        }
        return super.a0(uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void c1(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int V = V() + U();
        int T = T() + W();
        if (this.v == 1) {
            i4 = RecyclerView.o.l(i2, rect.height() + T, R());
            i3 = RecyclerView.o.l(i, (this.w * this.r) + V, S());
        } else {
            i3 = RecyclerView.o.l(i, rect.width() + V, S());
            i4 = RecyclerView.o.l(i2, (this.w * this.r) + T, R());
        }
        this.b.setMeasuredDimension(i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void g(String str) {
        RecyclerView recyclerView;
        if (this.H == null && (recyclerView = this.b) != null) {
            recyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean g0() {
        return this.E != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean i() {
        return this.v == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void i1(RecyclerView recyclerView, RecyclerView.y yVar, int i) {
        q qVar = new q(recyclerView.getContext());
        qVar.j(i);
        j1(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean j() {
        return this.v == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean k(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean k1() {
        return this.H == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void m(int i, int i2, RecyclerView.y yVar, RecyclerView.o.c cVar) {
        int i3;
        int i4;
        if (this.v != 0) {
            i = i2;
        }
        if (!(C() == 0 || i == 0)) {
            F1(i, yVar);
            int[] iArr = this.N;
            if (iArr == null || iArr.length < this.r) {
                this.N = new int[this.r];
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.r; i6++) {
                p pVar = this.x;
                if (pVar.d == -1) {
                    i4 = pVar.f;
                    i3 = this.s[i6].l(i4);
                } else {
                    i4 = this.s[i6].i(pVar.g);
                    i3 = this.x.g;
                }
                int i7 = i4 - i3;
                if (i7 >= 0) {
                    this.N[i5] = i7;
                    i5++;
                }
            }
            Arrays.sort(this.N, 0, i5);
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = this.x.c;
                if (i9 >= 0 && i9 < yVar.b()) {
                    ((m.b) cVar).a(this.x.c, this.N[i8]);
                    p pVar2 = this.x;
                    pVar2.c += pVar2.d;
                } else {
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean m1() {
        int i;
        int i2;
        if (C() == 0 || this.E == 0 || !this.i) {
            return false;
        }
        if (this.z) {
            i2 = w1();
            i = v1();
        } else {
            i2 = v1();
            i = w1();
        }
        if (i2 == 0 && A1() != null) {
            this.D.b();
            this.h = true;
            W0();
            return true;
        } else if (!this.L) {
            return false;
        } else {
            int i3 = this.z ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem e = this.D.e(i2, i4, i3, true);
            if (e == null) {
                this.L = false;
                this.D.d(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem e2 = this.D.e(i2, e.b, i3 * -1, true);
            if (e2 == null) {
                this.D.d(e.b);
            } else {
                this.D.d(e2.b + 1);
            }
            this.h = true;
            W0();
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void n0(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i);
        }
        for (int i2 = 0; i2 < this.r; i2++) {
            c cVar = this.s[i2];
            int i3 = cVar.b;
            if (i3 != Integer.MIN_VALUE) {
                cVar.b = i3 + i;
            }
            int i4 = cVar.c;
            if (i4 != Integer.MIN_VALUE) {
                cVar.c = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int o(RecyclerView.y yVar) {
        return n1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void o0(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i);
        }
        for (int i2 = 0; i2 < this.r; i2++) {
            c cVar = this.s[i2];
            int i3 = cVar.b;
            if (i3 != Integer.MIN_VALUE) {
                cVar.b = i3 + i;
            }
            int i4 = cVar.c;
            if (i4 != Integer.MIN_VALUE) {
                cVar.c = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int p(RecyclerView.y yVar) {
        return o1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int q(RecyclerView.y yVar) {
        return p1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int r(RecyclerView.y yVar) {
        return n1(yVar);
    }

    /* access modifiers changed from: package-private */
    public View r1(boolean z2) {
        int k = this.t.k();
        int g = this.t.g();
        View view = null;
        for (int C2 = C() - 1; C2 >= 0; C2--) {
            View B2 = B(C2);
            int e = this.t.e(B2);
            int b2 = this.t.b(B2);
            if (b2 > k && e < g) {
                if (b2 <= g || !z2) {
                    return B2;
                }
                if (view == null) {
                    view = B2;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int s(RecyclerView.y yVar) {
        return o1(yVar);
    }

    /* access modifiers changed from: package-private */
    public View s1(boolean z2) {
        int k = this.t.k();
        int g = this.t.g();
        int C2 = C();
        View view = null;
        for (int i = 0; i < C2; i++) {
            View B2 = B(i);
            int e = this.t.e(B2);
            if (this.t.b(B2) > k && e < g) {
                if (e >= k || !z2) {
                    return B2;
                }
                if (view == null) {
                    view = B2;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int t(RecyclerView.y yVar) {
        return p1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void t0(RecyclerView recyclerView, RecyclerView.u uVar) {
        s0();
        Runnable runnable = this.O;
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(runnable);
        }
        for (int i = 0; i < this.r; i++) {
            this.s[i].d();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x003c, code lost:
        if (r9.v == 1) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0042, code lost:
        if (r9.v == 0) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x004e, code lost:
        if (B1() == false) goto L_0x0030;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x005a, code lost:
        if (B1() == false) goto L_0x003e;
     */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x005f A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0060  */
    @Override // androidx.recyclerview.widget.RecyclerView.o
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View u0(android.view.View r10, int r11, androidx.recyclerview.widget.RecyclerView.u r12, androidx.recyclerview.widget.RecyclerView.y r13) {
        /*
        // Method dump skipped, instructions count: 336
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.u0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void v0(AccessibilityEvent accessibilityEvent) {
        RecyclerView.u uVar = this.b.mRecycler;
        w0(accessibilityEvent);
        if (C() > 0) {
            View s1 = s1(false);
            View r1 = r1(false);
            if (s1 != null && r1 != null) {
                int X = X(s1);
                int X2 = X(r1);
                if (X < X2) {
                    accessibilityEvent.setFromIndex(X);
                    accessibilityEvent.setToIndex(X2);
                    return;
                }
                accessibilityEvent.setFromIndex(X2);
                accessibilityEvent.setToIndex(X);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public int v1() {
        if (C() == 0) {
            return 0;
        }
        return X(B(0));
    }

    /* access modifiers changed from: package-private */
    public int w1() {
        int C2 = C();
        if (C2 == 0) {
            return 0;
        }
        return X(B(C2 - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.LayoutParams x() {
        if (this.v == 0) {
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
        int i;
        int i2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            y0(view, n3Var);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.v == 0) {
            c cVar = layoutParams2.e;
            if (cVar == null) {
                i2 = -1;
            } else {
                i2 = cVar.e;
            }
            n3Var.U(n3.c.a(i2, layoutParams2.f ? this.r : 1, -1, -1, false, false));
            return;
        }
        c cVar2 = layoutParams2.e;
        if (cVar2 == null) {
            i = -1;
        } else {
            i = cVar2.e;
        }
        n3Var.U(n3.c.a(-1, -1, i, layoutParams2.f ? this.r : 1, false, false));
    }

    /* access modifiers changed from: package-private */
    public static class LazySpanLookup {
        int[] a;
        List<FullSpanItem> b;

        LazySpanLookup() {
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.b.get(i);
                if (fullSpanItem2.b == fullSpanItem.b) {
                    this.b.remove(i);
                }
                if (fullSpanItem2.b >= fullSpanItem.b) {
                    this.b.add(i, fullSpanItem);
                    return;
                }
            }
            this.b.add(fullSpanItem);
        }

        /* access modifiers changed from: package-private */
        public void b() {
            int[] iArr = this.a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.b = null;
        }

        /* access modifiers changed from: package-private */
        public void c(int i) {
            int[] iArr = this.a;
            if (iArr == null) {
                int[] iArr2 = new int[(Math.max(i, 10) + 1)];
                this.a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int length = iArr.length;
                while (length <= i) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        /* access modifiers changed from: package-private */
        public int d(int i) {
            List<FullSpanItem> list = this.b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.b.get(size).b >= i) {
                        this.b.remove(size);
                    }
                }
            }
            return g(i);
        }

        public FullSpanItem e(int i, int i2, int i3, boolean z) {
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.b.get(i4);
                int i5 = fullSpanItem.b;
                if (i5 >= i2) {
                    return null;
                }
                if (i5 >= i && (i3 == 0 || fullSpanItem.c == i3 || (z && fullSpanItem.e))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem f(int i) {
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                if (fullSpanItem.b == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x0048  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0052  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int g(int r5) {
            /*
                r4 = this;
                int[] r0 = r4.a
                r1 = -1
                if (r0 != 0) goto L_0x0006
                return r1
            L_0x0006:
                int r0 = r0.length
                if (r5 < r0) goto L_0x000a
                return r1
            L_0x000a:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                if (r0 != 0) goto L_0x0010
            L_0x000e:
                r0 = -1
                goto L_0x0046
            L_0x0010:
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = r4.f(r5)
                if (r0 == 0) goto L_0x001b
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r2 = r4.b
                r2.remove(r0)
            L_0x001b:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                int r0 = r0.size()
                r2 = 0
            L_0x0022:
                if (r2 >= r0) goto L_0x0034
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r3 = r4.b
                java.lang.Object r3 = r3.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r3
                int r3 = r3.b
                if (r3 < r5) goto L_0x0031
                goto L_0x0035
            L_0x0031:
                int r2 = r2 + 1
                goto L_0x0022
            L_0x0034:
                r2 = -1
            L_0x0035:
                if (r2 == r1) goto L_0x000e
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                java.lang.Object r0 = r0.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r0
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r3 = r4.b
                r3.remove(r2)
                int r0 = r0.b
            L_0x0046:
                if (r0 != r1) goto L_0x0052
                int[] r0 = r4.a
                int r2 = r0.length
                java.util.Arrays.fill(r0, r5, r2, r1)
                int[] r5 = r4.a
                int r5 = r5.length
                return r5
            L_0x0052:
                int[] r2 = r4.a
                int r0 = r0 + 1
                java.util.Arrays.fill(r2, r5, r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.g(int):int");
        }

        /* access modifiers changed from: package-private */
        public void h(int i, int i2) {
            int[] iArr = this.a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                c(i3);
                int[] iArr2 = this.a;
                System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
                Arrays.fill(this.a, i, i3, -1);
                List<FullSpanItem> list = this.b;
                if (list != null) {
                    for (int size = list.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = this.b.get(size);
                        int i4 = fullSpanItem.b;
                        if (i4 >= i) {
                            fullSpanItem.b = i4 + i2;
                        }
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void i(int i, int i2) {
            int[] iArr = this.a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                c(i3);
                int[] iArr2 = this.a;
                System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
                int[] iArr3 = this.a;
                Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
                List<FullSpanItem> list = this.b;
                if (list != null) {
                    for (int size = list.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = this.b.get(size);
                        int i4 = fullSpanItem.b;
                        if (i4 >= i) {
                            if (i4 < i3) {
                                this.b.remove(size);
                            } else {
                                fullSpanItem.b = i4 - i2;
                            }
                        }
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        @SuppressLint({"BanParcelableUsage"})
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new a();
            int b;
            int c;
            int[] d;
            boolean e;

            static class a implements Parcelable.Creator<FullSpanItem> {
                a() {
                }

                /* Return type fixed from 'java.lang.Object' to match base method */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                /* Return type fixed from 'java.lang.Object[]' to match base method */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            FullSpanItem(Parcel parcel) {
                this.b = parcel.readInt();
                this.c = parcel.readInt();
                this.e = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.d = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            public int describeContents() {
                return 0;
            }

            public String toString() {
                StringBuilder q = ic.q("FullSpanItem{mPosition=");
                q.append(this.b);
                q.append(", mGapDir=");
                q.append(this.c);
                q.append(", mHasUnwantedGapAfter=");
                q.append(this.e);
                q.append(", mGapPerSpan=");
                q.append(Arrays.toString(this.d));
                q.append('}');
                return q.toString();
            }

            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.b);
                parcel.writeInt(this.c);
                parcel.writeInt(this.e ? 1 : 0);
                int[] iArr = this.d;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.d);
            }

            FullSpanItem() {
            }
        }
    }
}
