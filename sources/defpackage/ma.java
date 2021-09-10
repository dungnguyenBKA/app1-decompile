package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.ub;

/* renamed from: ma  reason: default package */
public class ma {
    private static ub.a a = ub.a.a("a", "p", ADRequestList.SELF, "rz", ADRequestList.ORDER_R, "o", "so", "eo", "sk", "sa");
    private static ub.a b = ub.a.a("k");

    public static e9 a(ub ubVar, e eVar) {
        boolean z = ubVar.o0() == ub.b.BEGIN_OBJECT;
        if (z) {
            ubVar.L();
        }
        u8 u8Var = null;
        x8 x8Var = null;
        f9<PointF, PointF> f9Var = null;
        z8 z8Var = null;
        u8 u8Var2 = null;
        u8 u8Var3 = null;
        w8 w8Var = null;
        u8 u8Var4 = null;
        u8 u8Var5 = null;
        while (ubVar.b0()) {
            switch (ubVar.q0(a)) {
                case 0:
                    ubVar.L();
                    while (ubVar.b0()) {
                        if (ubVar.q0(b) != 0) {
                            ubVar.r0();
                            ubVar.s0();
                        } else {
                            x8Var = ka.a(ubVar, eVar);
                        }
                    }
                    ubVar.V();
                    continue;
                case 1:
                    f9Var = ka.b(ubVar, eVar);
                    continue;
                case 2:
                    z8Var = na.i(ubVar, eVar);
                    continue;
                case 3:
                    eVar.a("Lottie doesn't support 3D layers.");
                    break;
                case 4:
                    break;
                case 5:
                    w8Var = na.g(ubVar, eVar);
                    continue;
                case 6:
                    u8Var4 = na.e(ubVar, eVar, false);
                    continue;
                case 7:
                    u8Var5 = na.e(ubVar, eVar, false);
                    continue;
                case 8:
                    u8Var2 = na.e(ubVar, eVar, false);
                    continue;
                case 9:
                    u8Var3 = na.e(ubVar, eVar, false);
                    continue;
                default:
                    ubVar.r0();
                    ubVar.s0();
                    continue;
            }
            u8 e = na.e(ubVar, eVar, false);
            if (e.b().isEmpty()) {
                e.b().add(new ec(eVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(eVar.f())));
            } else if (((ec) e.b().get(0)).b == null) {
                e.b().set(0, new ec(eVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(eVar.f())));
            }
            u8Var = e;
        }
        if (z) {
            ubVar.V();
        }
        if (x8Var == null || (x8Var.c() && x8Var.b().get(0).b.equals(0.0f, 0.0f))) {
            x8Var = null;
        }
        if (f9Var == null || (!(f9Var instanceof b9) && f9Var.c() && f9Var.b().get(0).b.equals(0.0f, 0.0f))) {
            f9Var = null;
        }
        return new e9(x8Var, f9Var, z8Var == null || (z8Var.c() && ((ec) z8Var.b().get(0)).b.a(1.0f, 1.0f)) ? null : z8Var, u8Var == null || (u8Var.c() && (((ec) u8Var.b().get(0)).b.floatValue() > 0.0f ? 1 : (((ec) u8Var.b().get(0)).b.floatValue() == 0.0f ? 0 : -1)) == 0) ? null : u8Var, w8Var, u8Var4, u8Var5, u8Var2 == null || (u8Var2.c() && (((ec) u8Var2.b().get(0)).b.floatValue() > 0.0f ? 1 : (((ec) u8Var2.b().get(0)).b.floatValue() == 0.0f ? 0 : -1)) == 0) ? null : u8Var2, u8Var3 == null || (u8Var3.c() && (((ec) u8Var3.b().get(0)).b.floatValue() > 0.0f ? 1 : (((ec) u8Var3.b().get(0)).b.floatValue() == 0.0f ? 0 : -1)) == 0) ? null : u8Var3);
    }
}
