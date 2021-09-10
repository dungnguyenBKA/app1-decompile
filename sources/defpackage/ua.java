package defpackage;

import defpackage.ub;

/* access modifiers changed from: package-private */
/* renamed from: ua  reason: default package */
public class ua {
    private static final ub.a a = ub.a.a("fFamily", "fName", "fStyle", "ascent");

    static m8 a(ub ubVar) {
        ubVar.L();
        String str = null;
        String str2 = null;
        String str3 = null;
        float f = 0.0f;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                str = ubVar.m0();
            } else if (q0 == 1) {
                str2 = ubVar.m0();
            } else if (q0 == 2) {
                str3 = ubVar.m0();
            } else if (q0 != 3) {
                ubVar.r0();
                ubVar.s0();
            } else {
                f = (float) ubVar.j0();
            }
        }
        ubVar.V();
        return new m8(str, str2, str3, f);
    }
}
