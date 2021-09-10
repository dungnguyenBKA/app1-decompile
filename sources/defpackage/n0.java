package defpackage;

import defpackage.q0;
import defpackage.r0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* renamed from: n0  reason: default package */
public class n0 {
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004d, code lost:
        if (r3 == r9) goto L_0x0066;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0064, code lost:
        if (r3 == r9) goto L_0x0066;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0068, code lost:
        r3 = false;
     */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x0139 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0136  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(defpackage.s0 r30, defpackage.k0 r31, int r32) {
        /*
        // Method dump skipped, instructions count: 945
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n0.a(s0, k0, int):void");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v49, resolved type: r0 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002d, code lost:
        if (r8 == 2) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003c, code lost:
        if (r8 == 2) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0040, code lost:
        r5 = false;
     */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x0361  */
    /* JADX WARNING: Removed duplicated region for block: B:199:0x0381  */
    /* JADX WARNING: Removed duplicated region for block: B:242:0x044f  */
    /* JADX WARNING: Removed duplicated region for block: B:247:0x0484  */
    /* JADX WARNING: Removed duplicated region for block: B:256:0x04a9  */
    /* JADX WARNING: Removed duplicated region for block: B:257:0x04ac  */
    /* JADX WARNING: Removed duplicated region for block: B:260:0x04b2  */
    /* JADX WARNING: Removed duplicated region for block: B:261:0x04b5  */
    /* JADX WARNING: Removed duplicated region for block: B:263:0x04b9  */
    /* JADX WARNING: Removed duplicated region for block: B:268:0x04c9  */
    /* JADX WARNING: Removed duplicated region for block: B:280:0x0362 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0145  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x017e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void b(defpackage.s0 r37, defpackage.k0 r38, int r39, int r40, defpackage.p0 r41) {
        /*
        // Method dump skipped, instructions count: 1264
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n0.b(s0, k0, int, int, p0):void");
    }

    public static void c(s0 s0Var) {
        r0.a aVar = r0.a.FIXED;
        if ((s0Var.u0() & 32) != 32) {
            s0Var.q0.clear();
            s0Var.q0.add(0, new t0(s0Var.i0));
            return;
        }
        s0Var.x0 = true;
        s0Var.r0 = false;
        s0Var.s0 = false;
        s0Var.t0 = false;
        ArrayList<r0> arrayList = s0Var.i0;
        List<t0> list = s0Var.q0;
        r0.a p = s0Var.p();
        r0.a aVar2 = r0.a.WRAP_CONTENT;
        boolean z = p == aVar2;
        boolean z2 = s0Var.u() == aVar2;
        boolean z3 = z || z2;
        list.clear();
        for (r0 r0Var : arrayList) {
            r0Var.p = null;
            r0Var.c0 = false;
            r0Var.F();
        }
        for (r0 r0Var2 : arrayList) {
            if (r0Var2.p == null) {
                t0 t0Var = new t0(new ArrayList(), true);
                list.add(t0Var);
                if (!i(r0Var2, t0Var, list, z3)) {
                    s0Var.q0.clear();
                    s0Var.q0.add(0, new t0(s0Var.i0));
                    s0Var.x0 = false;
                    return;
                }
            }
        }
        int i = 0;
        int i2 = 0;
        for (t0 t0Var2 : list) {
            i = Math.max(i, d(t0Var2, 0));
            i2 = Math.max(i2, d(t0Var2, 1));
        }
        if (z) {
            s0Var.R(aVar);
            s0Var.h0(i);
            s0Var.r0 = true;
            s0Var.s0 = true;
            s0Var.u0 = i;
        }
        if (z2) {
            s0Var.d0(aVar);
            s0Var.N(i2);
            s0Var.r0 = true;
            s0Var.t0 = true;
            s0Var.v0 = i2;
        }
        h(list, 0, s0Var.w());
        h(list, 1, s0Var.o());
    }

    private static int d(t0 t0Var, int i) {
        List<r0> list;
        int i2 = i * 2;
        Objects.requireNonNull(t0Var);
        if (i == 0) {
            list = t0Var.d;
        } else {
            list = i == 1 ? t0Var.e : null;
        }
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            r0 r0Var = list.get(i4);
            q0[] q0VarArr = r0Var.A;
            int i5 = i2 + 1;
            i3 = Math.max(i3, e(r0Var, i, q0VarArr[i5].d == null || !(q0VarArr[i2].d == null || q0VarArr[i5].d == null), 0));
        }
        t0Var.c[i] = i3;
        return i3;
    }

    private static int e(r0 r0Var, int i, boolean z, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int w;
        int i8;
        int i9;
        r0 r0Var2;
        int i10;
        int i11 = 0;
        if (!r0Var.a0) {
            return 0;
        }
        boolean z2 = r0Var.w.d != null && i == 1;
        if (z) {
            i6 = r0Var.Q;
            i5 = r0Var.o() - r0Var.Q;
            i4 = i * 2;
            i3 = i4 + 1;
        } else {
            int o = r0Var.o();
            i5 = r0Var.Q;
            i6 = o - i5;
            i3 = i * 2;
            i4 = i3 + 1;
        }
        q0[] q0VarArr = r0Var.A;
        if (q0VarArr[i3].d == null || q0VarArr[i4].d != null) {
            i7 = 1;
        } else {
            i7 = -1;
            i3 = i4;
            i4 = i3;
        }
        int i12 = z2 ? i2 - i6 : i2;
        int c = (q0VarArr[i4].c() * i7) + f(r0Var, i);
        int i13 = i12 + c;
        int w2 = (i == 0 ? r0Var.w() : r0Var.o()) * i7;
        Iterator<z0> it = r0Var.A[i4].d().a.iterator();
        while (it.hasNext()) {
            i11 = Math.max(i11, e(((x0) it.next()).c.b, i, z, i13));
        }
        int i14 = 0;
        for (Iterator<z0> it2 = r0Var.A[i3].d().a.iterator(); it2.hasNext(); it2 = it2) {
            i14 = Math.max(i14, e(((x0) it2.next()).c.b, i, z, w2 + i13));
        }
        if (z2) {
            i11 -= i6;
            w = i14 + i5;
        } else {
            w = i14 + ((i == 0 ? r0Var.w() : r0Var.o()) * i7);
        }
        int i15 = 1;
        if (i == 1) {
            Iterator<z0> it3 = r0Var.w.d().a.iterator();
            int i16 = 0;
            while (it3.hasNext()) {
                x0 x0Var = (x0) it3.next();
                if (i7 == i15) {
                    i16 = Math.max(i16, e(x0Var.c.b, i, z, i6 + i13));
                    i10 = i3;
                } else {
                    i10 = i3;
                    i16 = Math.max(i16, e(x0Var.c.b, i, z, (i5 * i7) + i13));
                }
                it3 = it3;
                i3 = i10;
                i15 = 1;
            }
            i8 = i3;
            i9 = (r0Var.w.d().a.size() <= 0 || z2) ? i16 : i7 == 1 ? i16 + i6 : i16 - i5;
        } else {
            i8 = i3;
            i9 = 0;
        }
        int max = Math.max(i11, Math.max(w, i9)) + c;
        int i17 = w2 + i13;
        if (i7 == -1) {
            i17 = i13;
            i13 = i17;
        }
        if (z) {
            w0.c(r0Var, i, i13);
            r0Var.M(i13, i17, i);
        } else {
            r0Var.p.a(r0Var, i);
            if (i == 0) {
                r0Var.K = i13;
            } else if (i == 1) {
                r0Var.L = i13;
            }
        }
        if (r0Var.l(i) == r0.a.MATCH_CONSTRAINT && r0Var.G != 0.0f) {
            r0Var.p.a(r0Var, i);
        }
        q0[] q0VarArr2 = r0Var.A;
        if (q0VarArr2[i4].d != null && q0VarArr2[i8].d != null && q0VarArr2[i4].d.b == (r0Var2 = r0Var.D) && q0VarArr2[i8].d.b == r0Var2) {
            r0Var.p.a(r0Var, i);
        }
        return max;
    }

    private static int f(r0 r0Var, int i) {
        r0 r0Var2;
        q0 q0Var;
        int i2 = i * 2;
        q0[] q0VarArr = r0Var.A;
        q0 q0Var2 = q0VarArr[i2];
        q0 q0Var3 = q0VarArr[i2 + 1];
        q0 q0Var4 = q0Var2.d;
        if (q0Var4 == null || q0Var4.b != (r0Var2 = r0Var.D) || (q0Var = q0Var3.d) == null || q0Var.b != r0Var2) {
            return 0;
        }
        return (int) (((float) (((r0Var2.q(i) - q0Var2.c()) - q0Var3.c()) - r0Var.q(i))) * (i == 0 ? r0Var.V : r0Var.W));
    }

    private static int g(r0 r0Var) {
        float f;
        float f2;
        r0.a p = r0Var.p();
        r0.a aVar = r0.a.MATCH_CONSTRAINT;
        if (p == aVar) {
            if (r0Var.H == 0) {
                f2 = ((float) r0Var.o()) * r0Var.G;
            } else {
                f2 = ((float) r0Var.o()) / r0Var.G;
            }
            int i = (int) f2;
            r0Var.h0(i);
            return i;
        } else if (r0Var.u() != aVar) {
            return -1;
        } else {
            if (r0Var.H == 1) {
                f = ((float) r0Var.w()) * r0Var.G;
            } else {
                f = ((float) r0Var.w()) / r0Var.G;
            }
            int i2 = (int) f;
            r0Var.N(i2);
            return i2;
        }
    }

    public static void h(List<t0> list, int i, int i2) {
        HashSet<r0> hashSet;
        int i3;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            t0 t0Var = list.get(i4);
            Objects.requireNonNull(t0Var);
            if (i == 0) {
                hashSet = t0Var.f;
            } else {
                hashSet = i == 1 ? t0Var.g : null;
            }
            for (r0 r0Var : hashSet) {
                if (r0Var.a0) {
                    int i5 = i * 2;
                    q0[] q0VarArr = r0Var.A;
                    q0 q0Var = q0VarArr[i5];
                    q0 q0Var2 = q0VarArr[i5 + 1];
                    if ((q0Var.d == null || q0Var2.d == null) ? false : true) {
                        w0.c(r0Var, i, q0Var.c() + f(r0Var, i));
                    } else if (r0Var.G == 0.0f || r0Var.l(i) != r0.a.MATCH_CONSTRAINT) {
                        if (i == 0) {
                            i3 = r0Var.K;
                        } else {
                            i3 = i == 1 ? r0Var.L : 0;
                        }
                        int i6 = i2 - i3;
                        int q = i6 - r0Var.q(i);
                        r0Var.M(q, i6, i);
                        w0.c(r0Var, i, q);
                    } else {
                        int g = g(r0Var);
                        int i7 = (int) r0Var.A[i5].d().g;
                        q0Var2.d().f = q0Var.d();
                        q0Var2.d().g = (float) g;
                        q0Var2.d().b = 1;
                        r0Var.M(i7, i7 + g, i);
                    }
                }
            }
        }
    }

    private static boolean i(r0 r0Var, t0 t0Var, List<t0> list, boolean z) {
        q0 q0Var;
        r0 r0Var2;
        q0 q0Var2;
        r0 r0Var3;
        if (r0Var == null) {
            return true;
        }
        r0Var.b0 = false;
        s0 s0Var = (s0) r0Var.D;
        t0 t0Var2 = r0Var.p;
        if (t0Var2 == null) {
            r0Var.a0 = true;
            t0Var.a.add(r0Var);
            r0Var.p = t0Var;
            if (r0Var.s.d == null && r0Var.u.d == null && r0Var.t.d == null && r0Var.v.d == null && r0Var.w.d == null && r0Var.z.d == null) {
                t0Var.b = false;
                s0Var.x0 = false;
                r0Var.a0 = false;
                if (z) {
                    return false;
                }
            }
            if (!(r0Var.t.d == null || r0Var.v.d == null)) {
                s0Var.u();
                if (z) {
                    t0Var.b = false;
                    s0Var.x0 = false;
                    r0Var.a0 = false;
                    return false;
                }
                r0 r0Var4 = r0Var.t.d.b;
                r0 r0Var5 = r0Var.D;
                if (!(r0Var4 == r0Var5 && r0Var.v.d.b == r0Var5)) {
                    t0Var.b = false;
                    s0Var.x0 = false;
                    r0Var.a0 = false;
                }
            }
            if (!(r0Var.s.d == null || r0Var.u.d == null)) {
                s0Var.p();
                if (z) {
                    t0Var.b = false;
                    s0Var.x0 = false;
                    r0Var.a0 = false;
                    return false;
                }
                r0 r0Var6 = r0Var.s.d.b;
                r0 r0Var7 = r0Var.D;
                if (!(r0Var6 == r0Var7 && r0Var.u.d.b == r0Var7)) {
                    t0Var.b = false;
                    s0Var.x0 = false;
                    r0Var.a0 = false;
                }
            }
            r0.a p = r0Var.p();
            r0.a aVar = r0.a.MATCH_CONSTRAINT;
            if (((p == aVar) ^ (r0Var.u() == aVar)) && r0Var.G != 0.0f) {
                g(r0Var);
            } else if (r0Var.p() == aVar || r0Var.u() == aVar) {
                t0Var.b = false;
                s0Var.x0 = false;
                r0Var.a0 = false;
                if (z) {
                    return false;
                }
            }
            q0 q0Var3 = r0Var.s.d;
            if (((q0Var3 == null && r0Var.u.d == null) || ((q0Var3 != null && q0Var3.b == r0Var.D && r0Var.u.d == null) || (((q0Var2 = r0Var.u.d) != null && q0Var2.b == r0Var.D && q0Var3 == null) || (q0Var3 != null && q0Var3.b == (r0Var3 = r0Var.D) && q0Var2 != null && q0Var2.b == r0Var3)))) && r0Var.z.d == null && !(r0Var instanceof u0) && !(r0Var instanceof v0)) {
                t0Var.d.add(r0Var);
            }
            q0 q0Var4 = r0Var.t.d;
            if (((q0Var4 == null && r0Var.v.d == null) || ((q0Var4 != null && q0Var4.b == r0Var.D && r0Var.v.d == null) || (((q0Var = r0Var.v.d) != null && q0Var.b == r0Var.D && q0Var4 == null) || (q0Var4 != null && q0Var4.b == (r0Var2 = r0Var.D) && q0Var != null && q0Var.b == r0Var2)))) && r0Var.z.d == null && r0Var.w.d == null && !(r0Var instanceof u0) && !(r0Var instanceof v0)) {
                t0Var.e.add(r0Var);
            }
            if (r0Var instanceof v0) {
                t0Var.b = false;
                s0Var.x0 = false;
                r0Var.a0 = false;
                if (z) {
                    return false;
                }
                v0 v0Var = (v0) r0Var;
                for (int i = 0; i < v0Var.j0; i++) {
                    if (!i(v0Var.i0[i], t0Var, list, z)) {
                        return false;
                    }
                }
            }
            int length = r0Var.A.length;
            for (int i2 = 0; i2 < length; i2++) {
                q0 q0Var5 = r0Var.A[i2];
                q0 q0Var6 = q0Var5.d;
                if (!(q0Var6 == null || q0Var6.b == r0Var.D)) {
                    if (q0Var5.c == q0.b.CENTER) {
                        t0Var.b = false;
                        s0Var.x0 = false;
                        r0Var.a0 = false;
                        if (z) {
                            return false;
                        }
                    } else {
                        x0 d = q0Var5.d();
                        q0 q0Var7 = q0Var5.d;
                        if (!(q0Var7 == null || q0Var7.d == q0Var5)) {
                            q0Var7.d().a.add(d);
                        }
                    }
                    if (!i(q0Var5.d.b, t0Var, list, z)) {
                        return false;
                    }
                }
            }
            return true;
        }
        if (t0Var2 != t0Var) {
            t0Var.a.addAll(t0Var2.a);
            t0Var.d.addAll(r0Var.p.d);
            t0Var.e.addAll(r0Var.p.e);
            t0 t0Var3 = r0Var.p;
            if (!t0Var3.b) {
                t0Var.b = false;
            }
            list.remove(t0Var3);
            for (r0 r0Var8 : r0Var.p.a) {
                r0Var8.p = t0Var;
            }
        }
        return true;
    }
}
