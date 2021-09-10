package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.ub;

/* access modifiers changed from: package-private */
/* renamed from: oa  reason: default package */
public class oa {
    private static ub.a a = ub.a.a("nm", "p", ADRequestList.SELF, "hd", "d");

    static h9 a(ub ubVar, e eVar, int i) {
        boolean z = i == 3;
        String str = null;
        f9<PointF, PointF> f9Var = null;
        y8 y8Var = null;
        boolean z2 = false;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                str = ubVar.m0();
            } else if (q0 == 1) {
                f9Var = ka.b(ubVar, eVar);
            } else if (q0 == 2) {
                y8Var = na.h(ubVar, eVar);
            } else if (q0 == 3) {
                z2 = ubVar.i0();
            } else if (q0 != 4) {
                ubVar.r0();
                ubVar.s0();
            } else {
                z = ubVar.k0() == 3;
            }
        }
        return new h9(str, f9Var, y8Var, z, z2);
    }
}
