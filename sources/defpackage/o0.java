package defpackage;

import defpackage.r0;
import java.util.ArrayList;

/* renamed from: o0  reason: default package */
public class o0 extends v0 {
    private int k0 = 0;
    private ArrayList<x0> l0 = new ArrayList<>(4);
    private boolean m0 = true;

    @Override // defpackage.r0
    public void F() {
        super.F();
        this.l0.clear();
    }

    @Override // defpackage.r0
    public void H() {
        x0 x0Var;
        float f;
        x0 x0Var2;
        int i = this.k0;
        float f2 = Float.MAX_VALUE;
        if (i != 0) {
            if (i == 1) {
                x0Var = this.u.d();
            } else if (i == 2) {
                x0Var = this.t.d();
            } else if (i == 3) {
                x0Var = this.v.d();
            } else {
                return;
            }
            f2 = 0.0f;
        } else {
            x0Var = this.s.d();
        }
        int size = this.l0.size();
        x0 x0Var3 = null;
        for (int i2 = 0; i2 < size; i2++) {
            x0 x0Var4 = this.l0.get(i2);
            if (x0Var4.b == 1) {
                int i3 = this.k0;
                if (i3 == 0 || i3 == 2) {
                    f = x0Var4.g;
                    if (f < f2) {
                        x0Var2 = x0Var4.f;
                    }
                } else {
                    f = x0Var4.g;
                    if (f > f2) {
                        x0Var2 = x0Var4.f;
                    }
                }
                x0Var3 = x0Var2;
                f2 = f;
            } else {
                return;
            }
        }
        x0Var.f = x0Var3;
        x0Var.g = f2;
        x0Var.a();
        int i4 = this.k0;
        if (i4 == 0) {
            this.u.d().k(x0Var3, f2);
        } else if (i4 == 1) {
            this.s.d().k(x0Var3, f2);
        } else if (i4 == 2) {
            this.v.d().k(x0Var3, f2);
        } else if (i4 == 3) {
            this.t.d().k(x0Var3, f2);
        }
    }

    @Override // defpackage.r0
    public void a(k0 k0Var) {
        Object[] objArr;
        boolean z;
        int i;
        int i2;
        r0.a aVar = r0.a.MATCH_CONSTRAINT;
        r0.a aVar2 = r0.a.WRAP_CONTENT;
        q0[] q0VarArr = this.A;
        q0VarArr[0] = this.s;
        q0VarArr[2] = this.t;
        q0VarArr[1] = this.u;
        q0VarArr[3] = this.v;
        int i3 = 0;
        while (true) {
            objArr = this.A;
            if (i3 >= objArr.length) {
                break;
            }
            objArr[i3].i = k0Var.l(objArr[i3]);
            i3++;
        }
        int i4 = this.k0;
        if (i4 >= 0 && i4 < 4) {
            q0 q0Var = objArr[i4];
            int i5 = 0;
            while (true) {
                if (i5 >= this.j0) {
                    z = false;
                    break;
                }
                r0 r0Var = this.i0[i5];
                if ((this.m0 || r0Var.b()) && ((((i = this.k0) == 0 || i == 1) && r0Var.p() == aVar) || (((i2 = this.k0) == 2 || i2 == 3) && r0Var.u() == aVar))) {
                    z = true;
                } else {
                    i5++;
                }
            }
            int i6 = this.k0;
            if (i6 == 0 || i6 == 1 ? this.D.p() == aVar2 : this.D.u() == aVar2) {
                z = false;
            }
            for (int i7 = 0; i7 < this.j0; i7++) {
                r0 r0Var2 = this.i0[i7];
                if (this.m0 || r0Var2.b()) {
                    m0 l = k0Var.l(r0Var2.A[this.k0]);
                    q0[] q0VarArr2 = r0Var2.A;
                    int i8 = this.k0;
                    q0VarArr2[i8].i = l;
                    if (i8 == 0 || i8 == 2) {
                        m0 m0Var = q0Var.i;
                        h0 m = k0Var.m();
                        m0 n = k0Var.n();
                        n.c = 0;
                        m.f(m0Var, l, n, 0);
                        if (z) {
                            m.c.l(k0Var.k(1, null), (float) ((int) (m.c.f(n) * -1.0f)));
                        }
                        k0Var.c(m);
                    } else {
                        m0 m0Var2 = q0Var.i;
                        h0 m2 = k0Var.m();
                        m0 n2 = k0Var.n();
                        n2.c = 0;
                        m2.e(m0Var2, l, n2, 0);
                        if (z) {
                            m2.c.l(k0Var.k(1, null), (float) ((int) (m2.c.f(n2) * -1.0f)));
                        }
                        k0Var.c(m2);
                    }
                }
            }
            int i9 = this.k0;
            if (i9 == 0) {
                k0Var.d(this.u.i, this.s.i, 0, 6);
                if (!z) {
                    k0Var.d(this.s.i, this.D.u.i, 0, 5);
                }
            } else if (i9 == 1) {
                k0Var.d(this.s.i, this.u.i, 0, 6);
                if (!z) {
                    k0Var.d(this.s.i, this.D.s.i, 0, 5);
                }
            } else if (i9 == 2) {
                k0Var.d(this.v.i, this.t.i, 0, 6);
                if (!z) {
                    k0Var.d(this.t.i, this.D.v.i, 0, 5);
                }
            } else if (i9 == 3) {
                k0Var.d(this.t.i, this.v.i, 0, 6);
                if (!z) {
                    k0Var.d(this.t.i, this.D.t.i, 0, 5);
                }
            }
        }
    }

    @Override // defpackage.r0
    public boolean b() {
        return true;
    }

    @Override // defpackage.r0
    public void c(int i) {
        x0 x0Var;
        x0 x0Var2;
        r0 r0Var = this.D;
        if (r0Var != null && ((s0) r0Var).x0(2)) {
            int i2 = this.k0;
            if (i2 == 0) {
                x0Var = this.s.d();
            } else if (i2 == 1) {
                x0Var = this.u.d();
            } else if (i2 == 2) {
                x0Var = this.t.d();
            } else if (i2 == 3) {
                x0Var = this.v.d();
            } else {
                return;
            }
            x0Var.h = 5;
            int i3 = this.k0;
            if (i3 == 0 || i3 == 1) {
                this.t.d().k(null, 0.0f);
                this.v.d().k(null, 0.0f);
            } else {
                this.s.d().k(null, 0.0f);
                this.u.d().k(null, 0.0f);
            }
            this.l0.clear();
            for (int i4 = 0; i4 < this.j0; i4++) {
                r0 r0Var2 = this.i0[i4];
                if (this.m0 || r0Var2.b()) {
                    int i5 = this.k0;
                    if (i5 == 0) {
                        x0Var2 = r0Var2.s.d();
                    } else if (i5 == 1) {
                        x0Var2 = r0Var2.u.d();
                    } else if (i5 == 2) {
                        x0Var2 = r0Var2.t.d();
                    } else if (i5 != 3) {
                        x0Var2 = null;
                    } else {
                        x0Var2 = r0Var2.v.d();
                    }
                    if (x0Var2 != null) {
                        this.l0.add(x0Var2);
                        x0Var2.a.add(x0Var);
                    }
                }
            }
        }
    }

    public void q0(boolean z) {
        this.m0 = z;
    }

    public void r0(int i) {
        this.k0 = i;
    }
}
