package defpackage;

import com.airbnb.lottie.e;
import defpackage.ub;
import java.util.ArrayList;
import java.util.List;

/* renamed from: bb  reason: default package */
class bb {
    static ub.a a = ub.a.a("k");

    static <T> List<ec<T>> a(ub ubVar, e eVar, float f, rb<T> rbVar) {
        ArrayList arrayList = new ArrayList();
        if (ubVar.o0() == ub.b.STRING) {
            eVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        ubVar.L();
        while (ubVar.b0()) {
            if (ubVar.q0(a) != 0) {
                ubVar.s0();
            } else if (ubVar.o0() == ub.b.BEGIN_ARRAY) {
                ubVar.o();
                if (ubVar.o0() == ub.b.NUMBER) {
                    arrayList.add(ab.a(ubVar, eVar, f, rbVar, false));
                } else {
                    while (ubVar.b0()) {
                        arrayList.add(ab.a(ubVar, eVar, f, rbVar, true));
                    }
                }
                ubVar.S();
            } else {
                arrayList.add(ab.a(ubVar, eVar, f, rbVar, false));
            }
        }
        ubVar.V();
        b(arrayList);
        return arrayList;
    }

    public static <T> void b(List<? extends ec<T>> list) {
        int i;
        T t;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            ec ecVar = (ec) list.get(i2);
            i2++;
            ec ecVar2 = (ec) list.get(i2);
            ecVar.f = Float.valueOf(ecVar2.e);
            if (ecVar.c == null && (t = ecVar2.b) != null) {
                ecVar.c = t;
                if (ecVar instanceof z7) {
                    ((z7) ecVar).i();
                }
            }
        }
        ec ecVar3 = (ec) list.get(i);
        if ((ecVar3.b == null || ecVar3.c == null) && list.size() > 1) {
            list.remove(ecVar3);
        }
    }
}
