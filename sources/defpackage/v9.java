package defpackage;

import com.airbnb.lottie.g;

/* renamed from: v9  reason: default package */
public class v9 implements i9 {
    private final String a;
    private final int b;
    private final a9 c;
    private final boolean d;

    public v9(String str, int i, a9 a9Var, boolean z) {
        this.a = str;
        this.b = i;
        this.c = a9Var;
        this.d = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new p7(gVar, z9Var, this);
    }

    public a9 b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public String toString() {
        StringBuilder q = ic.q("ShapePath{name=");
        q.append(this.a);
        q.append(", index=");
        q.append(this.b);
        q.append('}');
        return q.toString();
    }
}
