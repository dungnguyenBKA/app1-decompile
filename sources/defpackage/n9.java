package defpackage;

/* renamed from: n9  reason: default package */
public class n9 {
    private final a a;
    private final a9 b;
    private final w8 c;
    private final boolean d;

    /* renamed from: n9$a */
    public enum a {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public n9(a aVar, a9 a9Var, w8 w8Var, boolean z) {
        this.a = aVar;
        this.b = a9Var;
        this.c = w8Var;
        this.d = z;
    }

    public a a() {
        return this.a;
    }

    public a9 b() {
        return this.b;
    }

    public w8 c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }
}
