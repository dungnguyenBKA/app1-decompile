package defpackage;

import defpackage.m0;
import java.util.Arrays;
import java.util.Objects;

/* renamed from: k0  reason: default package */
public class k0 {
    private static int o = 1000;
    int a;
    private a b;
    private int c;
    private int d;
    h0[] e;
    public boolean f;
    private boolean[] g;
    int h;
    int i;
    private int j;
    final i0 k;
    private m0[] l;
    private int m;
    private final a n;

    /* access modifiers changed from: package-private */
    /* renamed from: k0$a */
    public interface a {
        void a(m0 m0Var);
    }

    public k0() {
        this.a = 0;
        this.c = 32;
        this.d = 32;
        this.e = null;
        this.f = false;
        this.g = new boolean[32];
        this.h = 1;
        this.i = 0;
        this.j = 32;
        this.l = new m0[o];
        this.m = 0;
        this.e = new h0[32];
        u();
        i0 i0Var = new i0();
        this.k = i0Var;
        this.b = new j0(i0Var);
        this.n = new h0(i0Var);
    }

    private m0 a(m0.a aVar, String str) {
        m0 a2 = this.k.b.a();
        if (a2 == null) {
            a2 = new m0(aVar);
            a2.f = aVar;
        } else {
            a2.d();
            a2.f = aVar;
        }
        int i2 = this.m;
        int i3 = o;
        if (i2 >= i3) {
            int i4 = i3 * 2;
            o = i4;
            this.l = (m0[]) Arrays.copyOf(this.l, i4);
        }
        m0[] m0VarArr = this.l;
        int i5 = this.m;
        this.m = i5 + 1;
        m0VarArr[i5] = a2;
        return a2;
    }

    private final void i(h0 h0Var) {
        h0[] h0VarArr = this.e;
        int i2 = this.i;
        if (h0VarArr[i2] != null) {
            this.k.a.b(h0VarArr[i2]);
        }
        h0[] h0VarArr2 = this.e;
        int i3 = this.i;
        h0VarArr2[i3] = h0Var;
        m0 m0Var = h0Var.a;
        m0Var.b = i3;
        this.i = i3 + 1;
        m0Var.e(h0Var);
    }

    private void j() {
        for (int i2 = 0; i2 < this.i; i2++) {
            h0 h0Var = this.e[i2];
            h0Var.a.d = h0Var.b;
        }
    }

    private void q() {
        int i2 = this.c * 2;
        this.c = i2;
        this.e = (h0[]) Arrays.copyOf(this.e, i2);
        i0 i0Var = this.k;
        i0Var.c = (m0[]) Arrays.copyOf(i0Var.c, this.c);
        int i3 = this.c;
        this.g = new boolean[i3];
        this.d = i3;
        this.j = i3;
    }

    private final int t(a aVar) {
        for (int i2 = 0; i2 < this.h; i2++) {
            this.g[i2] = false;
        }
        boolean z = false;
        int i3 = 0;
        while (!z) {
            i3++;
            if (i3 >= this.h * 2) {
                return i3;
            }
            h0 h0Var = (h0) aVar;
            m0 m0Var = h0Var.a;
            if (m0Var != null) {
                this.g[m0Var.a] = true;
            }
            m0 g2 = h0Var.c.g(this.g, null);
            if (g2 != null) {
                boolean[] zArr = this.g;
                int i4 = g2.a;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (g2 != null) {
                float f2 = Float.MAX_VALUE;
                int i5 = -1;
                for (int i6 = 0; i6 < this.i; i6++) {
                    h0 h0Var2 = this.e[i6];
                    if (h0Var2.a.f != m0.a.UNRESTRICTED && !h0Var2.d && h0Var2.c.d(g2)) {
                        float f3 = h0Var2.c.f(g2);
                        if (f3 < 0.0f) {
                            float f4 = (-h0Var2.b) / f3;
                            if (f4 < f2) {
                                i5 = i6;
                                f2 = f4;
                            }
                        }
                    }
                }
                if (i5 > -1) {
                    h0 h0Var3 = this.e[i5];
                    h0Var3.a.b = -1;
                    h0Var3.h(g2);
                    m0 m0Var2 = h0Var3.a;
                    m0Var2.b = i5;
                    m0Var2.e(h0Var3);
                }
            }
            z = true;
        }
        return i3;
    }

    private void u() {
        int i2 = 0;
        while (true) {
            h0[] h0VarArr = this.e;
            if (i2 < h0VarArr.length) {
                h0 h0Var = h0VarArr[i2];
                if (h0Var != null) {
                    this.k.a.b(h0Var);
                }
                this.e[i2] = null;
                i2++;
            } else {
                return;
            }
        }
    }

    private final void w(h0 h0Var) {
        if (this.i > 0) {
            h0Var.c.o(h0Var, this.e);
            if (h0Var.c.a == 0) {
                h0Var.d = true;
            }
        }
    }

    public void b(m0 m0Var, m0 m0Var2, int i2, float f2, m0 m0Var3, m0 m0Var4, int i3, int i4) {
        h0 m2 = m();
        if (m0Var2 == m0Var3) {
            m2.c.l(m0Var, 1.0f);
            m2.c.l(m0Var4, 1.0f);
            m2.c.l(m0Var2, -2.0f);
        } else if (f2 == 0.5f) {
            m2.c.l(m0Var, 1.0f);
            m2.c.l(m0Var2, -1.0f);
            m2.c.l(m0Var3, -1.0f);
            m2.c.l(m0Var4, 1.0f);
            if (i2 > 0 || i3 > 0) {
                m2.b = (float) ((-i2) + i3);
            }
        } else if (f2 <= 0.0f) {
            m2.c.l(m0Var, -1.0f);
            m2.c.l(m0Var2, 1.0f);
            m2.b = (float) i2;
        } else if (f2 >= 1.0f) {
            m2.c.l(m0Var3, -1.0f);
            m2.c.l(m0Var4, 1.0f);
            m2.b = (float) i3;
        } else {
            float f3 = 1.0f - f2;
            m2.c.l(m0Var, f3 * 1.0f);
            m2.c.l(m0Var2, f3 * -1.0f);
            m2.c.l(m0Var3, -1.0f * f2);
            m2.c.l(m0Var4, 1.0f * f2);
            if (i2 > 0 || i3 > 0) {
                m2.b = (((float) i3) * f2) + (((float) (-i2)) * f3);
            }
        }
        if (i4 != 6) {
            m2.b(this, i4);
        }
        c(m2);
    }

    public void c(h0 h0Var) {
        boolean z;
        boolean z2;
        m0 g2;
        boolean z3 = true;
        if (this.i + 1 >= this.j || this.h + 1 >= this.d) {
            q();
        }
        boolean z4 = false;
        if (!h0Var.d) {
            w(h0Var);
            if (!(h0Var.a == null && h0Var.b == 0.0f && h0Var.c.a == 0)) {
                float f2 = h0Var.b;
                if (f2 < 0.0f) {
                    h0Var.b = f2 * -1.0f;
                    h0Var.c.j();
                }
                m0 b2 = h0Var.c.b(this);
                if (b2 == null) {
                    z = true;
                } else {
                    h0Var.h(b2);
                    z = false;
                }
                if (h0Var.c.a == 0) {
                    h0Var.d = true;
                }
                if (z) {
                    if (this.h + 1 >= this.d) {
                        q();
                    }
                    m0 a2 = a(m0.a.SLACK, null);
                    int i2 = this.a + 1;
                    this.a = i2;
                    this.h++;
                    a2.a = i2;
                    this.k.c[i2] = a2;
                    h0Var.a = a2;
                    i(h0Var);
                    h0 h0Var2 = (h0) this.n;
                    Objects.requireNonNull(h0Var2);
                    h0Var2.a = null;
                    h0Var2.c.c();
                    int i3 = 0;
                    while (true) {
                        g0 g0Var = h0Var.c;
                        if (i3 >= g0Var.a) {
                            break;
                        }
                        h0Var2.c.a(g0Var.h(i3), h0Var.c.i(i3), true);
                        i3++;
                    }
                    t(this.n);
                    if (a2.b == -1) {
                        if (h0Var.a == a2 && (g2 = h0Var.c.g(null, a2)) != null) {
                            h0Var.h(g2);
                        }
                        if (!h0Var.d) {
                            h0Var.a.e(h0Var);
                        }
                        this.i--;
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                m0 m0Var = h0Var.a;
                if (m0Var == null || (m0Var.f != m0.a.UNRESTRICTED && h0Var.b < 0.0f)) {
                    z3 = false;
                }
                if (z3) {
                    z4 = z2;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        if (!z4) {
            i(h0Var);
        }
    }

    public h0 d(m0 m0Var, m0 m0Var2, int i2, int i3) {
        h0 m2 = m();
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            m2.b = (float) i2;
        }
        if (!z) {
            m2.c.l(m0Var, -1.0f);
            m2.c.l(m0Var2, 1.0f);
        } else {
            m2.c.l(m0Var, 1.0f);
            m2.c.l(m0Var2, -1.0f);
        }
        if (i3 != 6) {
            m2.b(this, i3);
        }
        c(m2);
        return m2;
    }

    public void e(m0 m0Var, int i2) {
        int i3 = m0Var.b;
        if (i3 != -1) {
            h0 h0Var = this.e[i3];
            if (h0Var.d) {
                h0Var.b = (float) i2;
            } else if (h0Var.c.a == 0) {
                h0Var.d = true;
                h0Var.b = (float) i2;
            } else {
                h0 m2 = m();
                if (i2 < 0) {
                    m2.b = (float) (i2 * -1);
                    m2.c.l(m0Var, 1.0f);
                } else {
                    m2.b = (float) i2;
                    m2.c.l(m0Var, -1.0f);
                }
                c(m2);
            }
        } else {
            h0 m3 = m();
            m3.a = m0Var;
            float f2 = (float) i2;
            m0Var.d = f2;
            m3.b = f2;
            m3.d = true;
            c(m3);
        }
    }

    public void f(m0 m0Var, m0 m0Var2, int i2, int i3) {
        h0 m2 = m();
        m0 n2 = n();
        n2.c = 0;
        m2.e(m0Var, m0Var2, n2, i2);
        if (i3 != 6) {
            m2.c.l(k(i3, null), (float) ((int) (m2.c.f(n2) * -1.0f)));
        }
        c(m2);
    }

    public void g(m0 m0Var, m0 m0Var2, int i2, int i3) {
        h0 m2 = m();
        m0 n2 = n();
        n2.c = 0;
        m2.f(m0Var, m0Var2, n2, i2);
        if (i3 != 6) {
            m2.c.l(k(i3, null), (float) ((int) (m2.c.f(n2) * -1.0f)));
        }
        c(m2);
    }

    public void h(m0 m0Var, m0 m0Var2, m0 m0Var3, m0 m0Var4, float f2, int i2) {
        h0 m2 = m();
        m2.c(m0Var, m0Var2, m0Var3, m0Var4, f2);
        if (i2 != 6) {
            m2.b(this, i2);
        }
        c(m2);
    }

    public m0 k(int i2, String str) {
        if (this.h + 1 >= this.d) {
            q();
        }
        m0 a2 = a(m0.a.ERROR, str);
        int i3 = this.a + 1;
        this.a = i3;
        this.h++;
        a2.a = i3;
        a2.c = i2;
        this.k.c[i3] = a2;
        this.b.a(a2);
        return a2;
    }

    public m0 l(Object obj) {
        m0 m0Var = null;
        if (obj == null) {
            return null;
        }
        if (this.h + 1 >= this.d) {
            q();
        }
        if (obj instanceof q0) {
            q0 q0Var = (q0) obj;
            m0Var = q0Var.e();
            if (m0Var == null) {
                q0Var.j();
                m0Var = q0Var.e();
            }
            int i2 = m0Var.a;
            if (i2 == -1 || i2 > this.a || this.k.c[i2] == null) {
                if (i2 != -1) {
                    m0Var.d();
                }
                int i3 = this.a + 1;
                this.a = i3;
                this.h++;
                m0Var.a = i3;
                m0Var.f = m0.a.UNRESTRICTED;
                this.k.c[i3] = m0Var;
            }
        }
        return m0Var;
    }

    public h0 m() {
        h0 a2 = this.k.a.a();
        if (a2 == null) {
            a2 = new h0(this.k);
        } else {
            a2.a = null;
            a2.c.c();
            a2.b = 0.0f;
            a2.d = false;
        }
        m0.b();
        return a2;
    }

    public m0 n() {
        if (this.h + 1 >= this.d) {
            q();
        }
        m0 a2 = a(m0.a.SLACK, null);
        int i2 = this.a + 1;
        this.a = i2;
        this.h++;
        a2.a = i2;
        this.k.c[i2] = a2;
        return a2;
    }

    public i0 o() {
        return this.k;
    }

    public int p(Object obj) {
        m0 e2 = ((q0) obj).e();
        if (e2 != null) {
            return (int) (e2.d + 0.5f);
        }
        return 0;
    }

    public void r() {
        if (this.f) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= this.i) {
                    z = true;
                    break;
                } else if (!this.e[i2].d) {
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                s(this.b);
            } else {
                j();
            }
        } else {
            s(this.b);
        }
    }

    /* access modifiers changed from: package-private */
    public void s(a aVar) {
        float f2;
        int i2;
        boolean z;
        w((h0) aVar);
        m0.a aVar2 = m0.a.UNRESTRICTED;
        int i3 = 0;
        while (true) {
            f2 = 0.0f;
            i2 = 1;
            if (i3 >= this.i) {
                z = false;
                break;
            }
            h0[] h0VarArr = this.e;
            if (h0VarArr[i3].a.f != aVar2 && h0VarArr[i3].b < 0.0f) {
                z = true;
                break;
            }
            i3++;
        }
        if (z) {
            boolean z2 = false;
            int i4 = 0;
            while (!z2) {
                i4 += i2;
                float f3 = Float.MAX_VALUE;
                int i5 = 0;
                int i6 = -1;
                int i7 = -1;
                int i8 = 0;
                while (i5 < this.i) {
                    h0 h0Var = this.e[i5];
                    if (h0Var.a.f != aVar2 && !h0Var.d && h0Var.b < f2) {
                        int i9 = 1;
                        while (i9 < this.h) {
                            m0 m0Var = this.k.c[i9];
                            float f4 = h0Var.c.f(m0Var);
                            if (f4 > f2) {
                                for (int i10 = 0; i10 < 7; i10++) {
                                    float f5 = m0Var.e[i10] / f4;
                                    if ((f5 < f3 && i10 == i8) || i10 > i8) {
                                        i8 = i10;
                                        f3 = f5;
                                        i6 = i5;
                                        i7 = i9;
                                    }
                                }
                            }
                            i9++;
                            f2 = 0.0f;
                        }
                    }
                    i5++;
                    f2 = 0.0f;
                }
                if (i6 != -1) {
                    h0 h0Var2 = this.e[i6];
                    h0Var2.a.b = -1;
                    h0Var2.h(this.k.c[i7]);
                    m0 m0Var2 = h0Var2.a;
                    m0Var2.b = i6;
                    m0Var2.e(h0Var2);
                } else {
                    z2 = true;
                }
                if (i4 > this.h / 2) {
                    z2 = true;
                }
                f2 = 0.0f;
                i2 = 1;
            }
        }
        t(aVar);
        j();
    }

    public void v() {
        i0 i0Var;
        int i2 = 0;
        while (true) {
            i0Var = this.k;
            m0[] m0VarArr = i0Var.c;
            if (i2 >= m0VarArr.length) {
                break;
            }
            m0 m0Var = m0VarArr[i2];
            if (m0Var != null) {
                m0Var.d();
            }
            i2++;
        }
        i0Var.b.c(this.l, this.m);
        this.m = 0;
        Arrays.fill(this.k.c, (Object) null);
        this.a = 0;
        h0 h0Var = (h0) this.b;
        h0Var.c.c();
        h0Var.a = null;
        h0Var.b = 0.0f;
        this.h = 1;
        for (int i3 = 0; i3 < this.i; i3++) {
            Objects.requireNonNull(this.e[i3]);
        }
        u();
        this.i = 0;
    }
}
