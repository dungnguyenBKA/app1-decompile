package defpackage;

import java.util.Arrays;

/* renamed from: m0  reason: default package */
public class m0 {
    private static int j = 1;
    public int a = -1;
    int b = -1;
    public int c = 0;
    public float d;
    float[] e = new float[7];
    a f;
    h0[] g = new h0[8];
    int h = 0;
    public int i = 0;

    /* renamed from: m0$a */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public m0(a aVar) {
        this.f = aVar;
    }

    static void b() {
        j++;
    }

    public final void a(h0 h0Var) {
        int i2 = 0;
        while (true) {
            int i3 = this.h;
            if (i2 >= i3) {
                h0[] h0VarArr = this.g;
                if (i3 >= h0VarArr.length) {
                    this.g = (h0[]) Arrays.copyOf(h0VarArr, h0VarArr.length * 2);
                }
                h0[] h0VarArr2 = this.g;
                int i4 = this.h;
                h0VarArr2[i4] = h0Var;
                this.h = i4 + 1;
                return;
            } else if (this.g[i2] != h0Var) {
                i2++;
            } else {
                return;
            }
        }
    }

    public final void c(h0 h0Var) {
        int i2 = this.h;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.g[i3] == h0Var) {
                for (int i4 = 0; i4 < (i2 - i3) - 1; i4++) {
                    h0[] h0VarArr = this.g;
                    int i5 = i3 + i4;
                    h0VarArr[i5] = h0VarArr[i5 + 1];
                }
                this.h--;
                return;
            }
        }
    }

    public void d() {
        this.f = a.UNKNOWN;
        this.c = 0;
        this.a = -1;
        this.b = -1;
        this.d = 0.0f;
        this.h = 0;
        this.i = 0;
    }

    public final void e(h0 h0Var) {
        int i2 = this.h;
        for (int i3 = 0; i3 < i2; i3++) {
            h0[] h0VarArr = this.g;
            h0VarArr[i3].c.n(h0VarArr[i3], h0Var, false);
        }
        this.h = 0;
    }

    public String toString() {
        return "null";
    }
}
