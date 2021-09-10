package defpackage;

import defpackage.q0;
import defpackage.r0;

/* renamed from: u0  reason: default package */
public class u0 extends r0 {
    protected float i0 = -1.0f;
    protected int j0 = -1;
    protected int k0 = -1;
    private q0 l0 = this.t;
    private int m0;

    public u0() {
        this.m0 = 0;
        this.B.clear();
        this.B.add(this.l0);
        int length = this.A.length;
        for (int i = 0; i < length; i++) {
            this.A[i] = this.l0;
        }
    }

    @Override // defpackage.r0
    public void a(k0 k0Var) {
        r0.a aVar = r0.a.WRAP_CONTENT;
        s0 s0Var = (s0) this.D;
        if (s0Var != null) {
            q0 g = s0Var.g(q0.b.LEFT);
            q0 g2 = s0Var.g(q0.b.RIGHT);
            r0 r0Var = this.D;
            boolean z = true;
            boolean z2 = r0Var != null && r0Var.C[0] == aVar;
            if (this.m0 == 0) {
                g = s0Var.g(q0.b.TOP);
                g2 = s0Var.g(q0.b.BOTTOM);
                r0 r0Var2 = this.D;
                if (r0Var2 == null || r0Var2.C[1] != aVar) {
                    z = false;
                }
                z2 = z;
            }
            if (this.j0 != -1) {
                m0 l = k0Var.l(this.l0);
                k0Var.d(l, k0Var.l(g), this.j0, 6);
                if (z2) {
                    k0Var.f(k0Var.l(g2), l, 0, 5);
                }
            } else if (this.k0 != -1) {
                m0 l2 = k0Var.l(this.l0);
                m0 l3 = k0Var.l(g2);
                k0Var.d(l2, l3, -this.k0, 6);
                if (z2) {
                    k0Var.f(l2, k0Var.l(g), 0, 5);
                    k0Var.f(l3, l2, 0, 5);
                }
            } else if (this.i0 != -1.0f) {
                m0 l4 = k0Var.l(this.l0);
                m0 l5 = k0Var.l(g);
                m0 l6 = k0Var.l(g2);
                float f = this.i0;
                h0 m = k0Var.m();
                m.c.l(l4, -1.0f);
                m.c.l(l5, 1.0f - f);
                m.c.l(l6, f);
                k0Var.c(m);
            }
        }
    }

    @Override // defpackage.r0
    public boolean b() {
        return true;
    }

    @Override // defpackage.r0
    public void c(int i) {
        r0.a aVar = r0.a.FIXED;
        r0 r0Var = this.D;
        if (r0Var != null) {
            if (this.m0 == 1) {
                this.t.d().f(1, r0Var.t.d(), 0);
                this.v.d().f(1, r0Var.t.d(), 0);
                if (this.j0 != -1) {
                    this.s.d().f(1, r0Var.s.d(), this.j0);
                    this.u.d().f(1, r0Var.s.d(), this.j0);
                } else if (this.k0 != -1) {
                    this.s.d().f(1, r0Var.u.d(), -this.k0);
                    this.u.d().f(1, r0Var.u.d(), -this.k0);
                } else if (this.i0 != -1.0f && r0Var.p() == aVar) {
                    int i2 = (int) (((float) r0Var.E) * this.i0);
                    this.s.d().f(1, r0Var.s.d(), i2);
                    this.u.d().f(1, r0Var.s.d(), i2);
                }
            } else {
                this.s.d().f(1, r0Var.s.d(), 0);
                this.u.d().f(1, r0Var.s.d(), 0);
                if (this.j0 != -1) {
                    this.t.d().f(1, r0Var.t.d(), this.j0);
                    this.v.d().f(1, r0Var.t.d(), this.j0);
                } else if (this.k0 != -1) {
                    this.t.d().f(1, r0Var.v.d(), -this.k0);
                    this.v.d().f(1, r0Var.v.d(), -this.k0);
                } else if (this.i0 != -1.0f && r0Var.u() == aVar) {
                    int i3 = (int) (((float) r0Var.F) * this.i0);
                    this.t.d().f(1, r0Var.t.d(), i3);
                    this.v.d().f(1, r0Var.t.d(), i3);
                }
            }
        }
    }

    @Override // defpackage.r0
    public q0 g(q0.b bVar) {
        switch (bVar.ordinal()) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
            case 3:
                if (this.m0 == 1) {
                    return this.l0;
                }
                break;
            case 2:
            case 4:
                if (this.m0 == 0) {
                    return this.l0;
                }
                break;
        }
        throw new AssertionError(bVar.name());
    }

    @Override // defpackage.r0
    public void n0(k0 k0Var) {
        if (this.D != null) {
            int p = k0Var.p(this.l0);
            if (this.m0 == 1) {
                this.I = p;
                this.J = 0;
                N(this.D.o());
                h0(0);
                return;
            }
            this.I = 0;
            this.J = p;
            h0(this.D.w());
            N(0);
        }
    }

    public void o0(int i) {
        if (i > -1) {
            this.i0 = -1.0f;
            this.j0 = i;
            this.k0 = -1;
        }
    }

    public void p0(int i) {
        if (i > -1) {
            this.i0 = -1.0f;
            this.j0 = -1;
            this.k0 = i;
        }
    }

    public void q0(float f) {
        if (f > -1.0f) {
            this.i0 = f;
            this.j0 = -1;
            this.k0 = -1;
        }
    }

    public void r0(int i) {
        if (this.m0 != i) {
            this.m0 = i;
            this.B.clear();
            if (this.m0 == 1) {
                this.l0 = this.s;
            } else {
                this.l0 = this.t;
            }
            this.B.add(this.l0);
            int length = this.A.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.A[i2] = this.l0;
            }
        }
    }
}
