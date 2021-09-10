package defpackage;

import android.graphics.Color;
import defpackage.ub;

/* renamed from: pa  reason: default package */
public class pa implements rb<Integer> {
    public static final pa a = new pa();

    private pa() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.rb
    public Integer a(ub ubVar, float f) {
        boolean z = ubVar.o0() == ub.b.BEGIN_ARRAY;
        if (z) {
            ubVar.o();
        }
        double j0 = ubVar.j0();
        double j02 = ubVar.j0();
        double j03 = ubVar.j0();
        double j04 = ubVar.o0() == ub.b.NUMBER ? ubVar.j0() : 1.0d;
        if (z) {
            ubVar.S();
        }
        if (j0 <= 1.0d && j02 <= 1.0d && j03 <= 1.0d) {
            j0 *= 255.0d;
            j02 *= 255.0d;
            j03 *= 255.0d;
            if (j04 <= 1.0d) {
                j04 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) j04, (int) j0, (int) j02, (int) j03));
    }
}
