package defpackage;

import defpackage.q0;
import defpackage.r0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: s0  reason: default package */
public class s0 extends b1 {
    private boolean j0 = false;
    protected k0 k0 = new k0();
    private a1 l0;
    int m0 = 0;
    int n0 = 0;
    p0[] o0 = new p0[4];
    p0[] p0 = new p0[4];
    public List<t0> q0 = new ArrayList();
    public boolean r0 = false;
    public boolean s0 = false;
    public boolean t0 = false;
    public int u0 = 0;
    public int v0 = 0;
    private int w0 = 7;
    public boolean x0 = false;
    private boolean y0 = false;
    private boolean z0 = false;

    private void B0() {
        this.m0 = 0;
        this.n0 = 0;
    }

    public void A0() {
        z0();
        c(this.w0);
    }

    public void C0(int i) {
        this.w0 = i;
    }

    public void D0(boolean z) {
        this.j0 = z;
    }

    @Override // defpackage.r0, defpackage.b1
    public void E() {
        this.k0.v();
        this.q0.clear();
        this.x0 = false;
        super.E();
    }

    public void E0() {
        x0 d = g(q0.b.LEFT).d();
        x0 d2 = g(q0.b.TOP).d();
        d.k(null, 0.0f);
        d2.k(null, 0.0f);
    }

    @Override // defpackage.r0
    public void c(int i) {
        w0.a(i, this);
        int size = this.i0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.i0.get(i2).c(i);
        }
    }

    /* JADX WARN: Type inference failed for: r5v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARNING: Removed duplicated region for block: B:111:0x0257  */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x02d0  */
    /* JADX WARNING: Removed duplicated region for block: B:134:0x02eb  */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x02f6  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x02fb  */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0211  */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // defpackage.b1
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void p0() {
        /*
        // Method dump skipped, instructions count: 964
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s0.p0():void");
    }

    /* access modifiers changed from: package-private */
    public void s0(r0 r0Var, int i) {
        if (i == 0) {
            int i2 = this.m0 + 1;
            p0[] p0VarArr = this.p0;
            if (i2 >= p0VarArr.length) {
                this.p0 = (p0[]) Arrays.copyOf(p0VarArr, p0VarArr.length * 2);
            }
            p0[] p0VarArr2 = this.p0;
            int i3 = this.m0;
            p0VarArr2[i3] = new p0(r0Var, 0, this.j0);
            this.m0 = i3 + 1;
        } else if (i == 1) {
            int i4 = this.n0 + 1;
            p0[] p0VarArr3 = this.o0;
            if (i4 >= p0VarArr3.length) {
                this.o0 = (p0[]) Arrays.copyOf(p0VarArr3, p0VarArr3.length * 2);
            }
            p0[] p0VarArr4 = this.o0;
            int i5 = this.n0;
            p0VarArr4[i5] = new p0(r0Var, 1, this.j0);
            this.n0 = i5 + 1;
        }
    }

    public boolean t0(k0 k0Var) {
        r0.a aVar = r0.a.FIXED;
        r0.a aVar2 = r0.a.WRAP_CONTENT;
        a(k0Var);
        int size = this.i0.size();
        for (int i = 0; i < size; i++) {
            r0 r0Var = this.i0.get(i);
            if (r0Var instanceof s0) {
                r0.a[] aVarArr = r0Var.C;
                r0.a aVar3 = aVarArr[0];
                r0.a aVar4 = aVarArr[1];
                if (aVar3 == aVar2) {
                    r0Var.R(aVar);
                }
                if (aVar4 == aVar2) {
                    r0Var.d0(aVar);
                }
                r0Var.a(k0Var);
                if (aVar3 == aVar2) {
                    r0Var.R(aVar3);
                }
                if (aVar4 == aVar2) {
                    r0Var.d0(aVar4);
                }
            } else {
                r0.a aVar5 = r0.a.MATCH_PARENT;
                if (this.C[0] != aVar2 && r0Var.C[0] == aVar5) {
                    int i2 = r0Var.s.e;
                    int w = w() - r0Var.u.e;
                    q0 q0Var = r0Var.s;
                    q0Var.i = k0Var.l(q0Var);
                    q0 q0Var2 = r0Var.u;
                    q0Var2.i = k0Var.l(q0Var2);
                    k0Var.e(r0Var.s.i, i2);
                    k0Var.e(r0Var.u.i, w);
                    r0Var.a = 2;
                    r0Var.Q(i2, w);
                }
                if (this.C[1] != aVar2 && r0Var.C[1] == aVar5) {
                    int i3 = r0Var.t.e;
                    int o = o() - r0Var.v.e;
                    q0 q0Var3 = r0Var.t;
                    q0Var3.i = k0Var.l(q0Var3);
                    q0 q0Var4 = r0Var.v;
                    q0Var4.i = k0Var.l(q0Var4);
                    k0Var.e(r0Var.t.i, i3);
                    k0Var.e(r0Var.v.i, o);
                    if (r0Var.Q > 0 || r0Var.v() == 8) {
                        q0 q0Var5 = r0Var.w;
                        q0Var5.i = k0Var.l(q0Var5);
                        k0Var.e(r0Var.w.i, r0Var.Q + i3);
                    }
                    r0Var.b = 2;
                    r0Var.c0(i3, o);
                }
                r0Var.a(k0Var);
            }
        }
        if (this.m0 > 0) {
            n0.a(this, k0Var, 0);
        }
        if (this.n0 > 0) {
            n0.a(this, k0Var, 1);
        }
        return true;
    }

    public int u0() {
        return this.w0;
    }

    public boolean v0() {
        return this.z0;
    }

    public boolean w0() {
        return this.y0;
    }

    public boolean x0(int i) {
        return (this.w0 & i) == i;
    }

    public void y0(int i, int i2) {
        y0 y0Var;
        y0 y0Var2;
        r0.a aVar = this.C[0];
        r0.a aVar2 = r0.a.WRAP_CONTENT;
        if (!(aVar == aVar2 || (y0Var2 = this.c) == null)) {
            y0Var2.f(i);
        }
        if (this.C[1] != aVar2 && (y0Var = this.d) != null) {
            y0Var.f(i2);
        }
    }

    public void z0() {
        int size = this.i0.size();
        F();
        for (int i = 0; i < size; i++) {
            this.i0.get(i).F();
        }
    }
}
