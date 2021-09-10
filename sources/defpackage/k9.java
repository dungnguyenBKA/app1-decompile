package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.g;

/* renamed from: k9  reason: default package */
public class k9 implements i9 {
    private final m9 a;
    private final Path.FillType b;
    private final v8 c;
    private final w8 d;
    private final y8 e;
    private final y8 f;
    private final String g;
    private final boolean h;

    public k9(String str, m9 m9Var, Path.FillType fillType, v8 v8Var, w8 w8Var, y8 y8Var, y8 y8Var2, u8 u8Var, u8 u8Var2, boolean z) {
        this.a = m9Var;
        this.b = fillType;
        this.c = v8Var;
        this.d = w8Var;
        this.e = y8Var;
        this.f = y8Var2;
        this.g = str;
        this.h = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new g7(gVar, z9Var, this);
    }

    public y8 b() {
        return this.f;
    }

    public Path.FillType c() {
        return this.b;
    }

    public v8 d() {
        return this.c;
    }

    public m9 e() {
        return this.a;
    }

    public String f() {
        return this.g;
    }

    public w8 g() {
        return this.d;
    }

    public y8 h() {
        return this.e;
    }

    public boolean i() {
        return this.h;
    }
}
