package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.ub;
import java.util.Collections;

/* access modifiers changed from: package-private */
/* renamed from: mb  reason: default package */
public class mb {
    private static final ub.a a = ub.a.a("nm", "c", "o", "fillEnabled", ADRequestList.ORDER_R, "hd");

    static t9 a(ub ubVar, e eVar) {
        w8 w8Var = null;
        String str = null;
        t8 t8Var = null;
        int i = 1;
        boolean z = false;
        boolean z2 = false;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                str = ubVar.m0();
            } else if (q0 == 1) {
                t8Var = na.b(ubVar, eVar);
            } else if (q0 == 2) {
                w8Var = na.g(ubVar, eVar);
            } else if (q0 == 3) {
                z = ubVar.i0();
            } else if (q0 == 4) {
                i = ubVar.k0();
            } else if (q0 != 5) {
                ubVar.r0();
                ubVar.s0();
            } else {
                z2 = ubVar.i0();
            }
        }
        return new t9(str, z, i == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, t8Var, w8Var == null ? new w8(Collections.singletonList(new ec(100))) : w8Var, z2);
    }
}
