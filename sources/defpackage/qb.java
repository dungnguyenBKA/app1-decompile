package defpackage;

import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.ub;
import defpackage.x9;

/* access modifiers changed from: package-private */
/* renamed from: qb  reason: default package */
public class qb {
    private static ub.a a = ub.a.a(ADRequestList.SELF, "e", "o", "nm", ADRequestList.ORDER_M, "hd");

    static x9 a(ub ubVar, e eVar) {
        x9.a aVar;
        String str = null;
        x9.a aVar2 = null;
        u8 u8Var = null;
        u8 u8Var2 = null;
        u8 u8Var3 = null;
        boolean z = false;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                u8Var = na.e(ubVar, eVar, false);
            } else if (q0 == 1) {
                u8Var2 = na.e(ubVar, eVar, false);
            } else if (q0 == 2) {
                u8Var3 = na.e(ubVar, eVar, false);
            } else if (q0 == 3) {
                str = ubVar.m0();
            } else if (q0 == 4) {
                int k0 = ubVar.k0();
                if (k0 == 1) {
                    aVar = x9.a.SIMULTANEOUSLY;
                } else if (k0 == 2) {
                    aVar = x9.a.INDIVIDUALLY;
                } else {
                    throw new IllegalArgumentException(ic.f("Unknown trim path type ", k0));
                }
                aVar2 = aVar;
            } else if (q0 != 5) {
                ubVar.s0();
            } else {
                z = ubVar.i0();
            }
        }
        return new x9(str, aVar2, u8Var, u8Var2, u8Var3, z);
    }
}
