package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.g;

/* renamed from: h9  reason: default package */
public class h9 implements i9 {
    private final String a;
    private final f9<PointF, PointF> b;
    private final y8 c;
    private final boolean d;
    private final boolean e;

    public h9(String str, f9<PointF, PointF> f9Var, y8 y8Var, boolean z, boolean z2) {
        this.a = str;
        this.b = f9Var;
        this.c = y8Var;
        this.d = z;
        this.e = z2;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new e7(gVar, z9Var, this);
    }

    public String b() {
        return this.a;
    }

    public f9<PointF, PointF> c() {
        return this.b;
    }

    public y8 d() {
        return this.c;
    }

    public boolean e() {
        return this.e;
    }

    public boolean f() {
        return this.d;
    }
}
