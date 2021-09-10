package defpackage;

import defpackage.m0;
import java.util.Arrays;

/* renamed from: g0  reason: default package */
public class g0 {
    int a = 0;
    private final h0 b;
    private final i0 c;
    private int d = 8;
    private int[] e = new int[8];
    private int[] f = new int[8];
    private float[] g = new float[8];
    private int h = -1;
    private int i = -1;
    private boolean j = false;

    g0(h0 h0Var, i0 i0Var) {
        this.b = h0Var;
        this.c = i0Var;
    }

    private boolean k(m0 m0Var) {
        return m0Var.i <= 1;
    }

    /* access modifiers changed from: package-private */
    public final void a(m0 m0Var, float f2, boolean z) {
        if (f2 != 0.0f) {
            int i2 = this.h;
            if (i2 == -1) {
                this.h = 0;
                this.g[0] = f2;
                this.e[0] = m0Var.a;
                this.f[0] = -1;
                m0Var.i++;
                m0Var.a(this.b);
                this.a++;
                if (!this.j) {
                    int i3 = this.i + 1;
                    this.i = i3;
                    int[] iArr = this.e;
                    if (i3 >= iArr.length) {
                        this.j = true;
                        this.i = iArr.length - 1;
                        return;
                    }
                    return;
                }
                return;
            }
            int i4 = 0;
            int i5 = -1;
            while (i2 != -1 && i4 < this.a) {
                int[] iArr2 = this.e;
                int i6 = iArr2[i2];
                int i7 = m0Var.a;
                if (i6 == i7) {
                    float[] fArr = this.g;
                    fArr[i2] = fArr[i2] + f2;
                    if (fArr[i2] == 0.0f) {
                        if (i2 == this.h) {
                            this.h = this.f[i2];
                        } else {
                            int[] iArr3 = this.f;
                            iArr3[i5] = iArr3[i2];
                        }
                        if (z) {
                            m0Var.c(this.b);
                        }
                        if (this.j) {
                            this.i = i2;
                        }
                        m0Var.i--;
                        this.a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i2] < i7) {
                    i5 = i2;
                }
                i2 = this.f[i2];
                i4++;
            }
            int i8 = this.i;
            int i9 = i8 + 1;
            if (this.j) {
                int[] iArr4 = this.e;
                if (iArr4[i8] != -1) {
                    i8 = iArr4.length;
                }
            } else {
                i8 = i9;
            }
            int[] iArr5 = this.e;
            if (i8 >= iArr5.length && this.a < iArr5.length) {
                int i10 = 0;
                while (true) {
                    int[] iArr6 = this.e;
                    if (i10 >= iArr6.length) {
                        break;
                    } else if (iArr6[i10] == -1) {
                        i8 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            int[] iArr7 = this.e;
            if (i8 >= iArr7.length) {
                i8 = iArr7.length;
                int i11 = this.d * 2;
                this.d = i11;
                this.j = false;
                this.i = i8 - 1;
                this.g = Arrays.copyOf(this.g, i11);
                this.e = Arrays.copyOf(this.e, this.d);
                this.f = Arrays.copyOf(this.f, this.d);
            }
            this.e[i8] = m0Var.a;
            this.g[i8] = f2;
            if (i5 != -1) {
                int[] iArr8 = this.f;
                iArr8[i8] = iArr8[i5];
                iArr8[i5] = i8;
            } else {
                this.f[i8] = this.h;
                this.h = i8;
            }
            m0Var.i++;
            m0Var.a(this.b);
            this.a++;
            if (!this.j) {
                this.i++;
            }
            int i12 = this.i;
            int[] iArr9 = this.e;
            if (i12 >= iArr9.length) {
                this.j = true;
                this.i = iArr9.length - 1;
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0090 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.m0 b(defpackage.k0 r14) {
        /*
        // Method dump skipped, instructions count: 156
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g0.b(k0):m0");
    }

    public final void c() {
        int i2 = this.h;
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            m0 m0Var = this.c.c[this.e[i2]];
            if (m0Var != null) {
                m0Var.c(this.b);
            }
            i2 = this.f[i2];
            i3++;
        }
        this.h = -1;
        this.i = -1;
        this.j = false;
        this.a = 0;
    }

    /* access modifiers changed from: package-private */
    public final boolean d(m0 m0Var) {
        int i2 = this.h;
        if (i2 == -1) {
            return false;
        }
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            if (this.e[i2] == m0Var.a) {
                return true;
            }
            i2 = this.f[i2];
            i3++;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public void e(float f2) {
        int i2 = this.h;
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            float[] fArr = this.g;
            fArr[i2] = fArr[i2] / f2;
            i2 = this.f[i2];
            i3++;
        }
    }

    public final float f(m0 m0Var) {
        int i2 = this.h;
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            if (this.e[i2] == m0Var.a) {
                return this.g[i2];
            }
            i2 = this.f[i2];
            i3++;
        }
        return 0.0f;
    }

    /* access modifiers changed from: package-private */
    public m0 g(boolean[] zArr, m0 m0Var) {
        m0.a aVar;
        int i2 = this.h;
        int i3 = 0;
        m0 m0Var2 = null;
        float f2 = 0.0f;
        while (i2 != -1 && i3 < this.a) {
            float[] fArr = this.g;
            if (fArr[i2] < 0.0f) {
                m0 m0Var3 = this.c.c[this.e[i2]];
                if ((zArr == null || !zArr[m0Var3.a]) && m0Var3 != m0Var && ((aVar = m0Var3.f) == m0.a.SLACK || aVar == m0.a.ERROR)) {
                    float f3 = fArr[i2];
                    if (f3 < f2) {
                        f2 = f3;
                        m0Var2 = m0Var3;
                    }
                }
            }
            i2 = this.f[i2];
            i3++;
        }
        return m0Var2;
    }

    /* access modifiers changed from: package-private */
    public final m0 h(int i2) {
        int i3 = this.h;
        int i4 = 0;
        while (i3 != -1 && i4 < this.a) {
            if (i4 == i2) {
                return this.c.c[this.e[i3]];
            }
            i3 = this.f[i3];
            i4++;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final float i(int i2) {
        int i3 = this.h;
        int i4 = 0;
        while (i3 != -1 && i4 < this.a) {
            if (i4 == i2) {
                return this.g[i3];
            }
            i3 = this.f[i3];
            i4++;
        }
        return 0.0f;
    }

    /* access modifiers changed from: package-private */
    public void j() {
        int i2 = this.h;
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            float[] fArr = this.g;
            fArr[i2] = fArr[i2] * -1.0f;
            i2 = this.f[i2];
            i3++;
        }
    }

    public final void l(m0 m0Var, float f2) {
        if (f2 == 0.0f) {
            m(m0Var, true);
            return;
        }
        int i2 = this.h;
        if (i2 == -1) {
            this.h = 0;
            this.g[0] = f2;
            this.e[0] = m0Var.a;
            this.f[0] = -1;
            m0Var.i++;
            m0Var.a(this.b);
            this.a++;
            if (!this.j) {
                int i3 = this.i + 1;
                this.i = i3;
                int[] iArr = this.e;
                if (i3 >= iArr.length) {
                    this.j = true;
                    this.i = iArr.length - 1;
                    return;
                }
                return;
            }
            return;
        }
        int i4 = 0;
        int i5 = -1;
        while (i2 != -1 && i4 < this.a) {
            int[] iArr2 = this.e;
            int i6 = iArr2[i2];
            int i7 = m0Var.a;
            if (i6 == i7) {
                this.g[i2] = f2;
                return;
            }
            if (iArr2[i2] < i7) {
                i5 = i2;
            }
            i2 = this.f[i2];
            i4++;
        }
        int i8 = this.i;
        int i9 = i8 + 1;
        if (this.j) {
            int[] iArr3 = this.e;
            if (iArr3[i8] != -1) {
                i8 = iArr3.length;
            }
        } else {
            i8 = i9;
        }
        int[] iArr4 = this.e;
        if (i8 >= iArr4.length && this.a < iArr4.length) {
            int i10 = 0;
            while (true) {
                int[] iArr5 = this.e;
                if (i10 >= iArr5.length) {
                    break;
                } else if (iArr5[i10] == -1) {
                    i8 = i10;
                    break;
                } else {
                    i10++;
                }
            }
        }
        int[] iArr6 = this.e;
        if (i8 >= iArr6.length) {
            i8 = iArr6.length;
            int i11 = this.d * 2;
            this.d = i11;
            this.j = false;
            this.i = i8 - 1;
            this.g = Arrays.copyOf(this.g, i11);
            this.e = Arrays.copyOf(this.e, this.d);
            this.f = Arrays.copyOf(this.f, this.d);
        }
        this.e[i8] = m0Var.a;
        this.g[i8] = f2;
        if (i5 != -1) {
            int[] iArr7 = this.f;
            iArr7[i8] = iArr7[i5];
            iArr7[i5] = i8;
        } else {
            this.f[i8] = this.h;
            this.h = i8;
        }
        m0Var.i++;
        m0Var.a(this.b);
        int i12 = this.a + 1;
        this.a = i12;
        if (!this.j) {
            this.i++;
        }
        int[] iArr8 = this.e;
        if (i12 >= iArr8.length) {
            this.j = true;
        }
        if (this.i >= iArr8.length) {
            this.j = true;
            this.i = iArr8.length - 1;
        }
    }

    public final float m(m0 m0Var, boolean z) {
        int i2 = this.h;
        if (i2 == -1) {
            return 0.0f;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.a) {
            if (this.e[i2] == m0Var.a) {
                if (i2 == this.h) {
                    this.h = this.f[i2];
                } else {
                    int[] iArr = this.f;
                    iArr[i4] = iArr[i2];
                }
                if (z) {
                    m0Var.c(this.b);
                }
                m0Var.i--;
                this.a--;
                this.e[i2] = -1;
                if (this.j) {
                    this.i = i2;
                }
                return this.g[i2];
            }
            i3++;
            i4 = i2;
            i2 = this.f[i2];
        }
        return 0.0f;
    }

    /* access modifiers changed from: package-private */
    public final void n(h0 h0Var, h0 h0Var2, boolean z) {
        int i2 = this.h;
        while (true) {
            int i3 = 0;
            while (i2 != -1 && i3 < this.a) {
                int i4 = this.e[i2];
                m0 m0Var = h0Var2.a;
                if (i4 == m0Var.a) {
                    float f2 = this.g[i2];
                    m(m0Var, z);
                    g0 g0Var = h0Var2.c;
                    int i5 = g0Var.h;
                    int i6 = 0;
                    while (i5 != -1 && i6 < g0Var.a) {
                        a(this.c.c[g0Var.e[i5]], g0Var.g[i5] * f2, z);
                        i5 = g0Var.f[i5];
                        i6++;
                    }
                    h0Var.b = (h0Var2.b * f2) + h0Var.b;
                    if (z) {
                        h0Var2.a.c(h0Var);
                    }
                    i2 = this.h;
                } else {
                    i2 = this.f[i2];
                    i3++;
                }
            }
            return;
        }
    }

    /* access modifiers changed from: package-private */
    public void o(h0 h0Var, h0[] h0VarArr) {
        int i2 = this.h;
        while (true) {
            int i3 = 0;
            int i4 = 0;
            while (i2 != -1 && i4 < this.a) {
                m0 m0Var = this.c.c[this.e[i2]];
                if (m0Var.b != -1) {
                    float f2 = this.g[i2];
                    m(m0Var, true);
                    h0 h0Var2 = h0VarArr[m0Var.b];
                    if (!h0Var2.d) {
                        g0 g0Var = h0Var2.c;
                        int i5 = g0Var.h;
                        while (i5 != -1 && i3 < g0Var.a) {
                            a(this.c.c[g0Var.e[i5]], g0Var.g[i5] * f2, true);
                            i5 = g0Var.f[i5];
                            i3++;
                        }
                    }
                    h0Var.b = (h0Var2.b * f2) + h0Var.b;
                    h0Var2.a.c(h0Var);
                    i2 = this.h;
                } else {
                    i2 = this.f[i2];
                    i4++;
                }
            }
            return;
        }
    }

    public String toString() {
        int i2 = this.h;
        String str = "";
        int i3 = 0;
        while (i2 != -1 && i3 < this.a) {
            StringBuilder q = ic.q(ic.i(str, " -> "));
            q.append(this.g[i2]);
            q.append(" : ");
            StringBuilder q2 = ic.q(q.toString());
            q2.append(this.c.c[this.e[i2]]);
            str = q2.toString();
            i2 = this.f[i2];
            i3++;
        }
        return str;
    }
}
