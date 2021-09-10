package defpackage;

import com.airbnb.lottie.e;
import com.vungle.warren.error.VungleException;
import defpackage.ub;

/* access modifiers changed from: package-private */
/* renamed from: qa  reason: default package */
public class qa {
    private static ub.a a = ub.a.a("ty", "d");

    static i9 a(ub ubVar, e eVar) {
        String str;
        String str2;
        i9 i9Var;
        ubVar.L();
        int i = 2;
        while (true) {
            str = null;
            i9Var = null;
            if (!ubVar.b0()) {
                str2 = null;
                break;
            }
            int q0 = ubVar.q0(a);
            if (q0 == 0) {
                str2 = ubVar.m0();
                break;
            } else if (q0 != 1) {
                ubVar.r0();
                ubVar.s0();
            } else {
                i = ubVar.k0();
            }
        }
        if (str2 == null) {
            return null;
        }
        char c = 65535;
        int i2 = 0;
        switch (str2.hashCode()) {
            case 3239:
                if (str2.equals("el")) {
                    c = 0;
                    break;
                }
                break;
            case 3270:
                if (str2.equals("fl")) {
                    c = 1;
                    break;
                }
                break;
            case 3295:
                if (str2.equals("gf")) {
                    c = 2;
                    break;
                }
                break;
            case 3307:
                if (str2.equals("gr")) {
                    c = 3;
                    break;
                }
                break;
            case 3308:
                if (str2.equals("gs")) {
                    c = 4;
                    break;
                }
                break;
            case 3488:
                if (str2.equals("mm")) {
                    c = 5;
                    break;
                }
                break;
            case 3633:
                if (str2.equals("rc")) {
                    c = 6;
                    break;
                }
                break;
            case 3646:
                if (str2.equals("rp")) {
                    c = 7;
                    break;
                }
                break;
            case 3669:
                if (str2.equals("sh")) {
                    c = '\b';
                    break;
                }
                break;
            case 3679:
                if (str2.equals("sr")) {
                    c = '\t';
                    break;
                }
                break;
            case 3681:
                if (str2.equals("st")) {
                    c = '\n';
                    break;
                }
                break;
            case 3705:
                if (str2.equals("tm")) {
                    c = 11;
                    break;
                }
                break;
            case 3710:
                if (str2.equals("tr")) {
                    c = '\f';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                i9Var = oa.a(ubVar, eVar, i);
                break;
            case 1:
                i9Var = mb.a(ubVar, eVar);
                break;
            case 2:
                i9Var = wa.a(ubVar, eVar);
                break;
            case 3:
                i9Var = nb.a(ubVar, eVar);
                break;
            case 4:
                i9Var = xa.a(ubVar, eVar);
                break;
            case 5:
                i9Var = eb.a(ubVar);
                eVar.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case 6:
                i9Var = ib.a(ubVar, eVar);
                break;
            case 7:
                i9Var = jb.a(ubVar, eVar);
                break;
            case '\b':
                ub.a aVar = ob.a;
                a9 a9Var = null;
                boolean z = false;
                while (ubVar.b0()) {
                    int q02 = ubVar.q0(ob.a);
                    if (q02 == 0) {
                        str = ubVar.m0();
                    } else if (q02 == 1) {
                        i2 = ubVar.k0();
                    } else if (q02 == 2) {
                        a9Var = new a9(bb.a(ubVar, eVar, dc.c(), lb.a));
                    } else if (q02 != 3) {
                        ubVar.s0();
                    } else {
                        z = ubVar.i0();
                    }
                }
                i9Var = new v9(str, i2, a9Var, z);
                break;
            case '\t':
                i9Var = hb.a(ubVar, eVar);
                break;
            case '\n':
                i9Var = pb.a(ubVar, eVar);
                break;
            case 11:
                i9Var = qb.a(ubVar, eVar);
                break;
            case VungleException.NO_AUTO_CACHED_PLACEMENT:
                i9Var = ma.a(ubVar, eVar);
                break;
            default:
                zb.b("Unknown shape type " + str2);
                break;
        }
        while (ubVar.b0()) {
            ubVar.s0();
        }
        ubVar.V();
        return i9Var;
    }
}
