package defpackage;

import defpackage.k0;

/* renamed from: h0  reason: default package */
public class h0 implements k0.a {
    m0 a = null;
    float b = 0.0f;
    public final g0 c;
    boolean d = false;

    public h0(i0 i0Var) {
        this.c = new g0(this, i0Var);
    }

    @Override // defpackage.k0.a
    public void a(m0 m0Var) {
        int i = m0Var.c;
        float f = 1.0f;
        if (i != 1) {
            if (i == 2) {
                f = 1000.0f;
            } else if (i == 3) {
                f = 1000000.0f;
            } else if (i == 4) {
                f = 1.0E9f;
            } else if (i == 5) {
                f = 1.0E12f;
            }
        }
        this.c.l(m0Var, f);
    }

    public h0 b(k0 k0Var, int i) {
        this.c.l(k0Var.k(i, "ep"), 1.0f);
        this.c.l(k0Var.k(i, "em"), -1.0f);
        return this;
    }

    public h0 c(m0 m0Var, m0 m0Var2, m0 m0Var3, m0 m0Var4, float f) {
        this.c.l(m0Var, -1.0f);
        this.c.l(m0Var2, 1.0f);
        this.c.l(m0Var3, f);
        this.c.l(m0Var4, -f);
        return this;
    }

    public h0 d(float f, float f2, float f3, m0 m0Var, m0 m0Var2, m0 m0Var3, m0 m0Var4) {
        this.b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.c.l(m0Var, 1.0f);
            this.c.l(m0Var2, -1.0f);
            this.c.l(m0Var4, 1.0f);
            this.c.l(m0Var3, -1.0f);
        } else if (f == 0.0f) {
            this.c.l(m0Var, 1.0f);
            this.c.l(m0Var2, -1.0f);
        } else if (f3 == 0.0f) {
            this.c.l(m0Var3, 1.0f);
            this.c.l(m0Var4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.c.l(m0Var, 1.0f);
            this.c.l(m0Var2, -1.0f);
            this.c.l(m0Var4, f4);
            this.c.l(m0Var3, -f4);
        }
        return this;
    }

    public h0 e(m0 m0Var, m0 m0Var2, m0 m0Var3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = (float) i;
        }
        if (!z) {
            this.c.l(m0Var, -1.0f);
            this.c.l(m0Var2, 1.0f);
            this.c.l(m0Var3, 1.0f);
        } else {
            this.c.l(m0Var, 1.0f);
            this.c.l(m0Var2, -1.0f);
            this.c.l(m0Var3, -1.0f);
        }
        return this;
    }

    public h0 f(m0 m0Var, m0 m0Var2, m0 m0Var3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = (float) i;
        }
        if (!z) {
            this.c.l(m0Var, -1.0f);
            this.c.l(m0Var2, 1.0f);
            this.c.l(m0Var3, -1.0f);
        } else {
            this.c.l(m0Var, 1.0f);
            this.c.l(m0Var2, -1.0f);
            this.c.l(m0Var3, 1.0f);
        }
        return this;
    }

    public h0 g(m0 m0Var, m0 m0Var2, m0 m0Var3, m0 m0Var4, float f) {
        this.c.l(m0Var3, 0.5f);
        this.c.l(m0Var4, 0.5f);
        this.c.l(m0Var, -0.5f);
        this.c.l(m0Var2, -0.5f);
        this.b = -f;
        return this;
    }

    /* access modifiers changed from: package-private */
    public void h(m0 m0Var) {
        m0 m0Var2 = this.a;
        if (m0Var2 != null) {
            this.c.l(m0Var2, -1.0f);
            this.a = null;
        }
        float m = this.c.m(m0Var, true) * -1.0f;
        this.a = m0Var;
        if (m != 1.0f) {
            this.b /= m;
            this.c.e(m);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0078  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x007d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String toString() {
        /*
        // Method dump skipped, instructions count: 161
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h0.toString():java.lang.String");
    }
}
