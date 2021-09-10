package defpackage;

import com.google.ads.ADRequestList;
import defpackage.l8;
import defpackage.ub;

/* renamed from: ra  reason: default package */
public class ra implements rb<l8> {
    public static final ra a = new ra();
    private static final ub.a b = ub.a.a("t", "f", ADRequestList.SELF, "j", "tr", "lh", "ls", "fc", "sc", "sw", "of");

    private ra() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.rb
    public l8 a(ub ubVar, float f) {
        l8.a aVar = l8.a.CENTER;
        ubVar.L();
        l8.a aVar2 = aVar;
        String str = null;
        String str2 = null;
        float f2 = 0.0f;
        int i = 0;
        float f3 = 0.0f;
        float f4 = 0.0f;
        int i2 = 0;
        int i3 = 0;
        float f5 = 0.0f;
        boolean z = true;
        while (ubVar.b0()) {
            switch (ubVar.q0(b)) {
                case 0:
                    str = ubVar.m0();
                    break;
                case 1:
                    str2 = ubVar.m0();
                    break;
                case 2:
                    f2 = (float) ubVar.j0();
                    break;
                case 3:
                    int k0 = ubVar.k0();
                    if (k0 <= 2 && k0 >= 0) {
                        aVar2 = l8.a.values()[k0];
                        break;
                    } else {
                        aVar2 = aVar;
                        break;
                    }
                case 4:
                    i = ubVar.k0();
                    break;
                case 5:
                    f3 = (float) ubVar.j0();
                    break;
                case 6:
                    f4 = (float) ubVar.j0();
                    break;
                case 7:
                    i2 = za.a(ubVar);
                    break;
                case 8:
                    i3 = za.a(ubVar);
                    break;
                case 9:
                    f5 = (float) ubVar.j0();
                    break;
                case 10:
                    z = ubVar.i0();
                    break;
                default:
                    ubVar.r0();
                    ubVar.s0();
                    break;
            }
        }
        ubVar.V();
        return new l8(str, str2, f2, aVar2, i, f3, f4, i2, i3, f5, z);
    }
}
