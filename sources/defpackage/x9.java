package defpackage;

import com.airbnb.lottie.g;

/* renamed from: x9  reason: default package */
public class x9 implements i9 {
    private final String a;
    private final a b;
    private final u8 c;
    private final u8 d;
    private final u8 e;
    private final boolean f;

    /* renamed from: x9$a */
    public enum a {
        SIMULTANEOUSLY,
        INDIVIDUALLY
    }

    public x9(String str, a aVar, u8 u8Var, u8 u8Var2, u8 u8Var3, boolean z) {
        this.a = str;
        this.b = aVar;
        this.c = u8Var;
        this.d = u8Var2;
        this.e = u8Var3;
        this.f = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new r7(z9Var, this);
    }

    public u8 b() {
        return this.d;
    }

    public u8 c() {
        return this.e;
    }

    public u8 d() {
        return this.c;
    }

    public a e() {
        return this.b;
    }

    public boolean f() {
        return this.f;
    }

    public String toString() {
        StringBuilder q = ic.q("Trim Path: {start: ");
        q.append(this.c);
        q.append(", end: ");
        q.append(this.d);
        q.append(", offset: ");
        q.append(this.e);
        q.append("}");
        return q.toString();
    }
}
