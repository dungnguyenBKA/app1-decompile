package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.p9;
import defpackage.ub;

/* access modifiers changed from: package-private */
/* renamed from: hb  reason: default package */
public class hb {
    private static final ub.a a = ub.a.a("nm", "sy", "pt", "p", ADRequestList.ORDER_R, "or", "os", "ir", "is", "hd");

    static p9 a(ub ubVar, e eVar) {
        String str = null;
        p9.a aVar = null;
        u8 u8Var = null;
        f9<PointF, PointF> f9Var = null;
        u8 u8Var2 = null;
        u8 u8Var3 = null;
        u8 u8Var4 = null;
        u8 u8Var5 = null;
        u8 u8Var6 = null;
        boolean z = false;
        while (ubVar.b0()) {
            switch (ubVar.q0(a)) {
                case 0:
                    str = ubVar.m0();
                    break;
                case 1:
                    aVar = p9.a.a(ubVar.k0());
                    break;
                case 2:
                    u8Var = na.e(ubVar, eVar, false);
                    break;
                case 3:
                    f9Var = ka.b(ubVar, eVar);
                    break;
                case 4:
                    u8Var2 = na.e(ubVar, eVar, false);
                    break;
                case 5:
                    u8Var4 = na.d(ubVar, eVar);
                    break;
                case 6:
                    u8Var6 = na.e(ubVar, eVar, false);
                    break;
                case 7:
                    u8Var3 = na.d(ubVar, eVar);
                    break;
                case 8:
                    u8Var5 = na.e(ubVar, eVar, false);
                    break;
                case 9:
                    z = ubVar.i0();
                    break;
                default:
                    ubVar.r0();
                    ubVar.s0();
                    break;
            }
        }
        return new p9(str, aVar, u8Var, f9Var, u8Var2, u8Var3, u8Var4, u8Var5, u8Var6, z);
    }
}
