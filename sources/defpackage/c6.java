package defpackage;

import androidx.work.c;
import androidx.work.e;
import androidx.work.h;
import androidx.work.m;

/* renamed from: c6  reason: default package */
public class c6 {
    public String a;
    public m b = m.ENQUEUED;
    public String c;
    public String d;
    public e e;
    public e f;
    public long g;
    public long h;
    public long i;
    public c j;
    public int k;
    public androidx.work.a l;
    public long m;
    public long n;
    public long o;
    public long p;

    /* renamed from: c6$a */
    public static class a {
        public String a;
        public m b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.b != aVar.b) {
                return false;
            }
            return this.a.equals(aVar.a);
        }

        public int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }
    }

    static {
        h.f("WorkSpec");
    }

    public c6(String str, String str2) {
        e eVar = e.c;
        this.e = eVar;
        this.f = eVar;
        this.j = c.i;
        this.l = androidx.work.a.EXPONENTIAL;
        this.m = 30000;
        this.p = -1;
        this.a = str;
        this.c = str2;
    }

    public long a() {
        long j2;
        long j3;
        long j4;
        boolean z = false;
        if (c()) {
            if (this.l == androidx.work.a.LINEAR) {
                z = true;
            }
            if (z) {
                j4 = this.m * ((long) this.k);
            } else {
                j4 = (long) Math.scalb((float) this.m, this.k - 1);
            }
            j3 = this.n;
            j2 = Math.min(18000000L, j4);
        } else {
            long j5 = 0;
            if (d()) {
                long currentTimeMillis = System.currentTimeMillis();
                long j6 = this.n;
                long j7 = j6 == 0 ? currentTimeMillis + this.g : j6;
                long j8 = this.i;
                long j9 = this.h;
                if (j8 != j9) {
                    z = true;
                }
                if (z) {
                    if (j6 == 0) {
                        j5 = j8 * -1;
                    }
                    return j7 + j9 + j5;
                }
                if (j6 != 0) {
                    j5 = j9;
                }
                return j7 + j5;
            }
            j2 = this.n;
            if (j2 == 0) {
                j2 = System.currentTimeMillis();
            }
            j3 = this.g;
        }
        return j2 + j3;
    }

    public boolean b() {
        return !c.i.equals(this.j);
    }

    public boolean c() {
        return this.b == m.ENQUEUED && this.k > 0;
    }

    public boolean d() {
        return this.h != 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c6.class != obj.getClass()) {
            return false;
        }
        c6 c6Var = (c6) obj;
        if (this.g != c6Var.g || this.h != c6Var.h || this.i != c6Var.i || this.k != c6Var.k || this.m != c6Var.m || this.n != c6Var.n || this.o != c6Var.o || this.p != c6Var.p || !this.a.equals(c6Var.a) || this.b != c6Var.b || !this.c.equals(c6Var.c)) {
            return false;
        }
        String str = this.d;
        if (str == null ? c6Var.d != null : !str.equals(c6Var.d)) {
            return false;
        }
        if (this.e.equals(c6Var.e) && this.f.equals(c6Var.f) && this.j.equals(c6Var.j) && this.l == c6Var.l) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int w = ic.w(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31);
        String str = this.d;
        int hashCode = str != null ? str.hashCode() : 0;
        int hashCode2 = this.e.hashCode();
        int hashCode3 = this.f.hashCode();
        long j2 = this.g;
        long j3 = this.h;
        long j4 = this.i;
        int hashCode4 = this.j.hashCode();
        int hashCode5 = this.l.hashCode();
        long j5 = this.m;
        long j6 = this.n;
        long j7 = this.o;
        long j8 = this.p;
        return ((((((((hashCode5 + ((((hashCode4 + ((((((((hashCode3 + ((hashCode2 + ((w + hashCode) * 31)) * 31)) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31)) * 31) + this.k) * 31)) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31) + ((int) (j8 ^ (j8 >>> 32)));
    }

    public String toString() {
        return ic.l(ic.q("{WorkSpec: "), this.a, "}");
    }

    public c6(c6 c6Var) {
        e eVar = e.c;
        this.e = eVar;
        this.f = eVar;
        this.j = c.i;
        this.l = androidx.work.a.EXPONENTIAL;
        this.m = 30000;
        this.p = -1;
        this.a = c6Var.a;
        this.c = c6Var.c;
        this.b = c6Var.b;
        this.d = c6Var.d;
        this.e = new e(c6Var.e);
        this.f = new e(c6Var.f);
        this.g = c6Var.g;
        this.h = c6Var.h;
        this.i = c6Var.i;
        this.j = new c(c6Var.j);
        this.k = c6Var.k;
        this.l = c6Var.l;
        this.m = c6Var.m;
        this.n = c6Var.n;
        this.o = c6Var.o;
        this.p = c6Var.p;
    }
}
