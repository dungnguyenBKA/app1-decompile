package defpackage;

import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.ub;
import defpackage.w9;
import java.util.ArrayList;
import java.util.Collections;

/* access modifiers changed from: package-private */
/* renamed from: xa  reason: default package */
public class xa {
    private static ub.a a = ub.a.a("nm", "g", "o", "t", ADRequestList.SELF, "e", "w", "lc", "lj", "ml", "hd", "d");
    private static final ub.a b = ub.a.a("p", "k");
    private static final ub.a c = ub.a.a(ADRequestList.ORDER_NULL, "v");

    static l9 a(ub ubVar, e eVar) {
        v8 v8Var;
        ArrayList arrayList = new ArrayList();
        String str = null;
        m9 m9Var = null;
        v8 v8Var2 = null;
        y8 y8Var = null;
        y8 y8Var2 = null;
        u8 u8Var = null;
        w9.a aVar = null;
        w9.b bVar = null;
        float f = 0.0f;
        u8 u8Var2 = null;
        boolean z = false;
        w8 w8Var = null;
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
                        if (q0 != 0) {
                            v8Var = v8Var2;
                            if (q0 != 1) {
                                ubVar.r0();
                                ubVar.s0();
                            } else {
                                v8Var2 = na.f(ubVar, eVar, i);
                            }
                        } else {
                            v8Var = v8Var2;
                            i = ubVar.k0();
                        }
                        v8Var2 = v8Var;
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
                    u8Var = na.d(ubVar, eVar);
                    break;
                case 7:
                    aVar = w9.a.values()[ubVar.k0() - 1];
                    break;
                case 8:
                    bVar = w9.b.values()[ubVar.k0() - 1];
                    break;
                case 9:
                    f = (float) ubVar.j0();
                    break;
                case 10:
                    z = ubVar.i0();
                    break;
                case 11:
                    ubVar.o();
                    while (ubVar.b0()) {
                        ubVar.L();
                        u8 u8Var3 = null;
                        String str2 = null;
                        while (ubVar.b0()) {
                            int q02 = ubVar.q0(c);
                            if (q02 != 0) {
                                if (q02 != 1) {
                                    ubVar.r0();
                                    ubVar.s0();
                                } else {
                                    u8Var3 = na.d(ubVar, eVar);
                                }
                                u8Var2 = u8Var2;
                            } else {
                                str2 = ubVar.m0();
                            }
                        }
                        ubVar.V();
                        if (str2.equals("o")) {
                            u8Var2 = u8Var3;
                        } else {
                            if (str2.equals("d") || str2.equals("g")) {
                                eVar.s(true);
                                arrayList.add(u8Var3);
                            }
                            u8Var2 = u8Var2;
                        }
                    }
                    ubVar.S();
                    if (arrayList.size() == 1) {
                        arrayList.add(arrayList.get(0));
                    }
                    u8Var2 = u8Var2;
                    break;
                default:
                    ubVar.r0();
                    ubVar.s0();
                    break;
            }
        }
        if (w8Var == null) {
            w8Var = new w8(Collections.singletonList(new ec(100)));
        }
        return new l9(str, m9Var, v8Var2, w8Var, y8Var, y8Var2, u8Var, aVar, bVar, f, arrayList, u8Var2, z);
    }
}
