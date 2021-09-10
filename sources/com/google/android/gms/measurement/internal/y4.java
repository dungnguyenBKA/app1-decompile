package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class y4 {
    private long A;
    private long B;
    private String C;
    private boolean D;
    private long E;
    private long F;
    private final j4 a;
    private final String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private long g;
    private long h;
    private long i;
    private String j;
    private long k;
    private String l;
    private long m;
    private long n;
    private boolean o;
    private long p;
    private boolean q;
    private String r;
    private Boolean s;
    private long t;
    private List<String> u;
    private String v;
    private long w;
    private long x;
    private long y;
    private long z;

    y4(j4 j4Var, String str) {
        Objects.requireNonNull(j4Var, "null reference");
        n.e(str);
        this.a = j4Var;
        this.b = str;
        j4Var.e().g();
    }

    public final boolean A() {
        this.a.e().g();
        return this.D;
    }

    public final String B() {
        this.a.e().g();
        return this.C;
    }

    public final String C() {
        this.a.e().g();
        String str = this.C;
        D(null);
        return str;
    }

    public final void D(String str) {
        this.a.e().g();
        this.D |= !h9.F(this.C, str);
        this.C = str;
    }

    public final long E() {
        this.a.e().g();
        return this.p;
    }

    public final void F(long j2) {
        this.a.e().g();
        this.D |= this.p != j2;
        this.p = j2;
    }

    public final boolean G() {
        this.a.e().g();
        return this.q;
    }

    public final void H(boolean z2) {
        this.a.e().g();
        this.D |= this.q != z2;
        this.q = z2;
    }

    public final Boolean I() {
        this.a.e().g();
        return this.s;
    }

    public final void J(Boolean bool) {
        this.a.e().g();
        boolean z2 = this.D;
        Boolean bool2 = this.s;
        this.D = z2 | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.s = bool;
    }

    public final List<String> K() {
        this.a.e().g();
        return this.u;
    }

    public final void L(List<String> list) {
        this.a.e().g();
        List<String> list2 = this.u;
        if (list2 != null || list != null) {
            if (list2 == null || !list2.equals(list)) {
                this.D = true;
                this.u = list != null ? new ArrayList(list) : null;
            }
        }
    }

    public final void M() {
        this.a.e().g();
        this.D = false;
    }

    public final String N() {
        this.a.e().g();
        return this.b;
    }

    public final String O() {
        this.a.e().g();
        return this.c;
    }

    public final void P(String str) {
        this.a.e().g();
        this.D |= !h9.F(this.c, str);
        this.c = str;
    }

    public final String Q() {
        this.a.e().g();
        return this.d;
    }

    public final void R(String str) {
        this.a.e().g();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ h9.F(this.d, str);
        this.d = str;
    }

    public final String S() {
        this.a.e().g();
        return this.r;
    }

    public final void T(String str) {
        this.a.e().g();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ h9.F(this.r, str);
        this.r = str;
    }

    public final String U() {
        this.a.e().g();
        return this.v;
    }

    public final void V(String str) {
        this.a.e().g();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ h9.F(this.v, str);
        this.v = str;
    }

    public final String W() {
        this.a.e().g();
        return this.e;
    }

    public final void X(String str) {
        this.a.e().g();
        this.D |= !h9.F(this.e, str);
        this.e = str;
    }

    public final String Y() {
        this.a.e().g();
        return this.f;
    }

    public final void Z(String str) {
        this.a.e().g();
        this.D |= !h9.F(this.f, str);
        this.f = str;
    }

    public final void a(long j2) {
        this.a.e().g();
        this.D |= this.m != j2;
        this.m = j2;
    }

    public final long a0() {
        this.a.e().g();
        return this.h;
    }

    public final long b() {
        this.a.e().g();
        return this.n;
    }

    public final void b0(long j2) {
        this.a.e().g();
        this.D |= this.h != j2;
        this.h = j2;
    }

    public final void c(long j2) {
        this.a.e().g();
        this.D |= this.n != j2;
        this.n = j2;
    }

    public final long c0() {
        this.a.e().g();
        return this.i;
    }

    public final long d() {
        this.a.e().g();
        return this.t;
    }

    public final void d0(long j2) {
        this.a.e().g();
        this.D |= this.i != j2;
        this.i = j2;
    }

    public final void e(long j2) {
        this.a.e().g();
        this.D |= this.t != j2;
        this.t = j2;
    }

    public final String e0() {
        this.a.e().g();
        return this.j;
    }

    public final boolean f() {
        this.a.e().g();
        return this.o;
    }

    public final void f0(String str) {
        this.a.e().g();
        this.D |= !h9.F(this.j, str);
        this.j = str;
    }

    public final void g(boolean z2) {
        this.a.e().g();
        this.D |= this.o != z2;
        this.o = z2;
    }

    public final long g0() {
        this.a.e().g();
        return this.k;
    }

    public final void h(long j2) {
        boolean z2 = true;
        n.a(j2 >= 0);
        this.a.e().g();
        boolean z3 = this.D;
        if (this.g == j2) {
            z2 = false;
        }
        this.D = z2 | z3;
        this.g = j2;
    }

    public final void h0(long j2) {
        this.a.e().g();
        this.D |= this.k != j2;
        this.k = j2;
    }

    public final long i() {
        this.a.e().g();
        return this.g;
    }

    public final String i0() {
        this.a.e().g();
        return this.l;
    }

    public final long j() {
        this.a.e().g();
        return this.E;
    }

    public final void j0(String str) {
        this.a.e().g();
        this.D |= !h9.F(this.l, str);
        this.l = str;
    }

    public final void k(long j2) {
        this.a.e().g();
        this.D |= this.E != j2;
        this.E = j2;
    }

    public final long k0() {
        this.a.e().g();
        return this.m;
    }

    public final long l() {
        this.a.e().g();
        return this.F;
    }

    public final void m(long j2) {
        this.a.e().g();
        this.D |= this.F != j2;
        this.F = j2;
    }

    public final void n() {
        this.a.e().g();
        long j2 = this.g + 1;
        if (j2 > 2147483647L) {
            this.a.c().q().b("Bundle index overflow. appId", i3.w(this.b));
            j2 = 0;
        }
        this.D = true;
        this.g = j2;
    }

    public final long o() {
        this.a.e().g();
        return this.w;
    }

    public final void p(long j2) {
        this.a.e().g();
        this.D |= this.w != j2;
        this.w = j2;
    }

    public final long q() {
        this.a.e().g();
        return this.x;
    }

    public final void r(long j2) {
        this.a.e().g();
        this.D |= this.x != j2;
        this.x = j2;
    }

    public final long s() {
        this.a.e().g();
        return this.y;
    }

    public final void t(long j2) {
        this.a.e().g();
        this.D |= this.y != j2;
        this.y = j2;
    }

    public final long u() {
        this.a.e().g();
        return this.z;
    }

    public final void v(long j2) {
        this.a.e().g();
        this.D |= this.z != j2;
        this.z = j2;
    }

    public final long w() {
        this.a.e().g();
        return this.B;
    }

    public final void x(long j2) {
        this.a.e().g();
        this.D |= this.B != j2;
        this.B = j2;
    }

    public final long y() {
        this.a.e().g();
        return this.A;
    }

    public final void z(long j2) {
        this.a.e().g();
        this.D |= this.A != j2;
        this.A = j2;
    }
}
