package defpackage;

import java.util.Arrays;

/* renamed from: v0  reason: default package */
public class v0 extends r0 {
    protected r0[] i0 = new r0[4];
    protected int j0 = 0;

    public void o0(r0 r0Var) {
        int i = this.j0 + 1;
        r0[] r0VarArr = this.i0;
        if (i > r0VarArr.length) {
            this.i0 = (r0[]) Arrays.copyOf(r0VarArr, r0VarArr.length * 2);
        }
        r0[] r0VarArr2 = this.i0;
        int i2 = this.j0;
        r0VarArr2[i2] = r0Var;
        this.j0 = i2 + 1;
    }

    public void p0() {
        this.j0 = 0;
    }
}
