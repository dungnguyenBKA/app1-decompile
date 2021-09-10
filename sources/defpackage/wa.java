package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.ub;
import java.util.Collections;

/* access modifiers changed from: package-private */
/* renamed from: wa  reason: default package */
public class wa {
    private static final ub.a a = ub.a.a("nm", "g", "o", "t", ADRequestList.SELF, "e", ADRequestList.ORDER_R, "hd");
    private static final ub.a b = ub.a.a("p", "k");

    static k9 a(ub ubVar, e eVar) {
        w8 w8Var = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String str = null;
        m9 m9Var = null;
        v8 v8Var = null;
        y8 y8Var = null;
        y8 y8Var2 = null;
        boolean z = false;
        while (ubVar.b0()) {
            switch (ubVar.q0(a)) {
                case 0:
                    str = ubVar.m0();
                    break;
                case 1:
                    int i = -1;
                    ubVar.L();
                    while (ubVar.b0()) {
                        int q0 = ubVar.q0(b);
                        if (q0 == 0) {
                            i = ubVar.k0();
                        } else if (q0 != 1) {
                            ubVar.r0();
                            ubVar.s0();
                        } else {
                            v8Var = na.f(ubVar, eVar, i);
                        }
                    }
                    ubVar.V();
                    break;
                case 2:
                    w8Var = na.g(ubVar, eVar);
                    break;
                case 3:
                    m9Var = ubVar.k0() == 1 ? m9.LINEAR : m9.RADIAL;
                    break;
                case 4:
                    y8Var = na.h(ubVar, eVar);
                    break;
                case 5:
                    y8Var2 = na.h(ubVar, eVar);
                    break;
                case 6:
                    fillType = ubVar.k0() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    z = ubVar.i0();
                    break;
                default:
                    ubVar.r0();
                    ubVar.s0();
                    break;
            }
        }
        return new k9(str, m9Var, fillType, v8Var, w8Var == null ? new w8(Collections.singletonList(new ec(100))) : w8Var, y8Var, y8Var2, null, null, z);
    }
}
