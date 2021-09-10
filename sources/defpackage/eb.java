package defpackage;

import defpackage.o9;
import defpackage.ub;

/* access modifiers changed from: package-private */
/* renamed from: eb  reason: default package */
public class eb {
    private static final ub.a a = ub.a.a("nm", "mm", "hd");

    static o9 a(ub ubVar) {
        String str = null;
        o9.a aVar = null;
        boolean z = false;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                str = ubVar.m0();
            } else if (q0 == 1) {
                int k0 = ubVar.k0();
                o9.a aVar2 = o9.a.MERGE;
                if (k0 != 1) {
                    if (k0 == 2) {
                        aVar = o9.a.ADD;
                    } else if (k0 == 3) {
                        aVar = o9.a.SUBTRACT;
                    } else if (k0 == 4) {
                        aVar = o9.a.INTERSECT;
                    } else if (k0 == 5) {
                        aVar = o9.a.EXCLUDE_INTERSECTIONS;
                    }
                }
                aVar = aVar2;
            } else if (q0 != 2) {
                ubVar.r0();
                ubVar.s0();
            } else {
                z = ubVar.i0();
            }
        }
        return new o9(str, aVar, z);
    }
}
