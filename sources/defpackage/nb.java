package defpackage;

import com.airbnb.lottie.e;
import defpackage.ub;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
/* renamed from: nb  reason: default package */
public class nb {
    private static ub.a a = ub.a.a("nm", "hd", "it");

    static u9 a(ub ubVar, e eVar) {
        ArrayList arrayList = new ArrayList();
        String str = null;
        boolean z = false;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                str = ubVar.m0();
            } else if (q0 == 1) {
                z = ubVar.i0();
            } else if (q0 != 2) {
                ubVar.s0();
            } else {
                ubVar.o();
                while (ubVar.b0()) {
                    i9 a2 = qa.a(ubVar, eVar);
                    if (a2 != null) {
                        arrayList.add(a2);
                    }
                }
                ubVar.S();
            }
        }
        return new u9(str, arrayList, z);
    }
}
