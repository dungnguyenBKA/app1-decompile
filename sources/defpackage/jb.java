package defpackage;

import com.airbnb.lottie.e;
import defpackage.ub;

/* access modifiers changed from: package-private */
/* renamed from: jb  reason: default package */
public class jb {
    private static ub.a a = ub.a.a("nm", "c", "o", "tr", "hd");

    static r9 a(ub ubVar, e eVar) {
        String str = null;
        u8 u8Var = null;
        u8 u8Var2 = null;
        e9 e9Var = null;
        boolean z = false;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                str = ubVar.m0();
            } else if (q0 == 1) {
                u8Var = na.e(ubVar, eVar, false);
            } else if (q0 == 2) {
                u8Var2 = na.e(ubVar, eVar, false);
            } else if (q0 == 3) {
                e9Var = ma.a(ubVar, eVar);
            } else if (q0 != 4) {
                ubVar.s0();
            } else {
                z = ubVar.i0();
            }
        }
        return new r9(str, u8Var, u8Var2, e9Var, z);
    }
}
