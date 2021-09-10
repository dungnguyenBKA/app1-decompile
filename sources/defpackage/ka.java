package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.e;
import defpackage.ub;
import java.util.ArrayList;

/* renamed from: ka  reason: default package */
public class ka {
    private static ub.a a = ub.a.a("k", "x", "y");

    public static x8 a(ub ubVar, e eVar) {
        ArrayList arrayList = new ArrayList();
        if (ubVar.o0() == ub.b.BEGIN_ARRAY) {
            ubVar.o();
            while (ubVar.b0()) {
                arrayList.add(new z7(eVar, ab.a(ubVar, eVar, dc.c(), fb.a, ubVar.o0() == ub.b.BEGIN_OBJECT)));
            }
            ubVar.S();
            bb.b(arrayList);
        } else {
            arrayList.add(new ec(za.b(ubVar, dc.c())));
        }
        return new x8(arrayList);
    }

    static f9<PointF, PointF> b(ub ubVar, e eVar) {
        ub.b bVar = ub.b.STRING;
        ubVar.L();
        x8 x8Var = null;
        u8 u8Var = null;
        u8 u8Var2 = null;
        boolean z = false;
        while (ubVar.o0() != ub.b.END_OBJECT) {
            int q0 = ubVar.q0(a);
            if (q0 != 0) {
                if (q0 != 1) {
                    if (q0 != 2) {
                        ubVar.r0();
                        ubVar.s0();
                    } else if (ubVar.o0() == bVar) {
                        ubVar.s0();
                    } else {
                        u8Var2 = na.d(ubVar, eVar);
                    }
                } else if (ubVar.o0() == bVar) {
                    ubVar.s0();
                } else {
                    u8Var = na.d(ubVar, eVar);
                }
                z = true;
            } else {
                x8Var = a(ubVar, eVar);
            }
        }
        ubVar.V();
        if (z) {
            eVar.a("Lottie doesn't support expressions.");
        }
        if (x8Var != null) {
            return x8Var;
        }
        return new b9(u8Var, u8Var2);
    }
}
