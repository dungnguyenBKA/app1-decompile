package defpackage;

import android.graphics.Paint;
import com.airbnb.lottie.g;
import java.util.List;

/* renamed from: w9  reason: default package */
public class w9 implements i9 {
    private final String a;
    private final u8 b;
    private final List<u8> c;
    private final t8 d;
    private final w8 e;
    private final u8 f;
    private final a g;
    private final b h;
    private final float i;
    private final boolean j;

    /* renamed from: w9$a */
    public enum a {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap a() {
            int ordinal = ordinal();
            if (ordinal == 0) {
                return Paint.Cap.BUTT;
            }
            if (ordinal != 1) {
                return Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }
    }

    /* renamed from: w9$b */
    public enum b {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join a() {
            int ordinal = ordinal();
            if (ordinal == 0) {
                return Paint.Join.MITER;
            }
            if (ordinal == 1) {
                return Paint.Join.ROUND;
            }
            if (ordinal != 2) {
                return null;
            }
            return Paint.Join.BEVEL;
        }
    }

    public w9(String str, u8 u8Var, List<u8> list, t8 t8Var, w8 w8Var, u8 u8Var2, a aVar, b bVar, float f2, boolean z) {
        this.a = str;
        this.b = u8Var;
        this.c = list;
        this.d = t8Var;
        this.e = w8Var;
        this.f = u8Var2;
        this.g = aVar;
        this.h = bVar;
        this.i = f2;
        this.j = z;
    }

    @Override // defpackage.i9
    public b7 a(g gVar, z9 z9Var) {
        return new q7(gVar, z9Var, this);
    }

    public a b() {
        return this.g;
    }

    public t8 c() {
        return this.d;
    }

    public u8 d() {
        return this.b;
    }

    public b e() {
        return this.h;
    }

    public List<u8> f() {
        return this.c;
    }

    public float g() {
        return this.i;
    }

    public String h() {
        return this.a;
    }

    public w8 i() {
        return this.e;
    }

    public u8 j() {
        return this.f;
    }

    public boolean k() {
        return this.j;
    }
}
