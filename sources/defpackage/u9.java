package defpackage;

import com.airbnb.lottie.g;
import java.util.Arrays;
import java.util.List;

/* renamed from: u9  reason: default package */
public class u9 implements i9 {
    private final String a;
    private final List<i9> b;
    private final boolean c;

    public u9(String str, List<i9> list, boolean z) {
        this.a = str;
        this.b = list;
        this.c = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new c7(gVar, z9Var, this);
    }

    public List<i9> b() {
        return this.b;
    }

    public String c() {
        return this.a;
    }

    public boolean d() {
        return this.c;
    }

    public String toString() {
        StringBuilder q = ic.q("ShapeGroup{name='");
        q.append(this.a);
        q.append("' Shapes: ");
        q.append(Arrays.toString(this.b.toArray()));
        q.append('}');
        return q.toString();
    }
}
