package defpackage;

import defpackage.m0;

/* renamed from: q0  reason: default package */
public class q0 {
    private x0 a = new x0(this);
    final r0 b;
    final b c;
    q0 d;
    public int e = 0;
    int f = -1;
    private a g = a.NONE;
    private int h = 0;
    m0 i;

    /* renamed from: q0$a */
    public enum a {
        NONE,
        STRONG,
        WEAK
    }

    /* renamed from: q0$b */
    public enum b {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public q0(r0 r0Var, b bVar) {
        this.b = r0Var;
        this.c = bVar;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0038, code lost:
        if ((r6.b.Q > 0) == false) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0052, code lost:
        if (r4 != r12) goto L_0x0054;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x006c, code lost:
        if (r4 != r12) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0085, code lost:
        if (r4 != r2) goto L_0x0056;
     */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x008a A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(defpackage.q0 r7, int r8, int r9, defpackage.q0.a r10, int r11, boolean r12) {
        /*
        // Method dump skipped, instructions count: 178
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q0.a(q0, int, int, q0$a, int, boolean):boolean");
    }

    public int b() {
        return this.h;
    }

    public int c() {
        q0 q0Var;
        if (this.b.v() == 8) {
            return 0;
        }
        if (this.f <= -1 || (q0Var = this.d) == null || q0Var.b.v() != 8) {
            return this.e;
        }
        return this.f;
    }

    public x0 d() {
        return this.a;
    }

    public m0 e() {
        return this.i;
    }

    public a f() {
        return this.g;
    }

    public q0 g() {
        return this.d;
    }

    public boolean h() {
        return this.d != null;
    }

    public void i() {
        this.d = null;
        this.e = 0;
        this.f = -1;
        this.g = a.STRONG;
        this.h = 0;
        this.a.j();
    }

    public void j() {
        m0 m0Var = this.i;
        if (m0Var == null) {
            this.i = new m0(m0.a.UNRESTRICTED);
        } else {
            m0Var.d();
        }
    }

    public String toString() {
        return this.b.k() + ":" + this.c.toString();
    }
}
