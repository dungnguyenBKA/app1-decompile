package defpackage;

import defpackage.q0;
import java.util.ArrayList;

/* renamed from: r0  reason: default package */
public class r0 {
    protected q0[] A;
    protected ArrayList<q0> B;
    protected a[] C;
    r0 D;
    int E;
    int F;
    protected float G;
    protected int H;
    protected int I;
    protected int J;
    int K;
    int L;
    private int M;
    private int N;
    protected int O;
    protected int P;
    int Q;
    protected int R;
    protected int S;
    private int T;
    private int U;
    float V;
    float W;
    private Object X;
    private int Y;
    private String Z;
    public int a = -1;
    boolean a0;
    public int b = -1;
    boolean b0;
    y0 c;
    boolean c0;
    y0 d;
    int d0;
    int e = 0;
    int e0;
    int f = 0;
    float[] f0;
    int[] g = new int[2];
    protected r0[] g0;
    int h = 0;
    protected r0[] h0;
    int i = 0;
    float j = 1.0f;
    int k = 0;
    int l = 0;
    float m = 1.0f;
    int n = -1;
    float o = 1.0f;
    t0 p = null;
    private int[] q = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float r = 0.0f;
    q0 s = new q0(this, q0.b.LEFT);
    q0 t = new q0(this, q0.b.TOP);
    q0 u = new q0(this, q0.b.RIGHT);
    q0 v = new q0(this, q0.b.BOTTOM);
    q0 w = new q0(this, q0.b.BASELINE);
    q0 x = new q0(this, q0.b.CENTER_X);
    q0 y = new q0(this, q0.b.CENTER_Y);
    q0 z;

    /* renamed from: r0$a */
    public enum a {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public r0() {
        q0 q0Var = new q0(this, q0.b.CENTER);
        this.z = q0Var;
        this.A = new q0[]{this.s, this.u, this.t, this.v, this.w, q0Var};
        ArrayList<q0> arrayList = new ArrayList<>();
        this.B = arrayList;
        a aVar = a.FIXED;
        this.C = new a[]{aVar, aVar};
        this.D = null;
        this.E = 0;
        this.F = 0;
        this.G = 0.0f;
        this.H = -1;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.V = 0.5f;
        this.W = 0.5f;
        this.Y = 0;
        this.Z = null;
        this.a0 = false;
        this.b0 = false;
        this.c0 = false;
        this.d0 = 0;
        this.e0 = 0;
        this.f0 = new float[]{-1.0f, -1.0f};
        this.g0 = new r0[]{null, null};
        this.h0 = new r0[]{null, null};
        arrayList.add(this.s);
        this.B.add(this.t);
        this.B.add(this.u);
        this.B.add(this.v);
        this.B.add(this.x);
        this.B.add(this.y);
        this.B.add(this.z);
        this.B.add(this.w);
    }

    private boolean A(int i2) {
        int i3 = i2 * 2;
        q0[] q0VarArr = this.A;
        if (!(q0VarArr[i3].d == null || q0VarArr[i3].d.d == q0VarArr[i3])) {
            int i4 = i3 + 1;
            return q0VarArr[i4].d != null && q0VarArr[i4].d.d == q0VarArr[i4];
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:144:0x0259  */
    /* JADX WARNING: Removed duplicated region for block: B:151:0x029c  */
    /* JADX WARNING: Removed duplicated region for block: B:154:0x02ad  */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x02be A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x02d3  */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x02dc  */
    /* JADX WARNING: Removed duplicated region for block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00e3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d(defpackage.k0 r28, boolean r29, defpackage.m0 r30, defpackage.m0 r31, defpackage.r0.a r32, boolean r33, defpackage.q0 r34, defpackage.q0 r35, int r36, int r37, int r38, int r39, float r40, boolean r41, boolean r42, int r43, int r44, int r45, float r46, boolean r47) {
        /*
        // Method dump skipped, instructions count: 754
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r0.d(k0, boolean, m0, m0, r0$a, boolean, q0, q0, int, int, int, int, float, boolean, boolean, int, int, int, float, boolean):void");
    }

    public boolean B() {
        if (this.s.d().b == 1 && this.u.d().b == 1 && this.t.d().b == 1 && this.v.d().b == 1) {
            return true;
        }
        return false;
    }

    public boolean C() {
        return this.f == 0 && this.G == 0.0f && this.k == 0 && this.l == 0 && this.C[1] == a.MATCH_CONSTRAINT;
    }

    public boolean D() {
        return this.e == 0 && this.G == 0.0f && this.h == 0 && this.i == 0 && this.C[0] == a.MATCH_CONSTRAINT;
    }

    public void E() {
        this.s.i();
        this.t.i();
        this.u.i();
        this.v.i();
        this.w.i();
        this.x.i();
        this.y.i();
        this.z.i();
        this.D = null;
        this.r = 0.0f;
        this.E = 0;
        this.F = 0;
        this.G = 0.0f;
        this.H = -1;
        this.I = 0;
        this.J = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = 0.5f;
        this.W = 0.5f;
        a[] aVarArr = this.C;
        a aVar = a.FIXED;
        aVarArr[0] = aVar;
        aVarArr[1] = aVar;
        this.X = null;
        this.Y = 0;
        this.d0 = 0;
        this.e0 = 0;
        float[] fArr = this.f0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.a = -1;
        this.b = -1;
        int[] iArr = this.q;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.e = 0;
        this.f = 0;
        this.j = 1.0f;
        this.m = 1.0f;
        this.i = Integer.MAX_VALUE;
        this.l = Integer.MAX_VALUE;
        this.h = 0;
        this.k = 0;
        this.n = -1;
        this.o = 1.0f;
        y0 y0Var = this.c;
        if (y0Var != null) {
            y0Var.b = 0;
            y0Var.a.clear();
            y0Var.c = 0.0f;
        }
        y0 y0Var2 = this.d;
        if (y0Var2 != null) {
            y0Var2.b = 0;
            y0Var2.a.clear();
            y0Var2.c = 0.0f;
        }
        this.p = null;
        this.a0 = false;
        this.b0 = false;
        this.c0 = false;
    }

    public void F() {
        for (int i2 = 0; i2 < 6; i2++) {
            this.A[i2].d().j();
        }
    }

    public void G(i0 i0Var) {
        this.s.j();
        this.t.j();
        this.u.j();
        this.v.j();
        this.w.j();
        this.z.j();
        this.x.j();
        this.y.j();
    }

    public void H() {
    }

    public void I(int i2) {
        this.Q = i2;
    }

    public void J(Object obj) {
        this.X = obj;
    }

    public void K(String str) {
        this.Z = str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void L(java.lang.String r9) {
        /*
        // Method dump skipped, instructions count: 145
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r0.L(java.lang.String):void");
    }

    public void M(int i2, int i3, int i4) {
        if (i4 == 0) {
            this.I = i2;
            int i5 = i3 - i2;
            this.E = i5;
            int i6 = this.R;
            if (i5 < i6) {
                this.E = i6;
            }
        } else if (i4 == 1) {
            this.J = i2;
            int i7 = i3 - i2;
            this.F = i7;
            int i8 = this.S;
            if (i7 < i8) {
                this.F = i8;
            }
        }
        this.b0 = true;
    }

    public void N(int i2) {
        this.F = i2;
        int i3 = this.S;
        if (i2 < i3) {
            this.F = i3;
        }
    }

    public void O(float f2) {
        this.V = f2;
    }

    public void P(int i2) {
        this.d0 = i2;
    }

    public void Q(int i2, int i3) {
        this.I = i2;
        int i4 = i3 - i2;
        this.E = i4;
        int i5 = this.R;
        if (i4 < i5) {
            this.E = i5;
        }
    }

    public void R(a aVar) {
        this.C[0] = aVar;
        if (aVar == a.WRAP_CONTENT) {
            h0(this.T);
        }
    }

    public void S(int i2, int i3, int i4, float f2) {
        this.e = i2;
        this.h = i3;
        this.i = i4;
        this.j = f2;
        if (f2 < 1.0f && i2 == 0) {
            this.e = 2;
        }
    }

    public void T(float f2) {
        this.f0[0] = f2;
    }

    public void U(int i2) {
        this.q[1] = i2;
    }

    public void V(int i2) {
        this.q[0] = i2;
    }

    public void W(int i2) {
        if (i2 < 0) {
            this.S = 0;
        } else {
            this.S = i2;
        }
    }

    public void X(int i2) {
        if (i2 < 0) {
            this.R = 0;
        } else {
            this.R = i2;
        }
    }

    public void Y(int i2, int i3) {
        this.O = i2;
        this.P = i3;
    }

    public void Z(int i2, int i3) {
        this.I = i2;
        this.J = i3;
    }

    /* JADX WARNING: Removed duplicated region for block: B:184:0x029b  */
    /* JADX WARNING: Removed duplicated region for block: B:188:0x02a5  */
    /* JADX WARNING: Removed duplicated region for block: B:192:0x02af  */
    /* JADX WARNING: Removed duplicated region for block: B:198:0x02c8  */
    /* JADX WARNING: Removed duplicated region for block: B:207:0x0326  */
    /* JADX WARNING: Removed duplicated region for block: B:210:0x0337 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:211:0x0338  */
    /* JADX WARNING: Removed duplicated region for block: B:237:0x0397  */
    /* JADX WARNING: Removed duplicated region for block: B:238:0x03a0  */
    /* JADX WARNING: Removed duplicated region for block: B:241:0x03a6  */
    /* JADX WARNING: Removed duplicated region for block: B:242:0x03ae  */
    /* JADX WARNING: Removed duplicated region for block: B:245:0x03e5  */
    /* JADX WARNING: Removed duplicated region for block: B:249:0x040e  */
    /* JADX WARNING: Removed duplicated region for block: B:252:0x0418  */
    /* JADX WARNING: Removed duplicated region for block: B:254:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0076  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(defpackage.k0 r42) {
        /*
        // Method dump skipped, instructions count: 1206
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r0.a(k0):void");
    }

    public void a0(float f2) {
        this.W = f2;
    }

    public boolean b() {
        return this.Y != 8;
    }

    public void b0(int i2) {
        this.e0 = i2;
    }

    public void c(int i2) {
        w0.a(i2, this);
    }

    public void c0(int i2, int i3) {
        this.J = i2;
        int i4 = i3 - i2;
        this.F = i4;
        int i5 = this.S;
        if (i4 < i5) {
            this.F = i5;
        }
    }

    public void d0(a aVar) {
        this.C[1] = aVar;
        if (aVar == a.WRAP_CONTENT) {
            N(this.U);
        }
    }

    public void e(r0 r0Var, float f2, int i2) {
        q0.b bVar = q0.b.CENTER;
        z(bVar, r0Var, bVar, i2, 0);
        this.r = f2;
    }

    public void e0(int i2, int i3, int i4, float f2) {
        this.f = i2;
        this.k = i3;
        this.l = i4;
        this.m = f2;
        if (f2 < 1.0f && i2 == 0) {
            this.f = 2;
        }
    }

    public void f(k0 k0Var) {
        k0Var.l(this.s);
        k0Var.l(this.t);
        k0Var.l(this.u);
        k0Var.l(this.v);
        if (this.Q > 0) {
            k0Var.l(this.w);
        }
    }

    public void f0(float f2) {
        this.f0[1] = f2;
    }

    public q0 g(q0.b bVar) {
        switch (bVar.ordinal()) {
            case 0:
                return null;
            case 1:
                return this.s;
            case 2:
                return this.t;
            case 3:
                return this.u;
            case 4:
                return this.v;
            case 5:
                return this.w;
            case 6:
                return this.z;
            case 7:
                return this.x;
            case 8:
                return this.y;
            default:
                throw new AssertionError(bVar.name());
        }
    }

    public void g0(int i2) {
        this.Y = i2;
    }

    public int h() {
        return this.Q;
    }

    public void h0(int i2) {
        this.E = i2;
        int i3 = this.R;
        if (i2 < i3) {
            this.E = i3;
        }
    }

    public int i() {
        return this.J + this.F;
    }

    public void i0(int i2) {
        this.U = i2;
    }

    public Object j() {
        return this.X;
    }

    public void j0(int i2) {
        this.T = i2;
    }

    public String k() {
        return this.Z;
    }

    public void k0(int i2) {
        this.I = i2;
    }

    public a l(int i2) {
        if (i2 == 0) {
            return p();
        }
        if (i2 == 1) {
            return u();
        }
        return null;
    }

    public void l0(int i2) {
        this.J = i2;
    }

    public int m() {
        return this.M + this.O;
    }

    public void m0() {
        int i2 = this.I;
        int i3 = this.J;
        this.M = i2;
        this.N = i3;
    }

    public int n() {
        return this.N + this.P;
    }

    public void n0(k0 k0Var) {
        int i2;
        int i3;
        int p2 = k0Var.p(this.s);
        int p3 = k0Var.p(this.t);
        int p4 = k0Var.p(this.u);
        int p5 = k0Var.p(this.v);
        int i4 = p5 - p3;
        if (p4 - p2 < 0 || i4 < 0 || p2 == Integer.MIN_VALUE || p2 == Integer.MAX_VALUE || p3 == Integer.MIN_VALUE || p3 == Integer.MAX_VALUE || p4 == Integer.MIN_VALUE || p4 == Integer.MAX_VALUE || p5 == Integer.MIN_VALUE || p5 == Integer.MAX_VALUE) {
            p5 = 0;
            p2 = 0;
            p3 = 0;
            p4 = 0;
        }
        int i5 = p4 - p2;
        int i6 = p5 - p3;
        this.I = p2;
        this.J = p3;
        if (this.Y == 8) {
            this.E = 0;
            this.F = 0;
            return;
        }
        a[] aVarArr = this.C;
        a aVar = aVarArr[0];
        a aVar2 = a.FIXED;
        if (aVar == aVar2 && i5 < (i3 = this.E)) {
            i5 = i3;
        }
        if (aVarArr[1] == aVar2 && i6 < (i2 = this.F)) {
            i6 = i2;
        }
        this.E = i5;
        this.F = i6;
        int i7 = this.S;
        if (i6 < i7) {
            this.F = i7;
        }
        int i8 = this.R;
        if (i5 < i8) {
            this.E = i8;
        }
        this.b0 = true;
    }

    public int o() {
        if (this.Y == 8) {
            return 0;
        }
        return this.F;
    }

    public a p() {
        return this.C[0];
    }

    public int q(int i2) {
        if (i2 == 0) {
            return w();
        }
        if (i2 == 1) {
            return o();
        }
        return 0;
    }

    public y0 r() {
        if (this.d == null) {
            this.d = new y0();
        }
        return this.d;
    }

    public y0 s() {
        if (this.c == null) {
            this.c = new y0();
        }
        return this.c;
    }

    public int t() {
        return this.I + this.E;
    }

    public String toString() {
        String str = "";
        StringBuilder q2 = ic.q(str);
        if (this.Z != null) {
            str = ic.l(ic.q("id: "), this.Z, " ");
        }
        q2.append(str);
        q2.append("(");
        q2.append(this.I);
        q2.append(", ");
        q2.append(this.J);
        q2.append(") - (");
        q2.append(this.E);
        q2.append(" x ");
        q2.append(this.F);
        q2.append(") wrap: (");
        q2.append(this.T);
        q2.append(" x ");
        return ic.k(q2, this.U, ")");
    }

    public a u() {
        return this.C[1];
    }

    public int v() {
        return this.Y;
    }

    public int w() {
        if (this.Y == 8) {
            return 0;
        }
        return this.E;
    }

    public int x() {
        return this.U;
    }

    public int y() {
        return this.T;
    }

    public void z(q0.b bVar, r0 r0Var, q0.b bVar2, int i2, int i3) {
        g(bVar).a(r0Var.g(bVar2), i2, i3, q0.a.STRONG, 0, true);
    }
}
