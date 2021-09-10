package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.g;

/* renamed from: t9  reason: default package */
public class t9 implements i9 {
    private final boolean a;
    private final Path.FillType b;
    private final String c;
    private final t8 d;
    private final w8 e;
    private final boolean f;

    public t9(String str, boolean z, Path.FillType fillType, t8 t8Var, w8 w8Var, boolean z2) {
        this.c = str;
        this.a = z;
        this.b = fillType;
        this.d = t8Var;
        this.e = w8Var;
        this.f = z2;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new f7(gVar, z9Var, this);
    }

    public t8 b() {
        return this.d;
    }

    public Path.FillType c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    public w8 e() {
        return this.e;
    }

    public boolean f() {
        return this.f;
    }

    public String toString() {
        StringBuilder q = ic.q("ShapeFill{color=, fillEnabled=");
        q.append(this.a);
        q.append('}');
        return q.toString();
    }
}
