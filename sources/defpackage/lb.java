package defpackage;

import android.graphics.PointF;
import defpackage.ub;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: lb  reason: default package */
public class lb implements rb<s9> {
    public static final lb a = new lb();
    private static final ub.a b = ub.a.a("c", "v", "i", "o");

    private lb() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.rb
    public s9 a(ub ubVar, float f) {
        if (ubVar.o0() == ub.b.BEGIN_ARRAY) {
            ubVar.o();
        }
        ubVar.L();
        List<PointF> list = null;
        List<PointF> list2 = null;
        List<PointF> list3 = null;
        boolean z = false;
        while (ubVar.b0()) {
            int q0 = ubVar.q0(b);
            if (q0 == 0) {
                z = ubVar.i0();
            } else if (q0 == 1) {
                list = za.c(ubVar, f);
            } else if (q0 == 2) {
                list2 = za.c(ubVar, f);
            } else if (q0 != 3) {
                ubVar.r0();
                ubVar.s0();
            } else {
                list3 = za.c(ubVar, f);
            }
        }
        ubVar.V();
        if (ubVar.o0() == ub.b.END_ARRAY) {
            ubVar.S();
        }
        if (list == null || list2 == null || list3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        } else if (list.isEmpty()) {
            return new s9(new PointF(), false, Collections.emptyList());
        } else {
            int size = list.size();
            PointF pointF = list.get(0);
            ArrayList arrayList = new ArrayList(size);
            for (int i = 1; i < size; i++) {
                PointF pointF2 = list.get(i);
                int i2 = i - 1;
                arrayList.add(new k8(cc.a(list.get(i2), list3.get(i2)), cc.a(pointF2, list2.get(i)), pointF2));
            }
            if (z) {
                PointF pointF3 = list.get(0);
                int i3 = size - 1;
                arrayList.add(new k8(cc.a(list.get(i3), list3.get(i3)), cc.a(pointF3, list2.get(0)), pointF3));
            }
            return new s9(pointF, z, arrayList);
        }
    }
}
