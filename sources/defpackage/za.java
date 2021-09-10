package defpackage;

import android.graphics.Color;
import android.graphics.PointF;
import defpackage.ub;
import java.util.ArrayList;
import java.util.List;

/* renamed from: za  reason: default package */
class za {
    private static final ub.a a = ub.a.a("x", "y");

    static int a(ub ubVar) {
        ubVar.o();
        int j0 = (int) (ubVar.j0() * 255.0d);
        int j02 = (int) (ubVar.j0() * 255.0d);
        int j03 = (int) (ubVar.j0() * 255.0d);
        while (ubVar.b0()) {
            ubVar.s0();
        }
        ubVar.S();
        return Color.argb(255, j0, j02, j03);
    }

    static PointF b(ub ubVar, float f) {
        int ordinal = ubVar.o0().ordinal();
        if (ordinal == 0) {
            ubVar.o();
            float j0 = (float) ubVar.j0();
            float j02 = (float) ubVar.j0();
            while (ubVar.o0() != ub.b.END_ARRAY) {
                ubVar.s0();
            }
            ubVar.S();
            return new PointF(j0 * f, j02 * f);
        } else if (ordinal == 2) {
            ubVar.L();
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (ubVar.b0()) {
                int q0 = ubVar.q0(a);
                if (q0 == 0) {
                    f2 = d(ubVar);
                } else if (q0 != 1) {
                    ubVar.r0();
                    ubVar.s0();
                } else {
                    f3 = d(ubVar);
                }
            }
            ubVar.V();
            return new PointF(f2 * f, f3 * f);
        } else if (ordinal == 6) {
            float j03 = (float) ubVar.j0();
            float j04 = (float) ubVar.j0();
            while (ubVar.b0()) {
                ubVar.s0();
            }
            return new PointF(j03 * f, j04 * f);
        } else {
            StringBuilder q = ic.q("Unknown point starts with ");
            q.append(ubVar.o0());
            throw new IllegalArgumentException(q.toString());
        }
    }

    static List<PointF> c(ub ubVar, float f) {
        ArrayList arrayList = new ArrayList();
        ubVar.o();
        while (ubVar.o0() == ub.b.BEGIN_ARRAY) {
            ubVar.o();
            arrayList.add(b(ubVar, f));
            ubVar.S();
        }
        ubVar.S();
        return arrayList;
    }

    static float d(ub ubVar) {
        ub.b o0 = ubVar.o0();
        int ordinal = o0.ordinal();
        if (ordinal == 0) {
            ubVar.o();
            float j0 = (float) ubVar.j0();
            while (ubVar.b0()) {
                ubVar.s0();
            }
            ubVar.S();
            return j0;
        } else if (ordinal == 6) {
            return (float) ubVar.j0();
        } else {
            throw new IllegalArgumentException("Unknown value for token of type " + o0);
        }
    }
}
