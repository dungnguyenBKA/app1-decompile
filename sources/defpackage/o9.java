package defpackage;

import com.airbnb.lottie.g;

/* renamed from: o9  reason: default package */
public class o9 implements i9 {
    private final String a;
    private final a b;
    private final boolean c;

    /* renamed from: o9$a */
    public enum a {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS
    }

    public o9(String str, a aVar, boolean z) {
        this.a = str;
        this.b = aVar;
        this.c = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        if (gVar.k()) {
            return new k7(this);
        }
        zb.b("Animation contains merge paths but they are disabled.");
        return null;
    }

    public a b() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }

    public String toString() {
        StringBuilder q = ic.q("MergePaths{mode=");
        q.append(this.b);
        q.append('}');
        return q.toString();
    }
}
