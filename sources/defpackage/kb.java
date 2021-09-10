package defpackage;

import defpackage.ub;

/* renamed from: kb  reason: default package */
public class kb implements rb<hc> {
    public static final kb a = new kb();

    private kb() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.rb
    public hc a(ub ubVar, float f) {
        boolean z = ubVar.o0() == ub.b.BEGIN_ARRAY;
        if (z) {
            ubVar.o();
        }
        float j0 = (float) ubVar.j0();
        float j02 = (float) ubVar.j0();
        while (ubVar.b0()) {
            ubVar.s0();
        }
        if (z) {
            ubVar.S();
        }
        return new hc((j0 / 100.0f) * f, (j02 / 100.0f) * f);
    }
}
