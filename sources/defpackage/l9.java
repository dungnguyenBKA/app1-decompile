package defpackage;

import com.airbnb.lottie.g;
import defpackage.w9;
import java.util.List;

/* renamed from: l9  reason: default package */
public class l9 implements i9 {
    private final String a;
    private final m9 b;
    private final v8 c;
    private final w8 d;
    private final y8 e;
    private final y8 f;
    private final u8 g;
    private final w9.a h;
    private final w9.b i;
    private final float j;
    private final List<u8> k;
    private final u8 l;
    private final boolean m;

    public l9(String str, m9 m9Var, v8 v8Var, w8 w8Var, y8 y8Var, y8 y8Var2, u8 u8Var, w9.a aVar, w9.b bVar, float f2, List<u8> list, u8 u8Var2, boolean z) {
        this.a = str;
        this.b = m9Var;
        this.c = v8Var;
        this.d = w8Var;
        this.e = y8Var;
        this.f = y8Var2;
        this.g = u8Var;
        this.h = aVar;
        this.i = bVar;
        this.j = f2;
        this.k = list;
        this.l = u8Var2;
        this.m = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new h7(gVar, z9Var, this);
    }

    public w9.a b() {
        return this.h;
    }

    public u8 c() {
        return this.l;
    }

    public y8 d() {
        return this.f;
    }

    public v8 e() {
        return this.c;
    }

    public m9 f() {
        return this.b;
    }

    public w9.b g() {
        return this.i;
    }

    public List<u8> h() {
        return this.k;
    }

    public float i() {
        return this.j;
    }

    public String j() {
        return this.a;
    }

    public w8 k() {
        return this.d;
    }

    public y8 l() {
        return this.e;
    }

    public u8 m() {
        return this.g;
    }

    public boolean n() {
        return this.m;
    }
}
