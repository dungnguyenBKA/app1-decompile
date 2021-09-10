package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.ub;

/* access modifiers changed from: package-private */
/* renamed from: ib  reason: default package */
public class ib {
    private static ub.a a = ub.a.a("nm", "p", ADRequestList.SELF, ADRequestList.ORDER_R, "hd");

    static q9 a(ub ubVar, e eVar) {
        String str = null;
        f9<PointF, PointF> f9Var = null;
        y8 y8Var = null;
        u8 u8Var = null;
        boolean z = false;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                str = ubVar.m0();
            } else if (q0 == 1) {
                f9Var = ka.b(ubVar, eVar);
            } else if (q0 == 2) {
                y8Var = na.h(ubVar, eVar);
            } else if (q0 == 3) {
                u8Var = na.d(ubVar, eVar);
            } else if (q0 != 4) {
                ubVar.s0();
            } else {
                z = ubVar.i0();
            }
        }
        return new q9(str, f9Var, y8Var, u8Var, z);
    }
}
