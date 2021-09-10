package defpackage;

/* renamed from: j9  reason: default package */
public class j9 {
    private final float[] a;
    private final int[] b;

    public j9(float[] fArr, int[] iArr) {
        this.a = fArr;
        this.b = iArr;
    }

    public int[] a() {
        return this.b;
    }

    public float[] b() {
        return this.a;
    }

    public int c() {
        return this.b.length;
    }

    public void d(j9 j9Var, j9 j9Var2, float f) {
        if (j9Var.b.length == j9Var2.b.length) {
            for (int i = 0; i < j9Var.b.length; i++) {
                this.a[i] = cc.f(j9Var.a[i], j9Var2.a[i], f);
                this.b[i] = xb.c(f, j9Var.b[i], j9Var2.b[i]);
            }
            return;
        }
        StringBuilder q = ic.q("Cannot interpolate between gradients. Lengths vary (");
        q.append(j9Var.b.length);
        q.append(" vs ");
        throw new IllegalArgumentException(ic.k(q, j9Var2.b.length, ")"));
    }
}
