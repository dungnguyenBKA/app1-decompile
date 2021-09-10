package defpackage;

import java.util.ArrayList;

/* renamed from: b1  reason: default package */
public class b1 extends r0 {
    protected ArrayList<r0> i0 = new ArrayList<>();

    @Override // defpackage.r0
    public void E() {
        this.i0.clear();
        super.E();
    }

    @Override // defpackage.r0
    public void G(i0 i0Var) {
        super.G(i0Var);
        int size = this.i0.size();
        for (int i = 0; i < size; i++) {
            this.i0.get(i).G(i0Var);
        }
    }

    @Override // defpackage.r0
    public void Y(int i, int i2) {
        this.O = i;
        this.P = i2;
        int size = this.i0.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.i0.get(i3).Y(this.I + this.O, this.J + this.P);
        }
    }

    @Override // defpackage.r0
    public void m0() {
        super.m0();
        ArrayList<r0> arrayList = this.i0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                r0 r0Var = this.i0.get(i);
                r0Var.Y(m(), n());
                if (!(r0Var instanceof s0)) {
                    r0Var.m0();
                }
            }
        }
    }

    public void o0(r0 r0Var) {
        this.i0.add(r0Var);
        r0 r0Var2 = r0Var.D;
        if (r0Var2 != null) {
            ((b1) r0Var2).i0.remove(r0Var);
            r0Var.D = null;
        }
        r0Var.D = this;
    }

    public void p0() {
        m0();
        ArrayList<r0> arrayList = this.i0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                r0 r0Var = this.i0.get(i);
                if (r0Var instanceof b1) {
                    ((b1) r0Var).p0();
                }
            }
        }
    }

    public void q0(r0 r0Var) {
        this.i0.remove(r0Var);
        r0Var.D = null;
    }

    public void r0() {
        this.i0.clear();
    }
}
