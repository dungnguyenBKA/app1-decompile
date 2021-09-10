package defpackage;

import com.airbnb.lottie.g;

/* renamed from: r9  reason: default package */
public class r9 implements i9 {
    private final String a;
    private final u8 b;
    private final u8 c;
    private final e9 d;
    private final boolean e;

    public r9(String str, u8 u8Var, u8 u8Var2, e9 e9Var, boolean z) {
        this.a = str;
        this.b = u8Var;
        this.c = u8Var2;
        this.d = e9Var;
        this.e = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new o7(gVar, z9Var, this);
    }

    public u8 b() {
        return this.b;
    }

    public String c() {
        return this.a;
    }

    public u8 d() {
        return this.c;
    }

    public e9 e() {
        return this.d;
    }

    public boolean f() {
        return this.e;
    }
}
