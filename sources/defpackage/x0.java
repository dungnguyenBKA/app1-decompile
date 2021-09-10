package defpackage;

import defpackage.q0;

/* renamed from: x0  reason: default package */
public class x0 extends z0 {
    q0 c;
    x0 d;
    float e;
    x0 f;
    float g;
    int h = 0;
    private x0 i;
    private y0 j = null;
    private int k = 1;
    private y0 l = null;
    private int m = 1;

    public x0(q0 q0Var) {
        this.c = q0Var;
    }

    @Override // defpackage.z0
    public void d() {
        int i2;
        x0 x0Var;
        x0 x0Var2;
        x0 x0Var3;
        x0 x0Var4;
        x0 x0Var5;
        x0 x0Var6;
        float f2;
        float f3;
        float f4;
        x0 x0Var7;
        boolean z = true;
        if (this.b != 1 && (i2 = this.h) != 4) {
            y0 y0Var = this.j;
            if (y0Var != null) {
                if (y0Var.b == 1) {
                    this.e = ((float) this.k) * y0Var.c;
                } else {
                    return;
                }
            }
            y0 y0Var2 = this.l;
            if (y0Var2 != null) {
                if (y0Var2.b == 1) {
                    float f5 = y0Var2.c;
                } else {
                    return;
                }
            }
            if (i2 == 1 && ((x0Var7 = this.d) == null || x0Var7.b == 1)) {
                if (x0Var7 == null) {
                    this.f = this;
                    this.g = this.e;
                } else {
                    this.f = x0Var7.f;
                    this.g = x0Var7.g + this.e;
                }
                a();
            } else if (i2 == 2 && (x0Var4 = this.d) != null && x0Var4.b == 1 && (x0Var5 = this.i) != null && (x0Var6 = x0Var5.d) != null && x0Var6.b == 1) {
                this.f = x0Var4.f;
                x0Var5.f = x0Var6.f;
                q0 q0Var = this.c;
                q0.b bVar = q0Var.c;
                q0.b bVar2 = q0.b.RIGHT;
                int i3 = 0;
                if (!(bVar == bVar2 || bVar == q0.b.BOTTOM)) {
                    z = false;
                }
                if (z) {
                    f2 = x0Var4.g - x0Var6.g;
                } else {
                    f2 = x0Var6.g - x0Var4.g;
                }
                if (bVar == q0.b.LEFT || bVar == bVar2) {
                    f3 = f2 - ((float) q0Var.b.w());
                    f4 = this.c.b.V;
                } else {
                    f3 = f2 - ((float) q0Var.b.o());
                    f4 = this.c.b.W;
                }
                int c2 = this.c.c();
                int c3 = this.i.c.c();
                q0 q0Var2 = this.c.d;
                x0 x0Var8 = this.i;
                if (q0Var2 == x0Var8.c.d) {
                    f4 = 0.5f;
                    c3 = 0;
                } else {
                    i3 = c2;
                }
                float f6 = (float) i3;
                float f7 = (float) c3;
                float f8 = (f3 - f6) - f7;
                if (z) {
                    x0Var8.g = (f8 * f4) + x0Var8.d.g + f7;
                    this.g = (this.d.g - f6) - ((1.0f - f4) * f8);
                } else {
                    this.g = (f8 * f4) + this.d.g + f6;
                    x0Var8.g = (x0Var8.d.g - f7) - ((1.0f - f4) * f8);
                }
                a();
                this.i.a();
            } else if (i2 == 3 && (x0Var = this.d) != null && x0Var.b == 1 && (x0Var2 = this.i) != null && (x0Var3 = x0Var2.d) != null && x0Var3.b == 1) {
                this.f = x0Var.f;
                x0Var2.f = x0Var3.f;
                this.g = x0Var.g + this.e;
                x0Var2.g = x0Var3.g + x0Var2.e;
                a();
                this.i.a();
            } else if (i2 == 5) {
                this.c.b.H();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void e(k0 k0Var) {
        m0 m0Var = this.c.i;
        x0 x0Var = this.f;
        if (x0Var == null) {
            k0Var.e(m0Var, (int) (this.g + 0.5f));
        } else {
            k0Var.d(m0Var, k0Var.l(x0Var.c), (int) (this.g + 0.5f), 6);
        }
    }

    public void f(int i2, x0 x0Var, int i3) {
        this.h = i2;
        this.d = x0Var;
        this.e = (float) i3;
        x0Var.a.add(this);
    }

    public void g(x0 x0Var, int i2) {
        this.d = x0Var;
        this.e = (float) i2;
        x0Var.a.add(this);
    }

    public void h(x0 x0Var, int i2, y0 y0Var) {
        this.d = x0Var;
        x0Var.a.add(this);
        this.j = y0Var;
        this.k = i2;
        y0Var.a.add(this);
    }

    public float i() {
        return this.g;
    }

    public void j() {
        this.b = 0;
        this.a.clear();
        this.d = null;
        this.e = 0.0f;
        this.j = null;
        this.k = 1;
        this.l = null;
        this.m = 1;
        this.f = null;
        this.g = 0.0f;
        this.i = null;
        this.h = 0;
    }

    public void k(x0 x0Var, float f2) {
        int i2 = this.b;
        if (i2 == 0 || !(this.f == x0Var || this.g == f2)) {
            this.f = x0Var;
            this.g = f2;
            if (i2 == 1) {
                b();
            }
            a();
        }
    }

    /* access modifiers changed from: package-private */
    public String l(int i2) {
        return i2 == 1 ? "DIRECT" : i2 == 2 ? "CENTER" : i2 == 3 ? "MATCH" : i2 == 4 ? "CHAIN" : i2 == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void m(x0 x0Var, float f2) {
        this.i = x0Var;
    }

    public void n(x0 x0Var, int i2, y0 y0Var) {
        this.i = x0Var;
        this.l = y0Var;
        this.m = i2;
    }

    public String toString() {
        if (this.b != 1) {
            StringBuilder q = ic.q("{ ");
            q.append(this.c);
            q.append(" UNRESOLVED} type: ");
            q.append(l(this.h));
            return q.toString();
        } else if (this.f == this) {
            StringBuilder q2 = ic.q("[");
            q2.append(this.c);
            q2.append(", RESOLVED: ");
            q2.append(this.g);
            q2.append("]  type: ");
            q2.append(l(this.h));
            return q2.toString();
        } else {
            StringBuilder q3 = ic.q("[");
            q3.append(this.c);
            q3.append(", RESOLVED: ");
            q3.append(this.f);
            q3.append(":");
            q3.append(this.g);
            q3.append("] type: ");
            q3.append(l(this.h));
            return q3.toString();
        }
    }
}
