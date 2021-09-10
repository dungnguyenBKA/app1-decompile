package defpackage;

import android.graphics.Rect;
import com.airbnb.lottie.e;
import com.airbnb.lottie.h;
import com.google.ads.ADRequestList;
import com.google.ads.mediation.facebook.FacebookAdapter;
import defpackage.ca;
import defpackage.ub;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: db  reason: default package */
public class db {
    private static final ub.a a = ub.a.a("w", ADRequestList.ORDER_H, "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");
    static ub.a b = ub.a.a(FacebookAdapter.KEY_ID, "layers", "w", ADRequestList.ORDER_H, "p", "u");
    private static final ub.a c = ub.a.a("list");
    private static final ub.a d = ub.a.a("cm", "tm", "dr");

    public static e a(ub ubVar) {
        float f;
        float f2;
        HashMap hashMap;
        ArrayList arrayList;
        float f3;
        float f4;
        HashMap hashMap2;
        float f5;
        float f6;
        float f7;
        float c2 = dc.c();
        b0<ca> b0Var = new b0<>(10);
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        HashMap hashMap5 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        f0<n8> f0Var = new f0<>(10);
        e eVar = new e();
        ubVar.L();
        int i = 0;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        int i2 = 0;
        while (ubVar.b0()) {
            switch (ubVar.q0(a)) {
                case 0:
                    f4 = f10;
                    i = ubVar.k0();
                    f10 = f4;
                    break;
                case 1:
                    f4 = f10;
                    i2 = ubVar.k0();
                    f10 = f4;
                    break;
                case 2:
                    f8 = (float) ubVar.j0();
                    break;
                case 3:
                    f4 = f10;
                    f9 = ((float) ubVar.j0()) - 0.01f;
                    f8 = f8;
                    f10 = f4;
                    break;
                case 4:
                    f8 = f8;
                    f10 = (float) ubVar.j0();
                    break;
                case 5:
                    f = f9;
                    hashMap = hashMap5;
                    arrayList = arrayList3;
                    f2 = f10;
                    f3 = f8;
                    String[] split = ubVar.m0().split("\\.");
                    int parseInt = Integer.parseInt(split[0]);
                    int parseInt2 = Integer.parseInt(split[1]);
                    if (!(parseInt >= 4 && (parseInt > 4 || (parseInt2 >= 4 && (parseInt2 > 4 || Integer.parseInt(split[2]) >= 0))))) {
                        eVar.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    f8 = f3;
                    arrayList3 = arrayList;
                    hashMap5 = hashMap;
                    f10 = f2;
                    f9 = f;
                    break;
                case 6:
                    f = f9;
                    hashMap = hashMap5;
                    arrayList = arrayList3;
                    f2 = f10;
                    f3 = f8;
                    ubVar.o();
                    int i3 = 0;
                    while (ubVar.b0()) {
                        ca a2 = cb.a(ubVar, eVar);
                        if (a2.d() == ca.a.IMAGE) {
                            i3++;
                        }
                        arrayList2.add(a2);
                        b0Var.k(a2.b(), a2);
                        if (i3 > 4) {
                            zb.b("You have " + i3 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                    }
                    ubVar.S();
                    f8 = f3;
                    arrayList3 = arrayList;
                    hashMap5 = hashMap;
                    f10 = f2;
                    f9 = f;
                    break;
                case 7:
                    f = f9;
                    f2 = f10;
                    f3 = f8;
                    ubVar.o();
                    while (ubVar.b0()) {
                        ArrayList arrayList4 = new ArrayList();
                        b0 b0Var2 = new b0(10);
                        ubVar.L();
                        String str = null;
                        String str2 = null;
                        String str3 = null;
                        int i4 = 0;
                        int i5 = 0;
                        while (ubVar.b0()) {
                            int q0 = ubVar.q0(b);
                            if (q0 != 0) {
                                if (q0 != 1) {
                                    if (q0 == 2) {
                                        i4 = ubVar.k0();
                                    } else if (q0 == 3) {
                                        i5 = ubVar.k0();
                                    } else if (q0 == 4) {
                                        str2 = ubVar.m0();
                                    } else if (q0 != 5) {
                                        ubVar.r0();
                                        ubVar.s0();
                                        hashMap2 = hashMap5;
                                    } else {
                                        str3 = ubVar.m0();
                                    }
                                    arrayList3 = arrayList3;
                                } else {
                                    ubVar.o();
                                    while (ubVar.b0()) {
                                        ca a3 = cb.a(ubVar, eVar);
                                        b0Var2.k(a3.b(), a3);
                                        arrayList4.add(a3);
                                        hashMap5 = hashMap5;
                                    }
                                    hashMap2 = hashMap5;
                                    ubVar.S();
                                }
                                arrayList3 = arrayList3;
                                hashMap5 = hashMap2;
                            } else {
                                str = ubVar.m0();
                            }
                        }
                        ubVar.V();
                        if (str2 != null) {
                            h hVar = new h(i4, i5, str, str2, str3);
                            hashMap4.put(hVar.d(), hVar);
                        } else {
                            hashMap3.put(str, arrayList4);
                        }
                        arrayList3 = arrayList3;
                        hashMap5 = hashMap5;
                    }
                    hashMap = hashMap5;
                    arrayList = arrayList3;
                    ubVar.S();
                    f8 = f3;
                    arrayList3 = arrayList;
                    hashMap5 = hashMap;
                    f10 = f2;
                    f9 = f;
                    break;
                case 8:
                    f = f9;
                    f2 = f10;
                    f3 = f8;
                    ubVar.L();
                    while (ubVar.b0()) {
                        if (ubVar.q0(c) != 0) {
                            ubVar.r0();
                            ubVar.s0();
                        } else {
                            ubVar.o();
                            while (ubVar.b0()) {
                                m8 a4 = ua.a(ubVar);
                                hashMap5.put(a4.b(), a4);
                            }
                            ubVar.S();
                        }
                    }
                    ubVar.V();
                    hashMap = hashMap5;
                    arrayList = arrayList3;
                    f8 = f3;
                    arrayList3 = arrayList;
                    hashMap5 = hashMap;
                    f10 = f2;
                    f9 = f;
                    break;
                case 9:
                    f = f9;
                    f2 = f10;
                    f3 = f8;
                    ubVar.o();
                    while (ubVar.b0()) {
                        n8 a5 = ta.a(ubVar, eVar);
                        f0Var.j(a5.hashCode(), a5);
                    }
                    ubVar.S();
                    hashMap = hashMap5;
                    arrayList = arrayList3;
                    f8 = f3;
                    arrayList3 = arrayList;
                    hashMap5 = hashMap;
                    f10 = f2;
                    f9 = f;
                    break;
                case 10:
                    ubVar.o();
                    while (ubVar.b0()) {
                        ubVar.L();
                        String str4 = null;
                        float f11 = 0.0f;
                        float f12 = 0.0f;
                        while (ubVar.b0()) {
                            int q02 = ubVar.q0(d);
                            if (q02 != 0) {
                                f5 = f10;
                                if (q02 == 1) {
                                    f7 = f8;
                                    f6 = f9;
                                    f11 = (float) ubVar.j0();
                                } else if (q02 != 2) {
                                    ubVar.r0();
                                    ubVar.s0();
                                } else {
                                    f7 = f8;
                                    f6 = f9;
                                    f12 = (float) ubVar.j0();
                                }
                                f8 = f7;
                                f10 = f5;
                                f9 = f6;
                            } else {
                                f5 = f10;
                                str4 = ubVar.m0();
                            }
                            f10 = f5;
                        }
                        ubVar.V();
                        arrayList3.add(new r8(str4, f11, f12));
                        f8 = f8;
                        f10 = f10;
                        f9 = f9;
                    }
                    f = f9;
                    f2 = f10;
                    f3 = f8;
                    ubVar.S();
                    hashMap = hashMap5;
                    arrayList = arrayList3;
                    f8 = f3;
                    arrayList3 = arrayList;
                    hashMap5 = hashMap;
                    f10 = f2;
                    f9 = f;
                    break;
                default:
                    f = f9;
                    hashMap = hashMap5;
                    arrayList = arrayList3;
                    f2 = f10;
                    f3 = f8;
                    ubVar.r0();
                    ubVar.s0();
                    f8 = f3;
                    arrayList3 = arrayList;
                    hashMap5 = hashMap;
                    f10 = f2;
                    f9 = f;
                    break;
            }
        }
        eVar.q(new Rect(0, 0, (int) (((float) i) * c2), (int) (((float) i2) * c2)), f8, f9, f10, arrayList2, b0Var, hashMap3, hashMap4, f0Var, hashMap5, arrayList3);
        return eVar;
    }
}
