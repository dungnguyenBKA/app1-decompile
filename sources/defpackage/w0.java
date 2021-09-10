package defpackage;

import defpackage.q0;
import defpackage.r0;

/* renamed from: w0  reason: default package */
public class w0 {
    static boolean[] a = new boolean[3];

    static void a(int i, r0 r0Var) {
        r0.a aVar = r0.a.FIXED;
        for (int i2 = 0; i2 < 6; i2++) {
            x0 d = r0Var.A[i2].d();
            q0 q0Var = d.c;
            q0 q0Var2 = q0Var.d;
            if (q0Var2 != null) {
                if (q0Var2.d == q0Var) {
                    d.h = 4;
                    q0Var2.d().h = 4;
                }
                int c = d.c.c();
                q0.b bVar = d.c.c;
                if (bVar == q0.b.RIGHT || bVar == q0.b.BOTTOM) {
                    c = -c;
                }
                d.g(q0Var2.d(), c);
            }
        }
        x0 d2 = r0Var.s.d();
        x0 d3 = r0Var.t.d();
        x0 d4 = r0Var.u.d();
        x0 d5 = r0Var.v.d();
        boolean z = (i & 8) == 8;
        r0.a aVar2 = r0Var.C[0];
        r0.a aVar3 = r0.a.MATCH_CONSTRAINT;
        boolean z2 = aVar2 == aVar3 && b(r0Var, 0);
        if (!(d2.h == 4 || d4.h == 4)) {
            if (r0Var.C[0] == aVar || (z2 && r0Var.v() == 8)) {
                q0 q0Var3 = r0Var.s.d;
                if (q0Var3 == null && r0Var.u.d == null) {
                    d2.h = 1;
                    d4.h = 1;
                    if (z) {
                        d4.h(d2, 1, r0Var.s());
                    } else {
                        int w = r0Var.w();
                        d4.d = d2;
                        d4.e = (float) w;
                        d2.a.add(d4);
                    }
                } else if (q0Var3 != null && r0Var.u.d == null) {
                    d2.h = 1;
                    d4.h = 1;
                    if (z) {
                        d4.h(d2, 1, r0Var.s());
                    } else {
                        int w2 = r0Var.w();
                        d4.d = d2;
                        d4.e = (float) w2;
                        d2.a.add(d4);
                    }
                } else if (q0Var3 == null && r0Var.u.d != null) {
                    d2.h = 1;
                    d4.h = 1;
                    d2.d = d4;
                    d2.e = (float) (-r0Var.w());
                    d4.a.add(d2);
                    if (z) {
                        d2.h(d4, -1, r0Var.s());
                    } else {
                        d2.d = d4;
                        d2.e = (float) (-r0Var.w());
                        d4.a.add(d2);
                    }
                } else if (!(q0Var3 == null || r0Var.u.d == null)) {
                    d2.h = 2;
                    d4.h = 2;
                    if (z) {
                        r0Var.s().a.add(d2);
                        r0Var.s().a.add(d4);
                        d2.n(d4, -1, r0Var.s());
                        d4.n(d2, 1, r0Var.s());
                    } else {
                        d2.m(d4, (float) (-r0Var.w()));
                        d4.m(d2, (float) r0Var.w());
                    }
                }
            } else if (z2) {
                int w3 = r0Var.w();
                d2.h = 1;
                d4.h = 1;
                q0 q0Var4 = r0Var.s.d;
                if (q0Var4 == null && r0Var.u.d == null) {
                    if (z) {
                        d4.h(d2, 1, r0Var.s());
                    } else {
                        d4.d = d2;
                        d4.e = (float) w3;
                        d2.a.add(d4);
                    }
                } else if (q0Var4 == null || r0Var.u.d != null) {
                    if (q0Var4 != null || r0Var.u.d == null) {
                        if (!(q0Var4 == null || r0Var.u.d == null)) {
                            if (z) {
                                r0Var.s().a.add(d2);
                                r0Var.s().a.add(d4);
                            }
                            if (r0Var.G == 0.0f) {
                                d2.h = 3;
                                d4.h = 3;
                                d2.m(d4, 0.0f);
                                d4.m(d2, 0.0f);
                            } else {
                                d2.h = 2;
                                d4.h = 2;
                                d2.m(d4, (float) (-w3));
                                d4.m(d2, (float) w3);
                                r0Var.h0(w3);
                            }
                        }
                    } else if (z) {
                        d2.h(d4, -1, r0Var.s());
                    } else {
                        d2.d = d4;
                        d2.e = (float) (-w3);
                        d4.a.add(d2);
                    }
                } else if (z) {
                    d4.h(d2, 1, r0Var.s());
                } else {
                    d4.d = d2;
                    d4.e = (float) w3;
                    d2.a.add(d4);
                }
            }
        }
        boolean z3 = r0Var.C[1] == aVar3 && b(r0Var, 1);
        if (d3.h != 4 && d5.h != 4) {
            if (r0Var.C[1] == aVar || (z3 && r0Var.v() == 8)) {
                q0 q0Var5 = r0Var.t.d;
                if (q0Var5 == null && r0Var.v.d == null) {
                    d3.h = 1;
                    d5.h = 1;
                    if (z) {
                        d5.h(d3, 1, r0Var.r());
                    } else {
                        int o = r0Var.o();
                        d5.d = d3;
                        d5.e = (float) o;
                        d3.a.add(d5);
                    }
                    q0 q0Var6 = r0Var.w;
                    if (q0Var6.d != null) {
                        q0Var6.d().h = 1;
                        d3.f(1, r0Var.w.d(), -r0Var.Q);
                    }
                } else if (q0Var5 != null && r0Var.v.d == null) {
                    d3.h = 1;
                    d5.h = 1;
                    if (z) {
                        d5.h(d3, 1, r0Var.r());
                    } else {
                        int o2 = r0Var.o();
                        d5.d = d3;
                        d5.e = (float) o2;
                        d3.a.add(d5);
                    }
                    if (r0Var.Q > 0) {
                        r0Var.w.d().f(1, d3, r0Var.Q);
                    }
                } else if (q0Var5 == null && r0Var.v.d != null) {
                    d3.h = 1;
                    d5.h = 1;
                    if (z) {
                        d3.h(d5, -1, r0Var.r());
                    } else {
                        d3.d = d5;
                        d3.e = (float) (-r0Var.o());
                        d5.a.add(d3);
                    }
                    if (r0Var.Q > 0) {
                        r0Var.w.d().f(1, d3, r0Var.Q);
                    }
                } else if (q0Var5 != null && r0Var.v.d != null) {
                    d3.h = 2;
                    d5.h = 2;
                    if (z) {
                        d3.n(d5, -1, r0Var.r());
                        d5.n(d3, 1, r0Var.r());
                        r0Var.r().a.add(d3);
                        r0Var.s().a.add(d5);
                    } else {
                        d3.m(d5, (float) (-r0Var.o()));
                        d5.m(d3, (float) r0Var.o());
                    }
                    if (r0Var.Q > 0) {
                        r0Var.w.d().f(1, d3, r0Var.Q);
                    }
                }
            } else if (z3) {
                int o3 = r0Var.o();
                d3.h = 1;
                d5.h = 1;
                q0 q0Var7 = r0Var.t.d;
                if (q0Var7 == null && r0Var.v.d == null) {
                    if (z) {
                        d5.h(d3, 1, r0Var.r());
                        return;
                    }
                    d5.d = d3;
                    d5.e = (float) o3;
                    d3.a.add(d5);
                } else if (q0Var7 == null || r0Var.v.d != null) {
                    if (q0Var7 != null || r0Var.v.d == null) {
                        if (!(q0Var7 == null || r0Var.v.d == null)) {
                            if (z) {
                                r0Var.r().a.add(d3);
                                r0Var.s().a.add(d5);
                            }
                            if (r0Var.G == 0.0f) {
                                d3.h = 3;
                                d5.h = 3;
                                d3.m(d5, 0.0f);
                                d5.m(d3, 0.0f);
                                return;
                            }
                            d3.h = 2;
                            d5.h = 2;
                            d3.m(d5, (float) (-o3));
                            d5.m(d3, (float) o3);
                            r0Var.N(o3);
                            if (r0Var.Q > 0) {
                                r0Var.w.d().f(1, d3, r0Var.Q);
                            }
                        }
                    } else if (z) {
                        d3.h(d5, -1, r0Var.r());
                    } else {
                        d3.d = d5;
                        d3.e = (float) (-o3);
                        d5.a.add(d3);
                    }
                } else if (z) {
                    d5.h(d3, 1, r0Var.r());
                } else {
                    d5.d = d3;
                    d5.e = (float) o3;
                    d3.a.add(d5);
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0037 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean b(defpackage.r0 r5, int r6) {
        /*
            r0$a[] r0 = r5.C
            r1 = r0[r6]
            r0$a r2 = defpackage.r0.a.MATCH_CONSTRAINT
            r3 = 0
            if (r1 == r2) goto L_0x000a
            return r3
        L_0x000a:
            float r1 = r5.G
            r2 = 0
            r4 = 1
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 == 0) goto L_0x0019
            if (r6 != 0) goto L_0x0015
            goto L_0x0016
        L_0x0015:
            r4 = 0
        L_0x0016:
            r5 = r0[r4]
            return r3
        L_0x0019:
            if (r6 != 0) goto L_0x0029
            int r6 = r5.e
            if (r6 == 0) goto L_0x0020
            return r3
        L_0x0020:
            int r6 = r5.h
            if (r6 != 0) goto L_0x0028
            int r5 = r5.i
            if (r5 == 0) goto L_0x0037
        L_0x0028:
            return r3
        L_0x0029:
            int r6 = r5.f
            if (r6 == 0) goto L_0x002e
            return r3
        L_0x002e:
            int r6 = r5.k
            if (r6 != 0) goto L_0x0038
            int r5 = r5.l
            if (r5 == 0) goto L_0x0037
            goto L_0x0038
        L_0x0037:
            return r4
        L_0x0038:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w0.b(r0, int):boolean");
    }

    static void c(r0 r0Var, int i, int i2) {
        int i3 = i * 2;
        int i4 = i3 + 1;
        r0Var.A[i3].d().f = r0Var.D.s.d();
        r0Var.A[i3].d().g = (float) i2;
        r0Var.A[i3].d().b = 1;
        r0Var.A[i4].d().f = r0Var.A[i3].d();
        r0Var.A[i4].d().g = (float) r0Var.q(i);
        r0Var.A[i4].d().b = 1;
    }
}
