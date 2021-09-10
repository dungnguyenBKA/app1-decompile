package defpackage;

import com.airbnb.lottie.e;
import defpackage.ub;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
/* renamed from: ta  reason: default package */
public class ta {
    private static final ub.a a = ub.a.a("ch", "size", "w", "style", "fFamily", "data");
    private static final ub.a b = ub.a.a("shapes");

    static n8 a(ub ubVar, e eVar) {
        ArrayList arrayList = new ArrayList();
        ubVar.L();
        double d = 0.0d;
        String str = null;
        String str2 = null;
        double d2 = 0.0d;
        char c = 0;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                c = ubVar.m0().charAt(0);
            } else if (q0 == 1) {
                d = ubVar.j0();
            } else if (q0 == 2) {
                d2 = ubVar.j0();
            } else if (q0 == 3) {
                str = ubVar.m0();
            } else if (q0 == 4) {
                str2 = ubVar.m0();
            } else if (q0 != 5) {
                ubVar.r0();
                ubVar.s0();
            } else {
                ubVar.L();
                while (ubVar.b0()) {
                    if (ubVar.q0(b) != 0) {
                        ubVar.r0();
                        ubVar.s0();
                    } else {
                        ubVar.o();
                        while (ubVar.b0()) {
                            arrayList.add((u9) qa.a(ubVar, eVar));
                        }
                        ubVar.S();
                    }
                }
                ubVar.V();
            }
        }
        ubVar.V();
        return new n8(arrayList, c, d, d2, str, str2);
    }
}
