package defpackage;

import com.airbnb.lottie.e;
import java.util.List;
import java.util.Locale;

/* renamed from: ca  reason: default package */
public class ca {
    private final List<i9> a;
    private final e b;
    private final String c;
    private final long d;
    private final a e;
    private final long f;
    private final String g;
    private final List<n9> h;
    private final e9 i;
    private final int j;
    private final int k;
    private final int l;
    private final float m;
    private final float n;
    private final int o;
    private final int p;
    private final c9 q;
    private final d9 r;
    private final u8 s;
    private final List<ec<Float>> t;
    private final b u;
    private final boolean v;

    /* renamed from: ca$a */
    public enum a {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* renamed from: ca$b */
    public enum b {
        NONE,
        ADD,
        INVERT,
        UNKNOWN
    }

    public ca(List<i9> list, e eVar, String str, long j2, a aVar, long j3, String str2, List<n9> list2, e9 e9Var, int i2, int i3, int i4, float f2, float f3, int i5, int i6, c9 c9Var, d9 d9Var, List<ec<Float>> list3, b bVar, u8 u8Var, boolean z) {
        this.a = list;
        this.b = eVar;
        this.c = str;
        this.d = j2;
        this.e = aVar;
        this.f = j3;
        this.g = str2;
        this.h = list2;
        this.i = e9Var;
        this.j = i2;
        this.k = i3;
        this.l = i4;
        this.m = f2;
        this.n = f3;
        this.o = i5;
        this.p = i6;
        this.q = c9Var;
        this.r = d9Var;
        this.t = list3;
        this.u = bVar;
        this.s = u8Var;
        this.v = z;
    }

    /* access modifiers changed from: package-private */
    public e a() {
        return this.b;
    }

    public long b() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public List<ec<Float>> c() {
        return this.t;
    }

    public a d() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public List<n9> e() {
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public b f() {
        return this.u;
    }

    /* access modifiers changed from: package-private */
    public String g() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public long h() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public int i() {
        return this.p;
    }

    /* access modifiers changed from: package-private */
    public int j() {
        return this.o;
    }

    /* access modifiers changed from: package-private */
    public String k() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public List<i9> l() {
        return this.a;
    }

    /* access modifiers changed from: package-private */
    public int m() {
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public int n() {
        return this.k;
    }

    /* access modifiers changed from: package-private */
    public int o() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public float p() {
        return this.n / this.b.e();
    }

    /* access modifiers changed from: package-private */
    public c9 q() {
        return this.q;
    }

    /* access modifiers changed from: package-private */
    public d9 r() {
        return this.r;
    }

    /* access modifiers changed from: package-private */
    public u8 s() {
        return this.s;
    }

    /* access modifiers changed from: package-private */
    public float t() {
        return this.m;
    }

    public String toString() {
        return w("");
    }

    /* access modifiers changed from: package-private */
    public e9 u() {
        return this.i;
    }

    public boolean v() {
        return this.v;
    }

    public String w(String str) {
        StringBuilder q2 = ic.q(str);
        q2.append(this.c);
        q2.append("\n");
        ca r2 = this.b.r(this.f);
        if (r2 != null) {
            q2.append("\t\tParents: ");
            q2.append(r2.c);
            ca r3 = this.b.r(r2.f);
            while (r3 != null) {
                q2.append("->");
                q2.append(r3.c);
                r3 = this.b.r(r3.f);
            }
            q2.append(str);
            q2.append("\n");
        }
        if (!this.h.isEmpty()) {
            q2.append(str);
            q2.append("\tMasks: ");
            q2.append(this.h.size());
            q2.append("\n");
        }
        if (!(this.j == 0 || this.k == 0)) {
            q2.append(str);
            q2.append("\tBackground: ");
            q2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(this.j), Integer.valueOf(this.k), Integer.valueOf(this.l)));
        }
        if (!this.a.isEmpty()) {
            q2.append(str);
            q2.append("\tShapes:\n");
            for (i9 i9Var : this.a) {
                q2.append(str);
                q2.append("\t\t");
                q2.append(i9Var);
                q2.append("\n");
            }
        }
        return q2.toString();
    }
}
