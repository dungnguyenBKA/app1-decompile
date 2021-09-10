package defpackage;

import com.airbnb.lottie.e;
import defpackage.ub;

/* renamed from: la  reason: default package */
public class la {
    private static ub.a a = ub.a.a("a");
    private static ub.a b = ub.a.a("fc", "sc", "sw", "t");

    public static d9 a(ub ubVar, e eVar) {
        ubVar.L();
        d9 d9Var = null;
        while (ubVar.b0()) {
            if (ubVar.q0(a) != 0) {
                ubVar.r0();
                ubVar.s0();
            } else {
                ubVar.L();
                t8 t8Var = null;
                t8 t8Var2 = null;
                u8 u8Var = null;
                u8 u8Var2 = null;
                while (ubVar.b0()) {
                    int q0 = ubVar.q0(b);
                    if (q0 == 0) {
                        t8Var = na.b(ubVar, eVar);
                    } else if (q0 == 1) {
                        t8Var2 = na.b(ubVar, eVar);
                    } else if (q0 == 2) {
                        u8Var = na.d(ubVar, eVar);
                    } else if (q0 != 3) {
                        ubVar.r0();
                        ubVar.s0();
                    } else {
                        u8Var2 = na.d(ubVar, eVar);
                    }
                }
                ubVar.V();
                d9Var = new d9(t8Var, t8Var2, u8Var, u8Var2);
            }
        }
        ubVar.V();
        return d9Var == null ? new d9(null, null, null, null) : d9Var;
    }
}
