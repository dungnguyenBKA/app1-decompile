package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.g;

/* renamed from: p9  reason: default package */
public class p9 implements i9 {
    private final String a;
    private final a b;
    private final u8 c;
    private final f9<PointF, PointF> d;
    private final u8 e;
    private final u8 f;
    private final u8 g;
    private final u8 h;
    private final u8 i;
    private final boolean j;

    /* renamed from: p9$a */
    public enum a {
        STAR(1),
        POLYGON(2);
        
        private final int b;

        private a(int i) {
            this.b = i;
        }

        public static a a(int i) {
            a[] values = values();
            for (int i2 = 0; i2 < 2; i2++) {
                a aVar = values[i2];
                if (aVar.b == i) {
                    return aVar;
                }
            }
            return null;
        }
    }

    public p9(String str, a aVar, u8 u8Var, f9<PointF, PointF> f9Var, u8 u8Var2, u8 u8Var3, u8 u8Var4, u8 u8Var5, u8 u8Var6, boolean z) {
        this.a = str;
        this.b = aVar;
        this.c = u8Var;
        this.d = f9Var;
        this.e = u8Var2;
        this.f = u8Var3;
        this.g = u8Var4;
        this.h = u8Var5;
        this.i = u8Var6;
        this.j = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new m7(gVar, z9Var, this);
    }

    public u8 b() {
        return this.f;
    }

    public u8 c() {
        return this.h;
    }

    public String d() {
        return this.a;
    }

    public u8 e() {
        return this.g;
    }

    public u8 f() {
        return this.i;
    }

    public u8 g() {
        return this.c;
    }

    public f9<PointF, PointF> h() {
        return this.d;
    }

    public u8 i() {
        return this.e;
    }

    public a j() {
        return this.b;
    }

    public boolean k() {
        return this.j;
    }
}
