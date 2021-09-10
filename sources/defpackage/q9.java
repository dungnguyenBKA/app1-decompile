package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.g;

/* renamed from: q9  reason: default package */
public class q9 implements i9 {
    private final String a;
    private final f9<PointF, PointF> b;
    private final y8 c;
    private final u8 d;
    private final boolean e;

    public q9(String str, f9<PointF, PointF> f9Var, y8 y8Var, u8 u8Var, boolean z) {
        this.a = str;
        this.b = f9Var;
        this.c = y8Var;
        this.d = u8Var;
        this.e = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new n7(gVar, z9Var, this);
    }

    public u8 b() {
        return this.d;
    }

    public String c() {
        return this.a;
    }

    public f9<PointF, PointF> d() {
        return this.b;
    }

    public y8 e() {
        return this.c;
    }

    public boolean f() {
        return this.e;
    }

    public String toString() {
        StringBuilder q = ic.q("RectangleShape{position=");
        q.append(this.b);
        q.append(", size=");
        q.append(this.c);
        q.append('}');
        return q.toString();
    }
}
